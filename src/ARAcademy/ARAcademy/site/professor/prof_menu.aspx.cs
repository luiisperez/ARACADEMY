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
        private Section section_;
        private Teacher teacher;
        private Student student;
        private Educate educate;
        private List<AraPayment> payment;
        private List<Section> sections;
        private List<Educate> list_edu;
        private List<Topic> topics;
        private Topic topic;
        private Classlist listado;
        private ClassMeeting classmeet;
        private AraPayment arapayment;
        private List<ClassMeeting> list_class = new List<ClassMeeting>();
        public List<ClassMeeting> list_class_aux = new List<ClassMeeting>();
        private List<Classlist> clase_aux;
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
                                if (section.Id == classMeeting.Section.Id)
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
    }
}