using ARAcademy.common;
using ARAcademy.common.entities;
using ARAcademy.controller.student;
using ARAcademy.controller.teacher;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ARAcademy.site.admin
{
    public partial class list_est : System.Web.UI.Page
    {
        private List<Student> list_estu = new List<Student>();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                try
                {
                    if (Session["Username"] != null && Session["Token"] != null)
                    {
                        ReadAllStudentsCommand cmd = new ReadAllStudentsCommand();
                        cmd.Execute();
                        list_estu = cmd.Students;
                        foreach (Student student in list_estu)
                        {
                            estu_data.DataSource = list_estu;
                            estu_data.DataBind();
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