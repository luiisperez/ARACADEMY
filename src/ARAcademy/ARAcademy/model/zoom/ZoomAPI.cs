using ARAcademy.common.json.meetings;
using Newtonsoft.Json;
using RestSharp;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ARAcademy.model.zoom
{
    public class ZoomAPI
    {
        private static Random random = new Random();
        private static string passwordGenerator(int length)
        {
            const string chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
            return new string(Enumerable.Repeat(chars, length)
              .Select(s => s[random.Next(s.Length)]).ToArray());
        }

        public static MeetingInJson CreateMeeting(String topic, String dateTime)
        {
            var client = new RestClient("https://api.zoom.us/v2/users/" + ZoomResource.User + "/meetings");
            var request = new RestRequest(Method.POST);
            request.AddHeader("content-type", ZoomResource.ContentType);
            request.AddHeader("authorization", "Bearer " + ZoomResource.Authorization);
            MeetingOutJson meetingOutJson = new MeetingOutJson();
            meetingOutJson.topic = topic;
            meetingOutJson.type = "2";
            meetingOutJson.start_time = dateTime;
            meetingOutJson.duration = ZoomResource.Duration;
            meetingOutJson.timezone = "Europe";
            meetingOutJson.password = passwordGenerator(8);
            meetingOutJson.agenda = topic;
            meetingOutJson.settings.join_before_host = "true";
            meetingOutJson.recurrence.type = "2";
            String jsonMeeting = JsonConvert.SerializeObject(meetingOutJson);
            request.AddParameter(ZoomResource.ContentType, jsonMeeting, ParameterType.RequestBody);
            IRestResponse response = client.Execute(request);
            MeetingInJson meeting = JsonConvert.DeserializeObject<MeetingInJson>(response.Content);
            return meeting;
        }

        public static PastMeetingDetails GetPastMeetingDetails(String uuidMeeting)
        {
            var client = new RestClient("https://api.zoom.us/v2/past_meetings/" + uuidMeeting);
            var request = new RestRequest(Method.GET);
            request.AddHeader("authorization", "Bearer " + ZoomResource.Authorization);
            IRestResponse response = client.Execute(request);
            PastMeetingDetails meetingDetails = JsonConvert.DeserializeObject<PastMeetingDetails>(response.Content);
            return meetingDetails;
        }
    }
}