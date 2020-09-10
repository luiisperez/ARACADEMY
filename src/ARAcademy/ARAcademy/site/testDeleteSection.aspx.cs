using ARAcademy.common.entities;
using ARAcademy.controller.section;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ARAcademy.site
{
    public partial class testDeleteSection : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DeleteSectionCommand cmd = new DeleteSectionCommand(new Section(1, "", 1.0, "", new Course()));
            cmd.Execute();
        }
    }
}