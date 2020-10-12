using ARAcademy.common.entities;
using ARAcademy.controller.course;
using ARAcademy.controller.grade;
using ARAcademy.controller.section;
using ARAcademy.controller.topic;
using Npgsql;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ARAcademy.site.admin.adm_content
{
    public partial class add_content : System.Web.UI.Page
    {

        public Grade grades;
        public Course course;
        public Section section;
        public Topic topic;
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
                        Response.Redirect("/site/admin/login.aspx");
                    }
                }
                catch (Exception ex)
                {

                }
            }
        }

        protected void AceptarBtn_Click(object sender, EventArgs e)
        {
            Byte[] byteFile = FileManager.FileBytes;
            String byteString = Encoding.ASCII.GetString(byteFile);
            byte[] bytes = Encoding.ASCII.GetBytes(byteString);
            String nameFile = FileManager.PostedFile.FileName;
            String nameFile2 = FileManager.PostedFile.FileName;


            var cs = String.Format("Server={0};Port={1};" +
                    "User Id={2};Password={3};Database={4};",
                    "localhost", "5432", "aracademy",
                    "ArA.062020", "ARAcademyDB");

            var con = new NpgsqlConnection(cs);
            con.Open();

            var cmd = new NpgsqlCommand();
            cmd.Connection = con;


            cmd.CommandText =
                "INSERT INTO document(filename, visibility, filetype, fk_topic, bytes) " +
                "VALUES(@_filename, @_visibility, @_filetype, @_fk_topic, @_bytes)";
            NpgsqlParameter file = new NpgsqlParameter();
            NpgsqlParameter visibility = new NpgsqlParameter();
            NpgsqlParameter type = new NpgsqlParameter();
            NpgsqlParameter topic = new NpgsqlParameter();
            NpgsqlParameter bytea = new NpgsqlParameter();


            file.ParameterName = "_filename";
            visibility.ParameterName = "_visibility";
            type.ParameterName = "_filetype";
            topic.ParameterName = "_fk_topic";
            bytea.ParameterName = "_bytes";

            file.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Varchar;
            visibility.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Integer;
            type.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Varchar;
            topic.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Integer;
            bytea.NpgsqlDbType = NpgsqlTypes.NpgsqlDbType.Bytea;

            file.Value = nameFile;
            visibility.Value = 1;
            type.Value = FileManager.PostedFile.ContentType;
            topic.Value = Int32.Parse(list_topic.SelectedValue);
            bytea.Value = byteFile;

            cmd.Parameters.Add(file);
            cmd.Parameters.Add(visibility);
            cmd.Parameters.Add(type);
            cmd.Parameters.Add(topic);
            cmd.Parameters.Add(bytea);

            cmd.ExecuteNonQuery();
            con.Close();

            cmd = new NpgsqlCommand();
            cmd.Connection = con;


            con.Open();
            cmd.CommandText =
                "SELECT * FROM DOCUMENT";

            NpgsqlDataReader dr = cmd.ExecuteReader();

            try
            {
                while (dr.Read())
                {
                    Byte[] bytesBD = (byte[])dr.GetValue(5);
                    String nameFiles = dr.GetString(1);
                    // RUTA DEL SERVIDOR //
                    File.WriteAllBytes("C:\\Users\\Karem\\Desktop\\" + nameFiles, bytesBD);
                }
                ClientScript.RegisterClientScriptBlock(this.GetType(), "random", "alertme_succ()", true);
                con.Close();
            }
            catch (Exception ex) { }
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

        protected void topic__SelectedIndexChanged(object sender, EventArgs e)
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


    }
}