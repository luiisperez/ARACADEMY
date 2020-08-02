using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ARAcademy.common.entities
{
    public class Topic : Entity
    {
        private int id;
        private String name;
        private Section section;

        public Topic()
        {
        }

        public Topic(int id, string name, Section section)
        {
            this.id = id;
            this.name = name;
            this.section = section;
        }

        public int Id { get => id; set => id = value; }
        public string Name { get => name; set => name = value; }
        public Section Section { get => section; set => section = value; }
    }
}