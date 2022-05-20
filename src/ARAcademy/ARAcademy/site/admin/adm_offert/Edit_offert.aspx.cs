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
    public partial class Edit_offert : System.Web.UI.Page
    {
        public Offer offer = new Offer();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                try
                {
                    if (Session["Username"] != null && Session["Token"] != null && Session["Id_off"] != null)
                    {
                        offer.Id = Int32.Parse(Session["Id_off"].ToString());
                        ReadOfferCommand cmd = new ReadOfferCommand(offer);
                        cmd.Execute();
                        offer = cmd.Offer;
                        name.Value = offer.Name;
                        description.Value = offer.Description;
                        porcentaje.DataValueField = offer.Percentage.ToString();
                        minArticles.DataValueField = offer.MinArticles.ToString();
                        fec_in.Text = offer.InitDate.ToShortDateString();
                        fec_fin.Text = offer.EndDate.ToShortDateString();

                        for (var i = 1; i < 100; i++)
                        {
                            ListItem item = new ListItem();
                            item.Text = i.ToString();
                            item.Value = i.ToString();
                            porcentaje.Items.Add(item);
                        }
                        porcentaje.SelectedValue = offer.Percentage.ToString();

                        for (var i = 1; i < 10; i++)
                        {
                            ListItem item = new ListItem();
                            item.Text = i.ToString();
                            item.Value = i.ToString();
                            minArticles.Items.Add(item);
                        }
                        minArticles.SelectedValue = offer.MinArticles.ToString();
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

        protected void Upd_off(object sender, EventArgs e)
        {
            offer = new Offer();
            offer.Id = Int32.Parse(Session["Id_off"].ToString());
            offer.Name = name.Value;
            offer.Description = description.Value;
            DateTime fec_ini = DateTime.Parse(fec_in.Text);
            DateTime fec_fi = DateTime.Parse(fec_fin.Text);
            offer.InitDate = fec_ini;
            offer.EndDate = fec_fi;
            offer.MinArticles = Int32.Parse(minArticles.SelectedValue);
            offer.Percentage = Int32.Parse(porcentaje.SelectedValue);
            UpdateOfferCommand cmd = new UpdateOfferCommand(offer);
            cmd.Execute();
            if (offer.Code == 201)
            {
                ClientScript.RegisterClientScriptBlock(this.GetType(), "random", "alertme_succ()", true);
            }
            else
            {
                ClientScript.RegisterClientScriptBlock(this.GetType(), "random", "alertme()", true);
            }
        }
    }
}