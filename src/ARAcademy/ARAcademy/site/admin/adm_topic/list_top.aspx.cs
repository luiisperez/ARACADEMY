using ARAcademy.common.entities;
using ARAcademy.controller.topic;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ARAcademy.site.admin
{
    public partial class list_top : System.Web.UI.Page
    {
        private List<Topic> list_topi = new List<Topic>();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                try
                {
                    if (Session["Username"] != null && Session["Token"] != null)
                    {
                        ReadAllTopicCommand cmd = new ReadAllTopicCommand();
                        cmd.Execute();
                        list_topi = cmd.Topics;
                        foreach (Topic topic in list_topi)
                        {
                            top_data.DataSource = list_topi;
                            top_data.DataBind();
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