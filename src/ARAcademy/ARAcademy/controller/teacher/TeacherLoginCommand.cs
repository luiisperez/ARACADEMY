using ARAcademy.common;
using ARAcademy.model.adminmanagement;
using ARAcademy.model.teacher;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;

namespace ARAcademy.controller.teacher
{
    public class TeacherLoginCommand : Command
    {
        private Teacher teacher;

        public TeacherLoginCommand(Teacher Teacher)
        {
            this.Teacher = Teacher;
        }

        public Teacher Teacher { get => Teacher; set => Teacher = value; }

        public override void Execute()
        {
            DAOTeacher daoTeacher = new DAOTeacher();
            Teacher.Code = daoTeacher.LoginTeacher(Teacher);
        }
    }
}