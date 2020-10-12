using ARAcademy.common.entities;
using ARAcademy.controller.course;
using ARAcademy.controller.document;
using ARAcademy.controller.grade;
using ARAcademy.controller.section;
using ARAcademy.controller.teaccourseher;
using ARAcademy.controller.topic;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ARAcademy.site.admin.adm_content
{
    public partial class edit_doc : System.Web.UI.Page
    {
        public Grade grades = new Grade();
        public Course course = new Course();
        public Section section = new Section();
        public Topic topic = new Topic();
        public Document document = new Document();
        public Document document_ = new Document();
        private List<Grade> grade_list = new List<Grade>();
        private List<Course> course_list = new List<Course>();
        private List<Section> section_list = new List<Section>();
        private List<Topic> topic_list = new List<Topic>();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                try
                {
                    if (Session["Username"] != null && Session["Token"] != null && Session["Id_doc"] != null)
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

                        string Id_doc = Session["Id_doc"].ToString();
                        document = new Document();
                        section = new Section();
                        course = new Course();
                        topic = new Topic();
                        document.Id = Int32.Parse(Id_doc);
                        ReadDocumentCommand cmd_ = new ReadDocumentCommand(document);
                        cmd_.Execute();
                        document = cmd_.Document;
                        topic.Id = document.Topic.Id;
                        ReadTopicCommand __cmd_ = new ReadTopicCommand(topic);
                        __cmd_.Execute();
                        topic = __cmd_.Topic;
                        section.Id = topic.Section.Id;
                        ReadSectionCommand cmd__ = new ReadSectionCommand(section);
                        cmd__.Execute();
                        section = cmd__.Section;
                        course.Id = section.Course.Id;
                        ReadCourseCommand _cmd = new ReadCourseCommand(course);
                        _cmd.Execute();
                        course = _cmd.Course;
                        list_grades.SelectedValue = course.Grade.Id.ToString();
                        Grade grade_ = new Grade();
                        grade_.Id = Int32.Parse(list_grades.SelectedValue);
                        grade_.Name = list_grades.DataTextField;
                        ReadAllCourseByGradeCommand __cmd = new ReadAllCourseByGradeCommand(grade_);
                        __cmd.Execute();
                        course_list = __cmd.Courses;
                        foreach (Course course in course_list)
                        {
                            list_course.DataTextField = "Name";
                            list_course.DataValueField = "Id";
                            list_course.DataSource = course_list;
                            list_course.DataBind();
                        }
                        list_course.SelectedValue = course.Id;
                        Course _course = new Course();
                        _course.Id = list_course.SelectedValue;
                        _course.Name = list_course.DataTextField;
                        ReadAllSectionByCourseCommand _cmd_ = new ReadAllSectionByCourseCommand(course);
                        _cmd_.Execute();
                        section_list = _cmd_.Sections;
                        foreach (Section section in section_list)
                        {
                            list_section.DataTextField = "Name";
                            list_section.DataValueField = "Id";
                            list_section.DataSource = section_list;
                            list_section.DataBind();
                        }
                        list_section.SelectedValue = section.Id.ToString();
                        Section _section = new Section();
                        _section.Id = Int32.Parse(list_section.SelectedValue);
                        _section.Name = list_section.DataTextField;
                        ReadAllTopicByTopicCommand __cmd__ = new ReadAllTopicByTopicCommand(section);
                        __cmd__.Execute();
                        topic_list = __cmd__.Topics;
                        foreach (Topic topic in topic_list)
                        {
                            list_topic.DataTextField = "Name";
                            list_topic.DataValueField = "Id";
                            list_topic.DataSource = topic_list;
                            list_topic.DataBind();
                        }
                        list_topic.SelectedValue = topic.Id.ToString();
                        name.Value = document.File;
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

        protected void section__SelectedIndexChanged(object sender, EventArgs e)
        {
            Section section = new Section();
            section.Id = Int32.Parse(list_section.SelectedValue);
            section.Name = list_section.DataTextField;
            ReadAllTopicByTopicCommand cmd = new ReadAllTopicByTopicCommand(section);
            cmd.Execute();
            topic_list = cmd.Topics;
            foreach (Topic topic in topic_list)
            {
                list_topic.DataTextField = "Name";
                list_topic.DataValueField = "Id";
                list_topic.DataSource = topic_list;
                list_topic.DataBind();
            }

            if (list_topic.Items.Count > 0)
            {
                list_topic.Enabled = true;
            }
            else
            {
                list_topic.Enabled = false;
            }

        }

        protected void upd_doc(object sender, EventArgs e)
        {
            document_ = new Document();
            document_.Id = Int32.Parse(Session["Id_doc"].ToString());
            ReadDocumentCommand cmd_ = new ReadDocumentCommand(document_);
            cmd_.Execute();
            document_ = cmd_.Document;
            topic = new Topic();
            topic.Id = Int32.Parse(list_topic.SelectedValue);
            document = new Document();
            document.Id = Int32.Parse(Session["Id_doc"].ToString());
            document.File = name.Value;
            document.Topic = topic;
            document.Bytea = document_.Bytea;
            document.Type = document_.Type;
            document.Visibility = document_.Visibility;
            UpdateDocumentCommand cmd = new UpdateDocumentCommand(document);
            cmd.Execute();
            if (document.Code == 201)
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