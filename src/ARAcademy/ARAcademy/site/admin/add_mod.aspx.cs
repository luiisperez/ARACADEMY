using ARAcademy.common.entities;
using ARAcademy.controller.course;
using ARAcademy.controller.grade;
using System;
using System.Collections.Generic;
using System.Web.UI;

namespace ARAcademy.site.admin
{
    public partial class add_mod : System.Web.UI.Page
    {
        public Grade grades;
        private List<Grade> grade_list = new List<Grade>();
        private List<Course> course_list = new List<Course>();
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

        protected void grade__SelectedIndexChanged(object sender, EventArgs e)
        {
            Grade grade = new Grade();
            grade.Id = 1;
            grade.Name = list_grades.DataTextField;
            ReadAllCourseByGradeCommand cmd = new ReadAllCourseByGradeCommand(grade);
            cmd.Execute();
            course_list = cmd.Courses;
            foreach (Course course in course_list)
            {
                list_course.DataTextField = "Name";
                list_course.DataValueField = "Id";
                list_course.DataSource = grade_list;
                list_course.DataBind();
            }
        }
    }
}