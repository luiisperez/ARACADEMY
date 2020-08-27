using ARAcademy.common.entities;
using ARAcademy.controller.course;
using ARAcademy.controller.grade;
using ARAcademy.controller.teaccourseher;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ARAcademy.site.admin.adm_course
{
    public partial class edit_mat : System.Web.UI.Page
    {
        public Grade grades = new Grade();
        public Course course = new Course();
        private List<Grade> grade_list = new List<Grade>();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                try
                {
                if (Session["Username"] != null && Session["Token"] != null && Session["Id_mat"] != null)
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

                    string id_mat = Session["Id_mat"].ToString();
                    course = new Course();
                    course.Id = id_mat; 
                    ReadCourseCommand cmd_ = new ReadCourseCommand(course);
                    cmd_.Execute();
                    course = cmd_.Course;
                    list_grades.SelectedValue = course.Grade.Id.ToString();
                    name.Value = course.Name;
                    desc.Value = course.Description;

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
        protected void Reg_Mat(object sender, EventArgs e)
        {
            grades = new Grade();
            grades.Id = Int32.Parse(list_grades.SelectedValue);
            grades.Name = list_grades.DataTextField;
            string oldid = Session["Id_mat"].ToString();
            course = new Course();
            course.Id = name.Value.Substring(0, 4) + list_grades.SelectedValue + DateTime.Now.Year.ToString();
            course.Name = name.Value;
            course.Description = desc.Value;
            course.Grade = grades;
            UpdateCourseCommand cmd = new UpdateCourseCommand(course, oldid);
            cmd.Execute();
            if (course.Code == 201)
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