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
                        Response.Redirect("login.aspx");
                    }
                }
                catch (Exception ex)
                {

                }
            }

        }
    }
}