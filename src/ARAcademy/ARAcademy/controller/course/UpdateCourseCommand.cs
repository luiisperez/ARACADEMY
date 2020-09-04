using ARAcademy.common;
using ARAcademy.common.entities;
using ARAcademy.model.course;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ARAcademy.controller.course
{
    public class UpdateCourseCommand : Command
    {
        private Course course;
        private String oldId;

        public UpdateCourseCommand(Course course, String oldId)
        {
            this.course = course;
            this.oldId = oldId;
        }

        public Course Course { get => course; set => course = value; }
        public string OldId { get => oldId; set => oldId = value; }

        public override void Execute()
        {
            DAOCourse daoCourse = new DAOCourse();
            course.Code = daoCourse.UpdateCourse(course, oldId);
        }
    }
}