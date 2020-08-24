using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ARAcademy.common.entities
{
    public class Educate : Entity
    {
        private int id;
        private Section section;
        private Teacher teacher;

        public Educate()
        {
        }

        public Educate(int id)
        {
            this.id = id;
        }

        public Educate(int id, Section section, Teacher teacher)
        {
            this.id = id;
            this.section = section;
            this.teacher = teacher;
        }
        public int Id { get => id; set => id = value; }
        public Section Section { get => section; set => section = value; }
        public Teacher Teacher { get => teacher; set => teacher = value; }
    }
}