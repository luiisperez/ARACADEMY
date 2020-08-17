using ARAcademy.common.entities;
using ARAcademy.controller.course;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ARAcademy.site.admin
{
    public partial class list_mat : System.Web.UI.Page
    {
        private List<Course> list_mate = new List<Course>();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                try
                {
                    if (Session["Username"] != null && Session["Token"] != null)
                    {
                        ReadAllCourseCommand cmd = new ReadAllCourseCommand();
                        cmd.Execute();
                        list_mate = cmd.Courses;
                        foreach (Course course in list_mate)
                        {
                            mat_data.DataSource = list_mate;
                            mat_data.DataBind();
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