using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ARAcademy.site.student
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void ShowReg(object sender, EventArgs e)
        {
            ClientScript.RegisterClientScriptBlock(this.GetType(), "random", "addEventListenerReg()", true);
        }
    }
}