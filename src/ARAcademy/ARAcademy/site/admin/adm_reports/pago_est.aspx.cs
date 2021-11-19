using ARAcademy.common.entities;
using ARAcademy.controller.course;
using ARAcademy.controller.grade;
using ARAcademy.controller.report;
using ARAcademy.controller.section;
using ARAcademy.controller.student;
using PayPal.Api;
using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ARAcademy.site.admin.adm_reports
{
    public partial class pago_est : System.Web.UI.Page
    {
        public Grade grades;
        public Course course;
        public Section section;
        public Topic topic;
        private Student student;
        private List<Grade> grade_list = new List<Grade>();
        private List<Course> course_list = new List<Course>();
        private List<Section> section_list = new List<Section>();
        private List<AraPayment> list_pagos = new List<AraPayment>();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                try
                {
                    if (Session["Username"] != null && Session["Token"] != null)
                    {
                        div_table.Visible = false;
                        //export.Visible = false;
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

                        list_grades.Items.Insert(0, new ListItem("Seleccione", ""));
                        list_grades.Items[0].Selected = true;
                        list_grades.Items[0].Attributes["disabled"] = "disabled";
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

            list_course.Items.Insert(0, new ListItem("Seleccione", ""));
            list_course.Items[0].Selected = true;
            list_course.Items[0].Attributes["disabled"] = "disabled";

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

            list_section.Items.Insert(0, new ListItem("Seleccione", ""));
            list_section.Items[0].Selected = true;
            list_section.Items[0].Attributes["disabled"] = "disabled";

            if (list_section.Items.Count > 0)
            {
                list_section.Enabled = true;
            }
            else
            {
                list_section.Enabled = false;
            }

        }

        protected void pago_search(object sender, EventArgs e)
        {
            section = new Section();
            section.Id = Int32.Parse(list_section.SelectedValue);
            ReadAllPaymentBySectionCommand cmd = new ReadAllPaymentBySectionCommand(section);
            cmd.Execute();

            list_pagos = cmd.Payments;
            foreach (AraPayment araPayments in list_pagos)
            {
                student = new Student();
                student.Email = araPayments.Student.Email;
                ReadStudentCommand cmd_ = new ReadStudentCommand(student);
                cmd_.Execute();
                araPayments.Student = cmd_.Student;
            }
            prof_pagos.DataSource = list_pagos;
            prof_pagos.DataBind();
            div_table.Visible = true;
            //export.Visible = true;
        }
    }
}