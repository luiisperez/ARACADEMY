using ARAcademy.common.entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ARAcademy.site.student
{
    public partial class Student_home : System.Web.UI.MasterPage
    {
        public string username;
        public string token;
        public List<Section> CartList = new List<Section>();
        public int items;
        protected void Page_Load(object sender, EventArgs e)
        {
            CartList = new List<Section>();
            CartList = (List<Section>)Session["ScItms"];
            username = Session["Username"].ToString();
            token = Session["Token"].ToString();
            if (CartList == null)
            {
                items = 0;
            } else
            {
                items = CartList.Count();
            }
        }

        protected void Cerrar_Sesion(object sender, EventArgs e)
        {
            Session.Clear();
            Response.Redirect("/site/student/login.aspx");
        }

        protected void Cart_List(object sender, EventArgs e)
        {
            Response.Redirect("/site/student/pago_mat.aspx");
        }
    }
}