using ARAcademy.common;
using ARAcademy.controller.teacher;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ARAcademy.site.admin
{
    public partial class list_prof : System.Web.UI.Page
    {
        private List<Teacher> list_profe = new List<Teacher>();
        public Teacher teacher = new Teacher();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                try
                {
                    if (Session["Username"] != null && Session["Token"] != null)
                    {
                        ReadAllTeacherCommand cmd = new ReadAllTeacherCommand();
                        cmd.Execute();
                        list_profe = cmd.Teachers;
                        foreach (Teacher teacher in list_profe)
                        {
                            prof_data.DataSource = list_profe;
                            prof_data.DataBind();
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

        protected void del_prof(object sender, EventArgs e)
        {  
            foreach (RepeaterItem item in prof_data.Items)
            {
                teacher = new Teacher();
                teacher.Email = ((Label)item.FindControl("email")).Text;
                DeleteTeacherCommand cmd = new DeleteTeacherCommand(teacher);
                cmd.Execute();
                if (teacher.Code == 200)
                {
                    ClientScript.RegisterClientScriptBlock(this.GetType(), "random", "alertme()", true);
                } else { }
        }
        }
    }
}   