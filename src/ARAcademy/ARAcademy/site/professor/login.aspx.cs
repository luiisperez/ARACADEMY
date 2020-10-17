using System;
using ARAcademy.controller.adminmanagement;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ARAcademy.common;
using ARAcademy.controller.teacher;

namespace ARAcademy.site.professor
{
    public partial class login : System.Web.UI.Page
    {
        public Teacher teacher;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void valid_login(object sender, EventArgs e)
        {
            teacher = new Teacher();
            teacher.Email = adm_email.Value;
            teacher.Password = adm_pwd.Value.ToString();
            TeacherLoginCommand cmd = new TeacherLoginCommand(teacher);
            cmd.Execute();
            if (teacher.Code == 200)
            {
                Session["Username"] = adm_email.Value;
                Session["Token"] = "7b0705aab296e5f24dc802d440121078";
                Response.Redirect("prof_menu.aspx");
            }
            else
            {
                ClientScript.RegisterClientScriptBlock(this.GetType(), "random", "alertme()", true);
            }
        }
    }
}