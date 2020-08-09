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
    public partial class test : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ReadAllSectionByCourseCommand cmd = new ReadAllSectionByCourseCommand(new Course("1"));
            cmd.Execute();
            List<Section> sections = cmd.Sections;
        }
    }
}