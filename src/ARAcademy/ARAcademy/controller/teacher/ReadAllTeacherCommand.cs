using ARAcademy.common;
using ARAcademy.model.teacher;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ARAcademy.controller.teacher
{
    public class ReadAllTeacherCommand : Command
    {
        private List<Teacher> teachers;

        public List<Teacher> Teachers { get => teachers; set => teachers = value; }

        public override void Execute()
        {
            DAOTeacher daoTeacher = new DAOTeacher();
            Teachers = daoTeacher.ReadAllTeachers();
        }
    }
}