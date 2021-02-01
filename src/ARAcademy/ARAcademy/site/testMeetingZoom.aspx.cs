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

namespace ARAcademy.site
{
    public partial class testMeetingZoom : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            MeetingInJson meetingInJson = ZoomAPI.CreateMeeting("Test Modular Zoom", "2020-11-15T20:15:00"); //LLAMADA DE EJEMPLO
            DateTime startTime = new DateTime();
            DateTime createdAt = new DateTime();
            ClassMeeting cm = new ClassMeeting(meetingInJson.id, meetingInJson.uuid, meetingInJson.host_id,
                                               meetingInJson.host_email, meetingInJson.topic, Int32.Parse(meetingInJson.topic),
                                               meetingInJson.status, startTime, Int32.Parse(meetingInJson.duration), 
                                               meetingInJson.timezone, meetingInJson.agenda, createdAt, meetingInJson.start_url, 
                                               meetingInJson.join_url, meetingInJson.password, meetingInJson.h323_password, meetingInJson.pstn_password, 
                                               meetingInJson.encrypted_password, "", null, null);
            
            
            PastMeetingDetails pastMeetingDetails = ZoomAPI.GetPastMeetingDetails("F8FWJVwPRZiheBjSBBbX4g=="); //LLAMADA DE EJEMPLO
            Response.Redirect(meetingInJson.join_url);
        }
    }
}