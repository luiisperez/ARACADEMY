﻿using ARAcademy.common;
using ARAcademy.controller.adminmanagement;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.SessionState;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ARAcademy.site.admin
{
    public partial class login : System.Web.UI.Page
    {
        public Administrator administrator;
        protected void Page_Load(object sender, EventArgs e)
        {


        }

        protected void valid_login(object sender, EventArgs e)
        {
            administrator = new Administrator();
            administrator.User = adm_email.Value;
            administrator.Password = adm_pwd.Value.ToString();
            AdminLoginCommand cmd = new AdminLoginCommand(administrator);
            cmd.Execute();
            if ( administrator.Code == 200) 
            {
                Session["Username"] = adm_email.Value;
                Session["Token"] = "7b0705aab296e5f24dc802d440121077";
                Response.Redirect("adm_professor/prof_menu.aspx");
            } else {
                ClientScript.RegisterClientScriptBlock(this.GetType(), "random", "alertme()", true);
            }
        }


    }
}