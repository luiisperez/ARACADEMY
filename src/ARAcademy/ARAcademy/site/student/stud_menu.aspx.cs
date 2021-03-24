using ARAcademy.common;
using ARAcademy.common.entities;
using ARAcademy.common.json.meetings;
using ARAcademy.controller.classmeeting;
using ARAcademy.controller.payment;
using ARAcademy.controller.section;
using ARAcademy.controller.topic;
using ARAcademy.model.zoom;
using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ARAcademy.site.student
{
    public partial class stud_menu : System.Web.UI.Page
    {
        private Section section;
        private Teacher teacher;
        private Student student;
        private List<AraPayment> payment;
        private List<Section> sections;
        private List<Topic> topics;

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
            MeetingInJson meetingInJson = ZoomAPI.CreateMeeting("Test Modular Zoom", "2021-11-15T20:15:00"); //LLAMADA DE EJEMPLO
            DateTime startTime = DateTime.Parse(fec_ini.Value, CultureInfo.GetCultureInfo("en-US"));
            DateTime hourTime = DateTime.Parse(Hora.Value, System.Globalization.CultureInfo.CurrentCulture);
            startTime = Convert.ToDateTime(startTime.ToShortDateString() + " " + hourTime.TimeOfDay);
            DateTime createdAt = new DateTime();
            section = new Section();
            section.Id = 8;
            teacher = new Teacher();
            teacher.Email = "rgonzales@aracademy.com";
            ClassMeeting cm = new ClassMeeting(meetingInJson.id, meetingInJson.uuid, meetingInJson.host_id,
                                               meetingInJson.host_email, meetingInJson.topic, 1,
                                               meetingInJson.status, startTime, Int32.Parse(meetingInJson.duration),
                                               meetingInJson.timezone, meetingInJson.agenda, createdAt, meetingInJson.start_url,
                                               meetingInJson.join_url, meetingInJson.password, meetingInJson.h323_password, meetingInJson.pstn_password,
                                               meetingInJson.encrypted_password, "Malo", section, teacher);
            CreateClassMeetingCommand cmd = new CreateClassMeetingCommand(cm);
            cmd.Execute();


            //PastMeetingDetails pastMeetingDetails = ZoomAPI.GetPastMeetingDetails("F8FWJVwPRZiheBjSBBbX4g=="); //LLAMADA DE EJEMPLO
            //Response.Redirect(meetingInJson.join_url);
        }
    }
}