using ARAcademy.common.entities;
using ARAcademy.model.payment;
using PayPal.Api;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ARAcademy.site
{
    public partial class testpaypal : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void checkout_Click(object sender, EventArgs e)
        {
        //    //SOLO PARA PRUEBAS
        //    List<Section> cartList = new List<Section>();
        //    cartList.Add(new Section(1, "Sumas", 2, "Curso de sumas", null));
        //    cartList.Add(new Section(2, "Resta", 5, "Curso de restas", null));
        //    cartList.Add(new Section(3, "Multiplicacion", 3, "Curso de multiplicaciones", null));
        //    cartList.Add(new Section(4, "Division", 1, "Curso de divisiones", null));
        //    //SOLO PARA PRUEBAS

        //    APIContext apiContext = PaypalConfiguration.GetAPIContext();

        //    try
        //    {
        //        String baseURI = Request.Url.Scheme + "://" + Request.Url.Authority + "/site/processPayment.aspx?";
        //        var guid = Convert.ToString(new Random().Next(100000));
        //        var createdPayment = PaypalPayment.CreatePayment(apiContext, baseURI + "guid=" + guid, cartList, discount);

        //        var links = createdPayment.links.GetEnumerator();
        //        String paypalRedirectUrl = String.Empty;

        //        while (links.MoveNext())
        //        {
        //            Links link = links.Current;
        //            if (link.rel.ToLower().Trim().Equals("approval_url"))
        //            {
        //                paypalRedirectUrl = link.href;
        //            }
        //        }
        //        Session.Add(guid, createdPayment.id); 
        //        Session["cartList"] = cartList;
        //        Response.Redirect(paypalRedirectUrl, false);
               
        //    }
        //    catch (Exception ex)
        //    {
        //        PaypalLogger.Log("Error: " + ex.Message);
        //        Response.Redirect("~/site/failedPaypal.aspx");
        //    }

        }
    }
}