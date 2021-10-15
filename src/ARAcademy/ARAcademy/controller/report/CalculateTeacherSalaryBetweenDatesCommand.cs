using ARAcademy.common;
using ARAcademy.model.report;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ARAcademy.controller.report
{
    public class CalculateTeacherSalaryBetweenDatesCommand : Command
    {
        private Teacher teacher;
        DateTime initDate;
        DateTime endDate;
        int salary;

        public CalculateTeacherSalaryBetweenDatesCommand(DateTime initDate, DateTime endDate, Teacher teacher)
        {
            this.initDate = initDate;
            this.endDate = endDate;
            this.teacher = teacher;
        }

        public int Salary { get => salary; set => salary = value; }

        public override void Execute()
        {
            DAOReport daoReport = new DAOReport();
            salary = daoReport.CalculateTeacherSalaryBetweenDates(initDate, endDate, teacher);
        }
    }
}