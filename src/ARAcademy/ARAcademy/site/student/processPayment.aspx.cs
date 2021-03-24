using ARAcademy.common.entities;
using ARAcademy.controller.payment;
using ARAcademy.model.payment;
using PayPal.Api;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ARAcademy.site.student
{
    public partial class processPayment : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            APIContext apiContext = PaypalConfiguration.GetAPIContext();
            String transactionId = "";
            try
            {
                var guid = Request.Params["guid"];
                var payerId = Request.Params["payerId"];
                var executedPayment = PaypalPayment.ExecutePayment(apiContext, payerId, Session[guid] as String);
                if (!executedPayment.state.ToLower().Equals("approved"))
                {
                    ClientScript.RegisterClientScriptBlock(this.GetType(), "random", "alertmeErr()", true);
                    //Response.Redirect("~/site/failedPaypal.aspx");
                }
                transactionId = executedPayment.transactions[0].related_resources[0].sale.id;
            }
            catch (Exception ex)
            {
                String g = ex.Message;
                Response.Redirect("~/site/failedPaypal.aspx");
            }
            List<Section> cartList = (List<Section>)Session["cartList"];

            foreach (Section item in cartList)
            {
                string username = Session["Username"].ToString();
                DateTime today = DateTime.Now;
                DateTime expirationDate = today.AddYears(1); //MOMENTANEAMENTE SE COLOCO QUE VENCE EN UN AÑO
                Double amount = item.Amount + (item.Amount * 0.21);
                Student student = new Student(username, ""); //OBTENER EL OBJETO DEL ESTUDIANTE QUE INICIO SESION
                int remainingClasses = 10;
                AraPayment payment = new AraPayment(today, expirationDate, transactionId, amount, remainingClasses ,item, student);
                CreateAraPaymentCommand cmd = new CreateAraPaymentCommand(payment);
                cmd.Execute();
                Session["ScItms"] = null;
                /*DESCOMENTAR CUANDO FUNCIONE TODO EL BACK Y SE PASE CORRECTAMENTE EL ESTUDIANTE Y LOS MODULOS*/
            }
            ClientScript.RegisterClientScriptBlock(this.GetType(), "random", "alertme()", true);
            //Response.Redirect("/site/student/successPaypal.aspx");
        }
    }
}