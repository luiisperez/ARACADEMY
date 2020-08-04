﻿using ARAcademy.common;
using ARAcademy.controller.teacher;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ARAcademy.site.admin
{
    public partial class reg_prof : System.Web.UI.Page
    {
        public Teacher teacher;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                try
                {
                    if (Session["Username"] != null && Session["Token"] != null)
                    {

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

        protected void Register_Prof(object sender, EventArgs e)
        {
            teacher = new Teacher();
            teacher.Name = name.Value;
            teacher.LastName = last_name.Value;
            teacher.Email = email.Value;
            teacher.Password = password.Value;
            teacher.Phone = telf.Value;
            teacher.Country = country.Value;
            string fec_nac = "01/01/0001";
            teacher.BirthDate = DateTime.Parse(fec_nac);
            CreateTeacherCommand cmd = new CreateTeacherCommand(teacher);
            cmd.Execute();
            if (teacher.Code == 200)
            {
                // Response.Redirect("admin_home.aspx"); Response.Redirect("admin_home.aspx");
            }
            else
            {
                // ClientScript.RegisterClientScriptBlock(this.GetType(), "random", "alertme()", true);
            }
        }
    }
}