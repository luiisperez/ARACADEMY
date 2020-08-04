using ARAcademy.common;
using ARAcademy.common.entities;
using ARAcademy.model.course;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ARAcademy.controller.course
{
    public class ReadAllCourseCommand : Command
    {
        private List<Course> courses;

        public List<Course> Courses { get => courses; set => courses = value; }

        public override void Execute()
        {
            DAOCourse daoCourse = new DAOCourse();
            courses = daoCourse.ReadAllCourses();
        }
    }
}