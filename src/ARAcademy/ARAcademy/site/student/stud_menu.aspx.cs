using ARAcademy.common;
using ARAcademy.common.entities;
using ARAcademy.common.json.meetings;
using ARAcademy.controller.classmeeting;
using ARAcademy.controller.payment;
using ARAcademy.controller.section;
using ARAcademy.controller.topic;
using ARAcademy.model.zoom;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Globalization;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ARAcademy.site.student
{
    public partial class stud_menu : System.Web.UI.Page
    {
        private Section section;
        private Section section_;
        private Teacher teacher;
        public Student student;
        private List<AraPayment> payment;
        private List<Section> sections;
        public List<Topic> topics;
        public Topic topic;
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
                        student.Email = Session["Username"].ToString();
                        ReadAllPaymentByStudentCommand cmd_ = new ReadAllPaymentByStudentCommand(student);
                        cmd_.Execute();
                        payment = cmd_.Payments;
                        foreach (AraPayment araPayment in payment)
                        {
                            section = new Section();
                            section.Id = araPayment.Section.Id;
                            ReadSectionCommand cmd = new ReadSectionCommand(section);
                            cmd.Execute();
                            sections.Add(cmd.Section);
                        }

                        foreach (Section section in sections)
                        {
                            list_section.DataTextField = "Name";
                            list_section.DataValueField = "Id";
                            list_section.DataSource = sections;
                            list_section.DataBind();
                        }

                        list_section.Items.Insert(0, new ListItem("Seleccione", ""));
                        list_section.Items[0].Selected = true;
                        list_section.Items[0].Attributes["disabled"] = "disabled";

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
                        for (i=0; i < list_class_aux.Count; i++)
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
        ClientScript.RegisterClientScriptBlock(this.GetType(), "random", "start()", true);
        }

        protected void topic__SelectedIndexChanged(object sender, EventArgs e)
        {

            Section section = new Section();
            section.Id = Int32.Parse(list_section.SelectedValue);
            section.Name = list_section.DataTextField;
            ReadAllTopicByTopicCommand cmd = new ReadAllTopicByTopicCommand(section);
            cmd.Execute();
            topics = cmd.Topics;
            foreach (Topic topic in topics)
            {
                list_topics.DataTextField = "Name";
                list_topics.DataValueField = "Id";
                list_topics.DataSource = topics;
                list_topics.DataBind();
            }

            list_topics.Items.Insert(0, new ListItem("Seleccione", ""));
            list_topics.Items[0].Selected = true;
            list_topics.Items[0].Attributes["disabled"] = "disabled";

            if (list_topics.Items.Count > 0)
            {
                list_topics.Enabled = true;
            }
            else
            {
                list_topics.Enabled = false;
            }
        }

        protected void Create_Class (object sender, EventArgs e)
        {
            topic = new Topic();
            topic.Id = Int32.Parse(list_topics.SelectedValue);
            ReadTopicCommand cmd_ = new ReadTopicCommand(topic);
            cmd_.Execute();
            topic = cmd_.Topic;
            MeetingInJson meetingInJson = ZoomAPI.CreateMeeting( topic.Name , "2021-11-15T20:15:00"); //LLAMADA DE EJEMPLO
            DateTime startTime = DateTime.Parse(fec_ini.Value, CultureInfo.GetCultureInfo("en-US"));
            DateTime hourTime = DateTime.Parse(Hora.Value, System.Globalization.CultureInfo.CurrentCulture);
            startTime = Convert.ToDateTime(startTime.ToShortDateString() + " " + hourTime.TimeOfDay);
            DateTime createdAt = DateTime.Now;
            section = new Section();
            section.Id = Int32.Parse(list_section.SelectedValue);
            teacher = new Teacher();
            teacher.Email = "luisprueba@gmail.com";
            ClassMeeting cm = new ClassMeeting(meetingInJson.id, meetingInJson.uuid, meetingInJson.host_id,
                                               meetingInJson.host_email, meetingInJson.topic, 1,
                                               meetingInJson.status, startTime, Int32.Parse(meetingInJson.duration),
                                               meetingInJson.timezone, meetingInJson.agenda, createdAt, meetingInJson.start_url,
                                               meetingInJson.join_url, meetingInJson.password, meetingInJson.h323_password, meetingInJson.pstn_password,
                                               meetingInJson.encrypted_password, "Clase Creada", section, teacher);
            CreateClassMeetingCommand cmd = new CreateClassMeetingCommand(cm);
            cmd.Execute();
            if (cmd.ClassMeeting.Code == 200)
            {
                ClientScript.RegisterClientScriptBlock(this.GetType(), "random", "alertme_succ()", true);
                listado = new Classlist( meetingInJson, student);
                student = new Student();
                classmeet = new ClassMeeting();
                classmeet.Id = meetingInJson.id;
                student.Email = Session["Username"].ToString();
                listado.Student = student;
                listado.ClassMeeting = classmeet;
                CreateClasslistCommand _cmd = new CreateClasslistCommand(listado);
                _cmd.Execute();
                // PENDIENTE PARA RESTAR CLASE RESTANTE
                payment = new List<AraPayment>();
                ReadAllPaymentByStudentCommand _cmd_ = new ReadAllPaymentByStudentCommand(student);
                _cmd_.Execute();
                payment = _cmd_.Payments;
                foreach (AraPayment Payment in payment)
                {

                    if (Payment.Section.Id == Int32.Parse(list_section.SelectedValue))
                    {
                        Payment.Id = Payment.Id;
                        Payment.RemainingClasses = Payment.RemainingClasses - 1;
                        UpdateRemainingClassesCommand __cmd_ =  new UpdateRemainingClassesCommand(Payment);
                        __cmd_.Execute();
                    }
                }
            //Response.Redirect("stud_menu.aspx");
            }
            else
            {
                ClientScript.RegisterClientScriptBlock(this.GetType(), "random", "alertme()", true);
            }


            //PastMeetingDetails pastMeetingDetails = ZoomAPI.GetPastMeetingDetails("F8FWJVwPRZiheBjSBBbX4g=="); //LLAMADA DE EJEMPLO
            //Response.Redirect(meetingInJson.join_url);
        }
    }
}