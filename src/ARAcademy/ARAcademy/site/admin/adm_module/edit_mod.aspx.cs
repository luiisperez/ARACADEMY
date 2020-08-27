using ARAcademy.common.entities;
using ARAcademy.controller.course;
using ARAcademy.controller.grade;
using ARAcademy.controller.section;
using ARAcademy.controller.teaccourseher;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ARAcademy.site.admin.adm_module
{
    public partial class edit_mod : System.Web.UI.Page
    {
        public Grade grades = new Grade();
        public Course course = new Course();
        public Section section = new Section();
        private List<Grade> grade_list = new List<Grade>();
        private List<Course> course_list = new List<Course>();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                try
                {
                    if (Session["Username"] != null && Session["Token"] != null && Session["Id_mod"] != null)
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

                        string id_mod = Session["Id_mod"].ToString();
                        course = new Course();
                        section = new Section();
                        section.Id = Int32.Parse(id_mod);
                        ReadSectionCommand cmd_ = new ReadSectionCommand(section);
                        cmd_.Execute();
                        section = cmd_.Section;
                        course.Id = section.Course.Id;
                        ReadCourseCommand cmd__ = new ReadCourseCommand(course);
                        cmd__.Execute();
                        course = cmd__.Course;
                        list_grades.SelectedValue = course.Grade.Id.ToString();
                        Grade grade_ = new Grade();
                        grade_.Id = Int32.Parse(list_grades.SelectedValue);
                        grade_.Name = list_grades.DataTextField;
                        ReadAllCourseByGradeCommand _cmd = new ReadAllCourseByGradeCommand(grade_);
                        _cmd.Execute();
                        course_list = _cmd.Courses;
                        foreach (Course course in course_list)
                        {
                            list_course.DataTextField = "Name";
                            list_course.DataValueField = "Id";
                            list_course.DataSource = course_list;
                            list_course.DataBind();
                        }
                        list_course.SelectedValue = course.Grade.Id.ToString();
                        name.Value = section.Name;
                        desc.Value = section.Description;
                        amount.Value = section.Amount.ToString();
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

        protected void Reg_Mod(object sender, EventArgs e)
        {
            course = new Course();
            course.Id = list_course.SelectedValue;
            course.Name = list_course.DataTextField;
            section = new Section();
            section.Id = Int32.Parse(Session["Id_mod"].ToString());
            section.Name = name.Value;
            section.Description = desc.Value;
            section.Amount = Double.Parse(amount.Value);
            section.Course = course;
            UpdateSectionCommand cmd = new UpdateSectionCommand(section);
            cmd.Execute();
            if (section.Code == 201)
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