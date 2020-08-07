using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ARAcademy.common.entities
{
    public class Section : Entity
    {
        private int id;
        private String name;
        private Double amount;
        private String description;
        private Course course;

        public Section()
        {
        }

        public Section(int id, string name, double amount, string description, Course course)
        {
            this.id = id;
            this.name = name;
            this.amount = amount;
            this.description = description;
            this.course = course;
        }

        public int Id { get => id; set => id = value; }
        public string Name { get => name; set => name = value; }
        public double Amount { get => amount; set => amount = value; }
        public string Description { get => description; set => description = value; }
        public Course Course { get => course; set => course = value; }
    }
}