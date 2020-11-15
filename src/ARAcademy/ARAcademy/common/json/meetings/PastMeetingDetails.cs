using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ARAcademy.common.json.meetings
{
    public class PastMeetingDetails
    {
        public string uuid { get; set; }
        public string id { get; set; }
        public string host_id { get; set; }
        public string type { get; set; }
        public string topic { get; set; }
        public string user_name { get; set; }
        public string user_email { get; set; }
        public string start_time { get; set; }
        public string end_time { get; set; }
        public string duration { get; set; }
        public string total_minutes { get; set; }
        public string participants_count { get; set; }
        public string dept { get; set; }
    }
}