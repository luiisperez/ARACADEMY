using ARAcademy.common.entities;
using ARAcademy.controller.student;
using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ARAcademy.site.student
{
    public partial class edit_estu : System.Web.UI.Page
    {
        private Student student;
        private Grade grade;

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
                        password.Attributes.Add("value", student.Password);
                        password_conf.Attributes.Add("value", student.Password);
                        fec_nac.Value = student.BirthDate.Date.ToString("MM/dd/yyyy");
                        grade_id.Value = student.Grade.Id.ToString();
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

        protected void Updt_est (object sender, EventArgs e)
        {
            student = new Student();
            student.Name = name.Value;
            student.LastName = last_name.Value;
            student.Email = email.Value;
            student.Phone = phone.Value;
            student.Password = password.Value;
            grade = new Grade();
            grade.Id = Int32.Parse(grade_id.Value);
            student.Grade = grade;
            student.Country = "España";
            DateTime fec_nac_ = DateTime.Parse(fec_nac.Value, CultureInfo.GetCultureInfo("en-US"));
            student.BirthDate = Convert.ToDateTime(fec_nac_);
            if (password.Value.Equals(password_conf.Value))
            {
                UpdateStudentCommand cmd = new UpdateStudentCommand(student);
                cmd.Execute();
                if (student.Code == 201)
                {
                    ClientScript.RegisterClientScriptBlock(this.GetType(), "random", " alertme_succ()", true);

                }
                else
                {
                    ClientScript.RegisterClientScriptBlock(this.GetType(), "random", "alertme()", true);
                    fec_nac.Value = fec_nac_.Date.ToString("MM/dd/yyyy");
                }
            }
            else
            {
                ClientScript.RegisterClientScriptBlock(this.GetType(), "random", "alertme_pwd()", true);
                fec_nac.Value = fec_nac_.Date.ToString("MM/dd/yyyy");
            }
        }
    }
}