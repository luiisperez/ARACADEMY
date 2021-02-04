using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ARAcademy.common.entities
{
    public class Classlist : Entity
    {
        private int id;
        private DateTime listDate;
        private ClassMeeting classMeeting;
        private Student student;

        public Classlist() {}

        public Classlist(int id)
        {
            this.id = id;
        }

        public Classlist(int id, DateTime listDate, ClassMeeting classMeeting, Student student)
        {
            this.id = id;
            this.listDate = listDate;
            this.classMeeting = classMeeting;
            this.student = student;
        }

        public int Id { get => id; set => id = value; }
        public DateTime ListDate { get => listDate; set => listDate = value; }
        public ClassMeeting ClassMeeting { get => classMeeting; set => classMeeting = value; }
        public Student Student { get => student; set => student = value; }
    }
}