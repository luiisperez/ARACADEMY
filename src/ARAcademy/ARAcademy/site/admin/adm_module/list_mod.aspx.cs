using ARAcademy.common.entities;
using ARAcademy.controller.section;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ARAcademy.site.admin
{
    public partial class list_mod : System.Web.UI.Page
    {
        private List<Section> list_modu = new List<Section>();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                try
                {
                    if (Session["Username"] != null && Session["Token"] != null)
                    {
                        ReadAllSectionCommand cmd = new ReadAllSectionCommand();
                        cmd.Execute();
                        list_modu = cmd.Sections;
                        foreach (Section section in list_modu)
                        {
                            mod_data.DataSource = list_modu;
                            mod_data.DataBind();
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

        protected void mod_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            ImageButton action = (ImageButton)e.CommandSource;
            string actionString = action.ID;
            if (action.ID.Equals("delete"))
            {
                try
                {
                    Section section = new Section();
                    string id = ((Label)mod_data.Items[e.Item.ItemIndex].FindControl("Id")).Text;
                    section.Id = Int32.Parse(id);
                    DeleteSectionCommand cmd = new DeleteSectionCommand(section);
                    cmd.Execute();
                    if (section.Code == 200)
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
                    string id = ((Label)mod_data.Items[e.Item.ItemIndex].FindControl("Id")).Text;
                    Session["Id_mod"] = id;
                    Response.Redirect("/site/admin/adm_module/edit_mod.aspx");
                }
                catch (Exception ex)
                {

                }
            }

        }
    }
}