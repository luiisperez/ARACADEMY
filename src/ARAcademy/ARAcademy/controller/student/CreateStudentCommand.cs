using ARAcademy.common.entities;
using ARAcademy.model.student;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ARAcademy.controller.student
{
    public class CreateStudentCommand : Command
    {
        private Student student;

        public CreateStudentCommand(Student student)
        {
            this.Student = student;
        }

        public Student Student { get => student; set => student = value; }

        public override void Execute()
        {
            DAOStudent daoStudent = new DAOStudent();
            Student.Code = daoStudent.CreateStudent(Student);
        }
    }
}