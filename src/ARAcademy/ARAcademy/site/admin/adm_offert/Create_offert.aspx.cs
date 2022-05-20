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
    public partial class Create_offert : System.Web.UI.Page
    {
        public Offer offer;
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session["Username"] != null && Session["Token"] != null)
                {
                    for (var i = 1; i < 100; i++)
                    {
                        ListItem item = new ListItem();
                        item.Text = i.ToString();
                        item.Value = i.ToString();
                        porcentaje.Items.Add(item);
                    }

                    for (var i = 1; i < 10; i++)
                    {
                        ListItem item = new ListItem();
                        item.Text = i.ToString();
                        item.Value = i.ToString();
                        minArticles.Items.Add(item);
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

        protected void Create_offerts(object sender, EventArgs e)
        {
            offer = new Offer();
            offer.Name = name.Value;
            offer.Description = description.Value;
            DateTime fec_ini = DateTime.Parse(fec_in.Text);
            DateTime fec_fi = DateTime.Parse(fec_fin.Text);
            offer.InitDate = fec_ini;
            offer.EndDate = fec_fi;
            offer.MinArticles = Int32.Parse(minArticles.SelectedValue);
            offer.Percentage = Int32.Parse(porcentaje.SelectedValue);
            CreateOfferCommand cmd = new CreateOfferCommand(offer);
            cmd.Execute();
            if (offer.Code == 200)
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