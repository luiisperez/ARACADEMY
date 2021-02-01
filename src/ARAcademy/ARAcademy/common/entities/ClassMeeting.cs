using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ARAcademy.common.entities
{
    public class ClassMeeting : Entity
    {
		private String id;
        private String uuId;
        private String hostId;
        private String hostEmail;
        private String topic;
        private int type;
        private String status;
        private DateTime startTime;
        private int duration;
        private String timezone;
        private String agenda;
        private DateTime createdAt;
        private String startUrl;
        private String joinUrl;
        private String password;
        private String h323Password;
        private String pstnPassword;
        private String encryptedPassword;
        private String comment;
        private Section section;
        private Teacher teacher;

        public ClassMeeting( )
        {
        }

        public ClassMeeting(string id, string uuId, string hostId, string hostEmail, string topic, int type, 
            string status, DateTime startTime, int duration, string timezone, string agenda, DateTime createdAt,
            string startUrl, string joinUrl, string password, string h323Password, string pstnPassword, 
            string encryptedPassword, string comment, Section section, Teacher teacher)
        {
            this.id = id;
            this.uuId = uuId;
            this.hostId = hostId;
            this.hostEmail = hostEmail;
            this.topic = topic;
            this.type = type;
            this.status = status;
            this.startTime = startTime;
            this.duration = duration;
            this.timezone = timezone;
            this.agenda = agenda;
            this.createdAt = createdAt;
            this.startUrl = startUrl;
            this.joinUrl = joinUrl;
            this.password = password;
            this.h323Password = h323Password;
            this.pstnPassword = pstnPassword;
            this.encryptedPassword = encryptedPassword;
            this.comment = comment;
            this.section = section;
            this.teacher = teacher;
        }

        public string Id { get => id; set => id = value; }
        public string UuId { get => uuId; set => uuId = value; }
        public string HostId { get => hostId; set => hostId = value; }
        public string HostEmail { get => hostEmail; set => hostEmail = value; }
        public string Topic { get => topic; set => topic = value; }
        public int Type { get => type; set => type = value; }
        public string Status1 { get => status; set => status = value; }
        public DateTime StartTime { get => startTime; set => startTime = value; }
        public int Duration { get => duration; set => duration = value; }
        public string Timezone { get => timezone; set => timezone = value; }
        public string Agenda { get => agenda; set => agenda = value; }
        public DateTime CreatedAt { get => createdAt; set => createdAt = value; }
        public string StartUrl { get => startUrl; set => startUrl = value; }
        public string JoinUrl { get => joinUrl; set => joinUrl = value; }
        public string Password { get => password; set => password = value; }
        public string H323Password { get => h323Password; set => h323Password = value; }
        public string PstnPassword { get => pstnPassword; set => pstnPassword = value; }
        public string EncryptedPassword { get => encryptedPassword; set => encryptedPassword = value; }
        public string Comment { get => comment; set => comment = value; }
        public Section Section { get => section; set => section = value; }
        public Teacher Teacher { get => teacher; set => teacher = value; }
    }
}