using ARAcademy.common.entities;
using ARAcademy.controller.course;
using ARAcademy.controller.grade;
using System;
using System.Collections.Generic;
using System.Web.UI;

namespace ARAcademy.site.admin
{
    public partial class add_mat : System.Web.UI.Page
    {
        public Course course;
        public Grade grades;
        private List<Grade> grade_list = new List<Grade>();
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

        protected void Reg_Mat(object sender, EventArgs e)
        {
            grades = new Grade();
            grades.Id = Int32.Parse(list_grades.SelectedValue);
            grades.Name = list_grades.DataTextField;
            course = new Course();
            course.Id = name.Value.Substring(0, 4) + list_grades.SelectedValue + DateTime.Now.Year.ToString();
            course.Name = name.Value;
            course.Description = desc.Value;
            course.Grade = grades;
            CreateCourseCommand cmd = new CreateCourseCommand(course);
            cmd.Execute();
            if (course.Code == 200)
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
