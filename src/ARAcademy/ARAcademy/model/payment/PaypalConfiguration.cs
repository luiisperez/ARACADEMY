using PayPal.Api;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ARAcademy.model.payment
{
    public class PaypalConfiguration
    {
        public readonly static String ClientId;
        public readonly static String ClientSecret;

        static PaypalConfiguration()
        {
            var config = GetConfig();
            ClientId = config["clientId"];
            ClientSecret = config["clientSecret"];
        }

        public static Dictionary<String, String> GetConfig()
        {
            return PayPal.Api.ConfigManager.Instance.GetProperties();
        }

        //Crea el token de acceso
        private static String GetAccessToken()
        {
            String accessToken = new OAuthTokenCredential(ClientId, ClientSecret, GetConfig()).GetAccessToken();
            return accessToken;
        }

        //Retorna el APIContext
        public static APIContext GetAPIContext()
        {
            APIContext apiContext = new APIContext(GetAccessToken());
            apiContext.Config = GetConfig();
            return apiContext;
        }
    }
}