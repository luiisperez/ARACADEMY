using ARAcademy.common;
using ARAcademy.controller.teacher;
using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ARAcademy.site.admin.adm_professor
{
    public partial class edit_prof : System.Web.UI.Page
    {
        public Teacher teacher = new Teacher();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                try
                {
                    if (Session["Username"] != null && Session["Token"] != null && Session["Email_prof"] != null)
                    {
                        string email_prof = Session["Email_prof"].ToString();
                        teacher = new Teacher();
                        teacher.Email = email_prof;
                        ReadTeacherCommand cmd = new ReadTeacherCommand(teacher);
                        cmd.Execute();
                        teacher = cmd.Teacher;
                        name.Value = teacher.Name;
                        last_name.Value = teacher.LastName;
                        email.Value = teacher.Email;
                        password.Attributes.Add("value", teacher.Password);
                        conf_pwd.Attributes.Add("value", teacher.Password);
                        telf.Value = teacher.Phone; 
                        country.Value = teacher.Country;
                        fec_nac.Value = teacher.BirthDate.Date.ToString("MM/dd/yyyy");

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

        protected void Register_Prof(object sender, EventArgs e)
        {
            teacher = new Teacher();
            teacher.Name = name.Value;
            teacher.LastName = last_name.Value;
            teacher.Email = email.Value;
            teacher.Password = password.Text;
            teacher.Phone = telf.Value;
            teacher.Country = country.Value;
            fec_nac.Value = fec_nac.Value;
            DateTime fec_nac_ = DateTime.Parse(fec_nac.Value, CultureInfo.GetCultureInfo("en-US"));
            teacher.BirthDate = Convert.ToDateTime(fec_nac_);
            if (password.Text.Equals(conf_pwd.Text))
            {
                UpdateTeacherCommand cmd = new UpdateTeacherCommand(teacher);
                cmd.Execute();
                if (teacher.Code == 201)
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