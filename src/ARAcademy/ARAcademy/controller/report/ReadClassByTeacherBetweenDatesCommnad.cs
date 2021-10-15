using ARAcademy.common;
using ARAcademy.common.entities;
using ARAcademy.model.report;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ARAcademy.controller.report
{
    public class ReadClassByTeacherBetweenDatesCommnad : Command
    {
        DateTime initDate;
        DateTime endDate;
        Teacher teacher;
        private List<ClassMeeting> classMeetings;

        public ReadClassByTeacherBetweenDatesCommnad(DateTime initDate, DateTime endDate, Teacher teacher)
        {
            this.initDate = initDate;
            this.endDate = endDate;
            this.teacher = teacher;
        }

        public List<ClassMeeting> ClassMeetings { get => classMeetings; set => classMeetings = value; }

        public override void Execute()
        {
            DAOReport daoReport = new DAOReport();
            classMeetings = daoReport.ReadClassByTeacherBetweenDates(initDate, endDate, teacher);
        }
    }
}