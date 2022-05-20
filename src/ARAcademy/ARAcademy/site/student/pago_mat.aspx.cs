using ARAcademy.common.entities;
using ARAcademy.controller.offer;
using ARAcademy.controller.section;
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
    public partial class pago_mat : System.Web.UI.Page
    {
        public string sec;
        public int j;
        public int cantidad;
        public double descuento;
        public double percentage;
        public string sec_2;
        public double monto;
        public double iva;
        public double total;
        public Offer offer;
        public List<Section> CartList = new List<Section>();
        public List<Offer> List_offer = new List<Offer>();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                try
                {
                    if (Session["Username"] != null && Session["Token"] != null )
                    {
                        CartList = new List<Section>();
                        CartList = (List<Section>)Session["ScItms"];
                            if (CartList == null )
                            { 
                            } 
                            else 
                            {
                                cantidad = CartList.Count();
                                foreach (Section section in CartList)
                                {
                                    monto = monto + section.Amount;
                                    mod_data.DataSource = CartList;
                                    mod_data.DataBind();
                                }
                            }
                        ReadAllActiveOffersCommand cmd = new ReadAllActiveOffersCommand();
                        cmd.Execute();
                        List_offer = cmd.Offers;
                        List_offer = List_offer.OrderBy(o => o.MinArticles).ToList();
                        foreach (Offer offer in List_offer) 
                        {
                            if (cantidad >= offer.MinArticles) 
                            {
                                percentage = offer.Percentage;
                                percentage = (percentage / 100);
                            } else {}
                        }
                        if (percentage == 0)
                        {
                            Session["Discount"] = 0;
                            porcentaje.Visible = false;
                            total_pago.Visible = false;
                        }
                        Session["Discount"] = percentage;
                        total = monto - (monto * percentage);
                        descuento = (monto * percentage);                            
                    }
                    else
                    {
                        Response.Redirect("/site/student/login.aspx");
                    }
                }
                catch (Exception ex)
                {

                }
            }

        }

        protected void checkout_Click(object sender, EventArgs e)
        {

            CartList = (List<Section>)Session["ScItms"];
            var discount = Convert.ToDouble(Session["Discount"].ToString());

            APIContext apiContext = PaypalConfiguration.GetAPIContext();

            try
            {
                String baseURI = Request.Url.Scheme + "://" + Request.Url.Authority + "/site/student/processPayment.aspx?";
                var guid = Convert.ToString(new Random().Next(100000));
                var createdPayment = PaypalPayment.CreatePayment(apiContext, baseURI + "guid=" + guid, CartList, discount);

                var links = createdPayment.links.GetEnumerator();
                String paypalRedirectUrl = String.Empty;

                while (links.MoveNext())
                {
                    Links link = links.Current;
                    if (link.rel.ToLower().Trim().Equals("approval_url"))
                    {
                        paypalRedirectUrl = link.href;
                    }
                }
                Session.Add(guid, createdPayment.id);
                Session["cartList"] = CartList;
                Response.Redirect(paypalRedirectUrl, false);

            }
            catch (Exception ex)
            {
                PaypalLogger.Log("Error: " + ex.Message);
                Response.Redirect("~/site/failedPaypal.aspx");
            }

        }

        protected void mod_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            ImageButton action = (ImageButton)e.CommandSource;
            string actionString = action.ID;
            if (action.ID.Equals("delete"))
            {
                try
                {
                    CartList = (List<Section>)Session["ScItms"];
                    Section section_eli = new Section();
                    string id = ((Label)mod_data.Items[e.Item.ItemIndex].FindControl("id")).Text;
                    section_eli.Id = Int32.Parse(id);

                    foreach (Section section in CartList)
                    {
                        if ( section.Id == section_eli.Id)
                        {
                            CartList.Remove(section);
                            break;
                        }
                        else
                        {
                        }
                    }
                    Session["ScItms"] = CartList;
                    ClientScript.RegisterClientScriptBlock(this.GetType(), "random", "alertme()", true);
                }
                catch (Exception ex)
                {
                }
            }
            else if (action.ID.Equals("modify"))
            {

            }

        }

        protected void back_offert(object sender, EventArgs e)
        {
            Response.Redirect("/site/student/pago_plan.aspx");
        }
    }
}