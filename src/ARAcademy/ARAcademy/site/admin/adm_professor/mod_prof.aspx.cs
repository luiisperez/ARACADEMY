using ARAcademy.common;
using ARAcademy.common.entities;
using ARAcademy.controller.course;
using ARAcademy.controller.educate;
using ARAcademy.controller.grade;
using ARAcademy.controller.section;
using ARAcademy.controller.teacher;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ARAcademy.site.admin.adm_professor
{
    public partial class mod_prof : System.Web.UI.Page
    {
        public Grade grades;
        public Course course;
        public Section section;
        public Topic topic;
        public Teacher teacher;
        public Educate educate;
        private List<Grade> grade_list = new List<Grade>();
        private List<Course> course_list = new List<Course>();
        private List<Section> section_list = new List<Section>();
        private List<Teacher> teacher_list = new List<Teacher>();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                try
                {
                    if (Session["Username"] != null && Session["Token"] != null)
                    {
                        ReadAllGradeCommand cmd = new ReadAllGradeCommand();
                        cmd.Execute();
                        grade_list = cmd.Grades;
                        foreach (Grade grade in grade_list)
                        {

                            list_grades.DataTextField = "Name";
                            list_grades.DataValueField = "Id";
                            list_grades.DataSource = grade_list;
                            list_grades.DataBind();
                        }

                        ReadAllTeacherCommand cmd_ = new ReadAllTeacherCommand();
                        cmd_.Execute();
                        teacher_list = cmd_.Teachers;
                        foreach (Teacher teacher in teacher_list)
                        {
                            teacher.Name = teacher.Name + " " + teacher.LastName;
                            list_prof.DataTextField = "Name";
                            list_prof.DataValueField = "Email";
                            list_prof.DataSource = teacher_list;
                            list_prof.DataBind();
                        }

                    }
                    else
                    {
                        Response.Redirect("/site/admin/login.aspx");
                    }
                }
                catch (Exception ex)
                {

                }
            }

        }

        protected void grade__SelectedIndexChanged(object sender, EventArgs e)
        {
            Grade grade = new Grade();
            grade.Id = Int32.Parse(list_grades.SelectedValue);
            grade.Name = list_grades.DataTextField;
            ReadAllCourseByGradeCommand cmd = new ReadAllCourseByGradeCommand(grade);
            cmd.Execute();
            course_list = cmd.Courses;
            foreach (Course course in course_list)
            {
                list_course.DataTextField = "Name";
                list_course.DataValueField = "Id";
                list_course.DataSource = course_list;
                list_course.DataBind();
            }


            if (list_course.Items.Count > 0)
            {
                list_course.Enabled = true;
            }
            else
            {
                list_course.Enabled = false;
            }
            list_course = null;
        }

        protected void course__SelectedIndexChanged(object sender, EventArgs e)
        {
            Course course = new Course();
            course.Id = list_course.SelectedValue;
            course.Name = list_course.DataTextField;
            ReadAllSectionByCourseCommand cmd = new ReadAllSectionByCourseCommand(course);
            cmd.Execute();
            section_list = cmd.Sections;
            foreach (Section section in section_list)
            {
                list_section.DataTextField = "Name";
                list_section.DataValueField = "Id";
                list_section.DataSource = section_list;
                list_section.DataBind();
            }

            if (list_section.Items.Count > 0)
            {
                list_section.Enabled = true;
            }
            else
            {
                list_section.Enabled = false;
            }

        }

        protected void Reg_prof_mod(object sender, EventArgs e)
        {

            section = new Section();
            section.Id = Int32.Parse(list_section.SelectedValue);
            section.Name = list_section.DataTextField;
            teacher = new Teacher();
            teacher.Email = list_prof.SelectedValue;
            educate = new Educate();
            educate.Section = section;
            educate.Teacher = teacher;
            AssignSectionTeacherCommand cmd = new AssignSectionTeacherCommand(educate);
            cmd.Execute();
            if (this.educate.Code == 200)
            {
                ClientScript.RegisterClientScriptBlock(this.GetType(), "random", "alertme_succ()", true);
            }
            else
            {
                ClientScript.RegisterClientScriptBlock(this.GetType(), "random", "alertme()", true);
            }
        }
    }
}