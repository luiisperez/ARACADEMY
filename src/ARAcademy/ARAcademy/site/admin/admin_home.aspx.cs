using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ARAcademy.site.admin
{
    public partial class admin_home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var username = Session["Username"];
            var token = Session["Token"];
            if (username != null && token != null)
            {

            } else {
               Response.Redirect("login.aspx");
            }
        }
    }
}