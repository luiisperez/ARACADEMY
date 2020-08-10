using ARAcademy.common.entities;
using ARAcademy.controller.course;
using ARAcademy.controller.grade;
using ARAcademy.controller.section;
using System;
using System.Collections.Generic;
using System.Web.UI;

namespace ARAcademy.site.admin
{
    public partial class add_mod : System.Web.UI.Page
    {
        public Grade grades;
        public Course course;
        public Section section;
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
            section.Name = name.Value;
            section.Description = desc.Value;
            section.Amount = Double.Parse(amount.Value);
            section.Course = course;
            CreateSectionCommand cmd = new CreateSectionCommand(section);
            cmd.Execute(); 
            if (section.Code == 200)
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