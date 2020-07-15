using ARAcademy.common;
using ARAcademy.controller.adminmanagement;
using ARAcademy.controller.teacher;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ARAcademy.site.home
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Administrator administrator = new Administrator("laperez13", "1234");
            AdminLoginCommand cmd = new AdminLoginCommand(administrator);
            cmd.Execute();
            Teacher teacher = new Teacher("p@gmail.com");
            ReadAllTeacherCommand cmd2 = new ReadAllTeacherCommand();
            cmd2.Execute();
            ReadTeacherCommand cmd3 = new ReadTeacherCommand(teacher);
            cmd3.Execute();
            teacher = cmd3.Teacher;
            DeleteTeacherCommand cmd4 = new DeleteTeacherCommand(teacher);
            cmd4.Execute();
            teacher = cmd4.Teacher;
        }
    }
}