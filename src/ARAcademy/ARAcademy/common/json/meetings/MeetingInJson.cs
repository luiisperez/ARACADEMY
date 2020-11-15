using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ARAcademy.common.json.meetings
{
    public class MeetingInJson
    {
        public string uuid { get; set; }
        public string id { get; set; }
        public string host_id { get; set; }
        public string host_email { get; set; }
        public string topic { get; set; }
        public string type { get; set; }
        public string status { get; set; }
        public string start_time { get; set; }
        public string duration { get; set; }
        public string timezone { get; set; }
        public string agenda { get; set; }
        public string created_at { get; set; }
        public string start_url { get; set; }
        public string join_url { get; set; }
        public string password { get; set; }
        public string h323_password { get; set; }
        public string pstn_password { get; set; }
        public string encrypted_password { get; set; }
        public Settings settings { get; set; }

        public class Settings
        {
            public string host_video { get; set; }
            public string participant_video { get; set; }
            public string cn_meeting { get; set; }
            public string in_meeting { get; set; }
            public string join_before_host { get; set; }
            public string mute_upon_entry { get; set; }
            public string watermark { get; set; }
            public string use_pmi { get; set; }
            public string approval_type { get; set; }
            public string audio { get; set; }
            public string auto_recording { get; set; }
            public string enforce_login { get; set; }
            public string enforce_login_domains { get; set; }
            public string alternative_hosts { get; set; }
            public string close_registration { get; set; }
            public string show_share_button { get; set; }
            public string allow_multiple_devices { get; set; }
            public string registrants_confirmation_email { get; set; }
            public string waiting_room { get; set; }
            public string request_permission_to_unmute_participants { get; set; }
            public string registrants_email_notification { get; set; }
            public string meeting_authentication { get; set; }
            public string encryption_type { get; set; }
            public Approved_Or_Denied_Countries_Or_Regions approved_or_denied_countries_or_regions { get; set; }
        }

        public class Approved_Or_Denied_Countries_Or_Regions
        {
            public string enable { get; set; }
        }

    }
}