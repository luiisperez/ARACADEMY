using ARAcademy.common.entities;
using ARAcademy.model.report;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ARAcademy.controller.report
{
    public class ReadAllStudentBySectionBetweenDatesCommand : Command
    {
        DateTime initDate;
        DateTime endDate;
        Section section;
        private List<Student> students;

        public ReadAllStudentBySectionBetweenDatesCommand(DateTime initDate, DateTime endDate, Section section)
        {
            this.initDate = initDate;
            this.endDate = endDate;
            this.section = section;
        }

        public List<Student> Students { get => students; set => students = value; }

        public override void Execute()
        {
            DAOReport daoReport = new DAOReport();
            students = daoReport.ReadAllStudentBySectionBetweenDates(initDate, endDate, section);
        }

        public int CountTotalStudents()
        {
            return students.Count();
        }
    }
}
