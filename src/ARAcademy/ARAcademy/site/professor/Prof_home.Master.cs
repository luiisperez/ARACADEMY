using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ARAcademy.site.professor
{
    public partial class Master_Prof : System.Web.UI.MasterPage
    {
        public string username;
        public string token;
        protected void Page_Load(object sender, EventArgs e)
        {
            username = Session["Username"].ToString();
            token = Session["Token"].ToString();
        }
        protected void Cerrar_Sesion(object sender, EventArgs e)
        {
            Session.Clear();
            Response.Redirect("/site/professor/login.aspx");
        }
    }
}