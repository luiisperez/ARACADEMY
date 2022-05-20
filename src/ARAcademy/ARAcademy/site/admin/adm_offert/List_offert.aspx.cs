using ARAcademy.common.entities;
using ARAcademy.controller.offer;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ARAcademy.site.admin.adm_offert
{
    public partial class List_offert : System.Web.UI.Page
    {
        private List<Offer> list_off = new List<Offer>();
        public Offer offer = new Offer();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                try
                {
                    if (Session["Username"] != null && Session["Token"] != null)
                    {
                        ReadAllOfferCommand cmd = new ReadAllOfferCommand();
                        cmd.Execute();
                        list_off = cmd.Offers;
                        foreach (Offer offer in list_off)
                        {
                            off_data.DataSource = list_off;
                            off_data.DataBind();
                        }
                    }
                    else
                    {
                        Response.Redirect("/site/admin/login.aspx");
                    }
                }
                catch (Exception ex)
                {

                }
            }

        }

        protected void off_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            ImageButton action = (ImageButton)e.CommandSource;
            string actionString = action.ID;
            if (action.ID.Equals("delete"))
            {
                try
                {
                    Offer offer = new Offer();
                    string id = ((Label)off_data.Items[e.Item.ItemIndex].FindControl("Id")).Text;
                    offer.Id = Int32.Parse(id);
                    DeleteOfferCommand cmd = new DeleteOfferCommand(offer);
                    cmd.Execute();
                    if (offer.Code == 200)
                    {
                        ClientScript.RegisterClientScriptBlock(this.GetType(), "random", "alertme()", true);
                    }
                    else
                    {
                        ClientScript.RegisterClientScriptBlock(this.GetType(), "random", "alertmeErr()", true);
                    }
                }
                catch (Exception ex)
                {
                }
            }
            else if (action.ID.Equals("modify"))
            {
                try
                {
                    string id = ((Label)off_data.Items[e.Item.ItemIndex].FindControl("Id")).Text;
                    Session["Id_off"] = id;
                    Response.Redirect("/site/admin/adm_offert/Edit_offert.aspx");
                }
                catch (Exception ex)
                {

                }
            }

        }
    }
}