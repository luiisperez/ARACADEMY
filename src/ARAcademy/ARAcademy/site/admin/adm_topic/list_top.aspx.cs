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
                        Response.Redirect("/site/admin/login.aspx");
                    }
                }
                catch (Exception ex)
                {

                }
            }
        }

        protected void top_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            ImageButton action = (ImageButton)e.CommandSource;
            string actionString = action.ID;
            if (action.ID.Equals("delete"))
            {
                try
                {
                    Topic topic = new Topic();
                    string id = ((Label)top_data.Items[e.Item.ItemIndex].FindControl("Id")).Text;
                    topic.Id = Int32.Parse(id);
                    DeleteTopicCommand cmd = new DeleteTopicCommand(topic);
                    cmd.Execute();
                    if (topic.Code == 200)
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
                    string id = ((Label)top_data.Items[e.Item.ItemIndex].FindControl("Id")).Text;
                    Session["Id_top"] = id;
                    Response.Redirect("/site/admin/adm_topic/edit_top.aspx");
                }
                catch (Exception ex)
                {

                }
            }

        }
    }
}