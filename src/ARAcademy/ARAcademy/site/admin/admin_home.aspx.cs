using ARAcademy.common.entities;
using ARAcademy.controller.course;
using ARAcademy.controller.section;
using ARAcademy.controller.topic;
using ARAcademy.controller.grade;
using ARAcademy.controller.student;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text.Json;

namespace ARAcademy.site.admin
{
    public partial class admin_home : System.Web.UI.Page
    {
        private List<Course> list_mate = new List<Course>();
        private List<Section> list_sec = new List<Section>();
        private List<Topic> list_top = new List<Topic>();
        private List<Student> list_stu = new List<Student>();
        private List<Grade> list_gra = new List<Grade>();
        public int suma_mat;
        public int suma_mod;
        public int suma_top;
        public int suma_prig;
        public int suma_segg;
        public int suma_terg;
        public int suma_cuag;
        public int suma_quig;
        public int suma_sexg;
        public int total;
        public string json;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                try
                {
                    if (Session["Username"] != null && Session["Token"] != null)
                    {
                        ReadAllCourseCommand cmd = new ReadAllCourseCommand();
                        cmd.Execute();
                        list_mate = cmd.Courses;
                        foreach (Course course in list_mate)
                        {
                            suma_mat = suma_mat + 1;
                        }
                        ReadAllSectionCommand cmd_ = new ReadAllSectionCommand();
                        cmd_.Execute();
                        list_sec = cmd_.Sections;
                        foreach (Section section in list_sec)
                        {
                            suma_mod = suma_mod + 1;
                        }
                        ReadAllTopicCommand _cmd_ = new ReadAllTopicCommand();
                        _cmd_.Execute();
                        list_top = _cmd_.Topics;
                        foreach (Topic topic in list_top)
                        {
                            suma_top = suma_top + 1;
                        }
                        ReadAllStudentsCommand __cmd_ = new ReadAllStudentsCommand();
                        __cmd_.Execute();
                        list_stu = __cmd_.Students;
                        foreach (Student student in list_stu)
                        {
                            if (student.Grade.Id == 1) 
                            {
                                suma_prig = suma_prig + 1;
                            }
                            else if (student.Grade.Id == 2)
                            {
                                suma_segg = suma_segg + 1;
                            }
                            else if (student.Grade.Id == 3)
                            {
                                suma_terg = suma_terg + 1;
                            }
                            else if (student.Grade.Id == 4)
                            {
                                suma_cuag = suma_cuag + 1;
                            }
                            else if (student.Grade.Id == 5)
                            {
                                suma_quig = suma_quig + 1;
                            }
                            else if (student.Grade.Id == 6)
                            {
                                suma_sexg = suma_sexg + 1;
                            }
                            total = total + 1;

                        }
                    }
                    else
                    {
                        Response.Redirect("login.aspx");
                    }
                }
                catch (Exception ex)
                {
                    
                }
            }
        }
    }
}