using RestSharp;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Newtonsoft.Json;
using ARAcademy.common.json.meetings;
using ARAcademy.model.zoom;
using ARAcademy.common.entities;
using ARAcademy.controller.classmeeting;
using ARAcademy.common;

namespace ARAcademy.site
{
    public partial class testMeetingZoom : System.Web.UI.Page
    {
        private Section section;
        private Teacher teacher;
        protected void Page_Load(object sender, EventArgs e)
        {
            MeetingInJson meetingInJson = ZoomAPI.CreateMeeting("Test Modular Zoom", "2021-11-15T20:15:00"); //LLAMADA DE EJEMPLO
            DateTime startTime = new DateTime();
            DateTime createdAt = new DateTime();
            section = new Section();
            section.Id = 8;
            teacher = new Teacher();
            teacher.Email = "rgonzales@aracademy.com";
            ClassMeeting cm = new ClassMeeting(meetingInJson.id, meetingInJson.uuid, meetingInJson.host_id,
                                               meetingInJson.host_email, meetingInJson.topic, 1,
                                               meetingInJson.status , startTime, Int32.Parse(meetingInJson.duration), 
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