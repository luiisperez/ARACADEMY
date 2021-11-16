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
        private List<Teacher> teachers = new List<Teacher>();
        DateTime initDate;
        DateTime endDate;

        public CalculateTeacherSalaryBetweenDatesCommand(DateTime initDate, DateTime endDate)
        {
            this.initDate = initDate;
            this.endDate = endDate;
        }

        public List<Teacher> Teachers { get => teachers; set => teachers = value; }

        public override void Execute()
        {
            DAOReport daoReport = new DAOReport();
            teachers = daoReport.CalculateTeacherSalaryBetweenDates(initDate, endDate);
        }
    }
}