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

namespace ARAcademy.site
{
    public partial class testMeetingZoom : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            MeetingInJson meetingInJson = ZoomAPI.CreateMeeting("Test Modular Zoom", "2020-11-15T20:15:00"); //LLAMADA DE EJEMPLO
            PastMeetingDetails pastMeetingDetails = ZoomAPI.GetPastMeetingDetails("F8FWJVwPRZiheBjSBBbX4g=="); //LLAMADA DE EJEMPLO
            Response.Redirect(meetingInJson.join_url);
        }
    }
}