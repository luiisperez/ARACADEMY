using ARAcademy.common.entities;
using ARAcademy.model.student;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ARAcademy.controller.student
{
    public class ReadAllStudentsCommand : Command
    {
        private List<Student> students;

        public List<Student> Students { get => students; set => students = value; }

        public override void Execute()
        {
            DAOStudent daoStudent = new DAOStudent();
            Students = daoStudent.ReadAllStudents();
        }
    }
}