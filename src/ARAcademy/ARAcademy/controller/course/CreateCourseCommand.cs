using ARAcademy.common;
using ARAcademy.common.entities;
using ARAcademy.model.course;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ARAcademy.controller.course
{
    public class CreateCourseCommand : Command
    {
        private Course course;

        public CreateCourseCommand(Course course)
        {
            this.course = course;
        }

        public Course Course { get => course; set => course = value; }

        public override void Execute()
        {
            DAOCourse daoCourse = new DAOCourse();
            course.Code = daoCourse.CreateCourse(Course);
        }
    }
}