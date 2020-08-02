using ARAcademy.common;
using ARAcademy.common.entities;
using ARAcademy.model.course;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ARAcademy.controller.teaccourseher
{
    public class ReadCourseCommand : Command
    {
        private Course course;

        public ReadCourseCommand(Course course)
        {
            this.course = course;
        }

        public Course Course { get => course; set => course = value; }

        public override void Execute()
        {
            DAOCourse daoCourse = new DAOCourse();
            course = daoCourse.ReadCourse(course);
        }
    }
}