using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ARAcademy.site.admin
{
    public partial class Admin_home : System.Web.UI.MasterPage
    {
        public string username;
        public string token;
        protected void Page_Load(object sender, EventArgs e)
        {
            username = Session["Username"].ToString();
            token = Session["Token"].ToString();
            token = Session["Token"].ToString();
        }

        protected void Cerrar_Sesion(object sender, EventArgs e)
        {
            Session.Clear();
            Response.Redirect("login.aspx");
        }
    }
}