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

        public TeacherLoginCommand(Teacher teacher)
        {
            this.teacher = teacher;
        }

        public Teacher Teacher { get => teacher; set => teacher = value; }

        public override void Execute()
        {
            DAOTeacher daoTeacher = new DAOTeacher();
            teacher.Code = daoTeacher.LoginTeacher(teacher);
        }
    }
}