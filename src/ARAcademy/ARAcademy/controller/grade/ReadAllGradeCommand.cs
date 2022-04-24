using ARAcademy.common;
using ARAcademy.common.entities;
using ARAcademy.model.grade;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ARAcademy.controller.grade
{
    public class ReadAllGradeCommand : Command
    {
        private List<Grade> grades;

        public List<Grade> Grades { get => grades; set => grades = value; }

        public override void Execute()
        {
            DAOOffer daoGrade = new DAOOffer();
            grades = daoGrade.ReadAllGrades();
        }
    }
}