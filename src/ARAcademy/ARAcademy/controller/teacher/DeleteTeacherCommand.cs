﻿using ARAcademy.common;
using ARAcademy.model.teacher;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ARAcademy.controller.teacher
{
    public class DeleteTeacherCommand : Command
    {
        private Teacher teacher;
        private Teacher response;

        public DeleteTeacherCommand(Teacher Teacher)
        {
            this.Teacher = Teacher;
        }

        public Teacher Teacher { get => teacher; set => teacher = value; }

        public override void Execute()
        {
            DAOTeacher daoTeacher = new DAOTeacher();
            Teacher.Code = daoTeacher.DeleteTeacher(Teacher);
        }
    }
}