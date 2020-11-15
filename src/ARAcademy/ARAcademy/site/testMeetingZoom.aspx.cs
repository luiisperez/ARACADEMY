using RestSharp;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Newtonsoft.Json;
using ARAcademy.common.json.meetings;

namespace ARAcademy.site
{
    public partial class testMeetingZoom : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var client = new RestClient("https://api.zoom.us/v2/users/bgfa26@gmail.com/meetings");
            var request = new RestRequest(Method.POST);
            request.AddHeader("content-type", "application/json");
            request.AddHeader("authorization", "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJhdWQiOm51bGwsImlzcyI6Ijl1REJWQXdrU0VDMEEtR2FFU3kwT2ciLCJleHAiOjM0OTg0MTExODAsImlhdCI6MTYwNDk0OTgxMn0.maOXn-RRmMXJFawcAMAhEZfWlu6A3QFQln2nORSow58");
            request.AddParameter("application/json", "{\"topic\":\"Test ARACADEMY\",\"type\":\"2\",\"start_time\":\"2020-11-15T20:15:00\",\"duration\":\"120\",\"timezone\":\"Europe\",\"password\":\"pass123\",\"agenda\":\"Test ARACADEMY\",\"settings\":{\"join_before_host\":true}}", ParameterType.RequestBody);
            IRestResponse response = client.Execute(request);
            MeetingInJson meeting = JsonConvert.DeserializeObject<MeetingInJson>(response.Content);
            int i = 3;
            int j = i * 3;
            Response.Redirect(meeting.join_url);
        }
    }
}