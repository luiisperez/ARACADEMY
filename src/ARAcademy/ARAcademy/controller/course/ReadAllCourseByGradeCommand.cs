using ARAcademy.common.entities;
using ARAcademy.model.course;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ARAcademy.controller.course
{
    public class ReadAllCourseByGradeCommand : Command
    {
        Grade grade;
        private List<Course> courses;

        public ReadAllCourseByGradeCommand(Grade grade)
        {
            this.grade = grade;
        }

        public List<Course> Courses { get => courses; set => courses = value; }

        public override void Execute()
        {
            DAOCourse daoCourse = new DAOCourse();
            courses = daoCourse.ReadAllCoursesByGrade(grade);
        }
    }
}