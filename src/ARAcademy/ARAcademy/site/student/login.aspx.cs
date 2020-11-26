using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ARAcademy.common;
using ARAcademy.controller.student;
using ARAcademy.common.entities;
using System.Globalization;

namespace ARAcademy.site.student
{
    public partial class login : System.Web.UI.Page
    {
        public Student student;
        public Grade grade;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void ShowReg(object sender, EventArgs e)
        {
            ClientScript.RegisterClientScriptBlock(this.GetType(), "random", "addEventListenerReg()", true);
        }

        protected void valid_login(object sender, EventArgs e)
        {
            student = new Student();
            student.Email = stu_email.Value;
            student.Password = stu_pwd.Value.ToString();
            StudentLoginCommand cmd = new StudentLoginCommand(student);
            cmd.Execute();
            if (student.Code == 200)
            {
                Session["Username"] = stu_email.Value;
                Session["Token"] = "7b0705aab296e5f24dc802d440121078";
                Response.Redirect("stud_menu.aspx");
            }
            else
            {
                ClientScript.RegisterClientScriptBlock(this.GetType(), "random", "alertme()", true);
            }
        }


        //protected void Register_Stu(object sender, EventArgs e)
        //{
        //    grade = new Grade();
        //    grade.Id = Int32.Parse(grade_id.Value);
        //    student = new Student();
        //    student.Name = name.Value;
        //    student.LastName = last_name.Value;
        //    student.Email = email.Value;
        //    student.Password = password.Value;
        //    student.Phone = phone.Value;
        //    student.Country = "España";
        //    student.Grade = grade;
        //    fec_nac.Value = fec_nac.Value + " 12:00:00";
        //    DateTime fec_nac_ = DateTime.Parse(fec_nac.Value, CultureInfo.GetCultureInfo("en-US"));
        //    student.BirthDate = Convert.ToDateTime(fec_nac_);
        //    if (password.Value.Equals(conf_pwd.Value))
        //    {
        //        CreateStudentCommand cmd = new CreateStudentCommand(student);
        //        cmd.Execute();
        //        if (student.Code == 200)
        //        {
        //            ClientScript.RegisterClientScriptBlock(this.GetType(), "random", "alertme_succ()", true);
        //        }
        //        else
        //        {
        //            ClientScript.RegisterClientScriptBlock(this.GetType(), "random", "alertme()", true);
        //        }
        //    }
        //    else
        //    {
        //        ClientScript.RegisterClientScriptBlock(this.GetType(), "random", "alertme_pwd()", true);
        //    }
        //}
    }
}