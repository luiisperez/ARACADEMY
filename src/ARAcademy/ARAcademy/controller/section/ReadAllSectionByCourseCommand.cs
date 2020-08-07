using ARAcademy.common.entities;
using ARAcademy.model.section;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ARAcademy.controller.section
{
    public class ReadAllSectionByCourseCommand : Command
    {
        Course course;
        private List<Section> sections;

        public ReadAllSectionByCourseCommand(Course course)
        {
            this.course = course;
        }

        public List<Section> Sections { get => sections; set => sections = value; }

        public override void Execute()
        {
            DAOSection daoCourse = new DAOSection();
            sections = daoCourse.ReadAllSectionsByCourse(course);
        }
    }
}