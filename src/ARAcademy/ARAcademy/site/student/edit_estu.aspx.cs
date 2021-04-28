using ARAcademy.common.entities;
using ARAcademy.controller.student;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ARAcademy.site.student
{
    public partial class edit_estu : System.Web.UI.Page
    {
        private Student student;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                try
                {
                    if (Session["Username"] != null && Session["Token"] != null)
                    {
                        student = new Student();
                        student.Email = Session["Username"].ToString();
                        ReadStudentCommand cmd = new ReadStudentCommand(student);
                        cmd.Execute();
                        student = cmd.Student;
                        name.Value = student.Name;
                        last_name.Value = student.LastName;
                        email.Value = student.Email;
                        phone.Value = student.Phone;
                        password.Value = student.Password;
                        conf_pwd.Value = student.Password;
                        fec_nac.Value = student.BirthDate.ToString();

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