using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ARAcademy.common.entities
{
    public class Course : Entity
    {
        private String id;
        private String name;
        private String description;
        private Grade grade;

        public Course()
        {
        }

        public Course(String id)
        {
            this.id = id;
        }

        public Course(String id, string name, string description, Grade grade)
        {
            this.id = id;
            this.name = name;
            this.description = description;
            this.grade = grade;
        }

        public String Id { get => id; set => id = value; }
        public string Name { get => name; set => name = value; }
        public string Description { get => description; set => description = value; }
        public Grade Grade { get => grade; set => grade = value; }
    }
}