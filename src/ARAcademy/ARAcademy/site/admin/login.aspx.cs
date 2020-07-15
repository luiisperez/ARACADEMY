using ARAcademy.common;
using ARAcademy.controller.adminmanagement;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
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
        }


    }
}