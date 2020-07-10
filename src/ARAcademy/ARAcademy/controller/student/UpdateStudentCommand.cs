using ARAcademy.common.entities;
using ARAcademy.model.student;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ARAcademy.controller.student
{
    public class UpdateStudentCommand : Command
    {
        private Student student;

        public UpdateStudentCommand(Student student)
        {
            this.Student = student;
        }

        public Student Student { get => student; set => student = value; }

        public override void Execute()
        {
            DAOStudent daoStudent = new DAOStudent();
            Student.Code = daoStudent.UpdateStudent(Student);
        }
    }
}