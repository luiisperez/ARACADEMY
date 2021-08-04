using ARAcademy.common;
using ARAcademy.common.entities;
using ARAcademy.common.json.meetings;
using ARAcademy.controller.classmeeting;
using ARAcademy.controller.payment;
using ARAcademy.controller.section;
using ARAcademy.controller.educate;
using ARAcademy.controller.topic;
using ARAcademy.model.zoom;
using System;
using System.Collections.Generic;
using System.Globalization;
using System.Web.UI;
using System.Web.UI.WebControls;
using Newtonsoft.Json;

namespace ARAcademy.site.professor
{
    public partial class prof_menu : System.Web.UI.Page
    {
        private Section section;
        private Teacher teacher;
        private Student student;
        private Educate educate;
        private List<AraPayment> payment;
        private List<Section> sections;
        private List<Educate> list_edu;
        private ClassMeeting classmeet;
        private List<ClassMeeting> list_class = new List<ClassMeeting>();
        public List<ClassMeeting> list_class_aux = new List<ClassMeeting>();
        public string jsonData;
        public string myData;
        public List<object> list_data;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                try
                {
                    if (Session["Username"] != null && Session["Token"] != null)
                    {
                        student = new Student();
                        sections = new List<Section>();
                        teacher = new Teacher();
                        student.Email = Session["Username"].ToString();
                        educate = new Educate();
                        teacher.Email = student.Email;
                        educate.Teacher = teacher;
                        GetSectionsByTeacherCommand cmd_ = new GetSectionsByTeacherCommand(educate);
                        cmd_.Execute();
                        list_edu = cmd_.EducateList;
                        foreach (Educate educate in list_edu)
                        {
                            section = new Section();
                            section.Id = educate.Section.Id;
                            ReadSectionCommand cmd = new ReadSectionCommand(section);
                            cmd.Execute();
                            sections.Add(cmd.Section);
                        }
                        ReadAllClassMeetingCommand _cmd_ = new ReadAllClassMeetingCommand();
                        _cmd_.Execute();
                        list_class = _cmd_.ClassMeetings;
                        foreach (Section section in sections)
                        {
                            foreach (ClassMeeting classMeeting in list_class)
                            {
                                if (section.Id == classMeeting.Section.Id && classMeeting.Teacher.Email == "host@ara.com")
                                {
                                    list_class_aux.Add(classMeeting);
                                }
                            }
                        }
                        class_data.DataSource = list_class_aux;
                        class_data.DataBind();
                        int i;
                        list_data = new List<object>();
                        for (i = 0; i < list_class_aux.Count; i++)
                        {
                            var myData = new
                            {
                                title = list_class_aux[i].Agenda,
                                start = new DateTime(list_class_aux[i].StartTime.Year, list_class_aux[i].StartTime.Month, list_class_aux[i].StartTime.Day).ToString("yyyy-MM-dd")
                            };

                            list_data.Add(myData);
                        }
                        //Tranform it to Json object
                        jsonData = JsonConvert.SerializeObject(list_data);
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

        protected void top_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            ImageButton action = (ImageButton)e.CommandSource;
            string actionString = action.ID;
            if (action.ID.Equals("join"))
            {
                try
                {
                    teacher = new Teacher();
                    classmeet = new ClassMeeting();
                    string id = ((Label)class_data.Items[e.Item.ItemIndex].FindControl("Id")).Text;
                    classmeet.Id = id;
                    teacher.Email = Session["Username"].ToString();
                    classmeet.Teacher = teacher;
                    UpdateClassTeacherCommand _cmd_ = new UpdateClassTeacherCommand(classmeet);
                    _cmd_.Execute();
                    ClientScript.RegisterClientScriptBlock(this.GetType(), "random", "alertme_succ()", true);
                }
                catch (Exception ex)
                {
                }
            }
            else if (action.ID.Equals("modify"))
            {
                try
                {

                }
                catch (Exception ex)
                {

                }
            }

        }
    }
}