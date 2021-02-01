using ARAcademy.common;
using ARAcademy.common.entities;
using ARAcademy.model.classmeeting;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ARAcademy.controller.classmeeting
{
    public class ReadAllClassMeetingCommand : Command
    {
        private List<ClassMeeting> classMeetings;

        public List<ClassMeeting> ClassMeetings { get => classMeetings; set => classMeetings = value; }

        public override void Execute()
        {
            DAOClassMeeting daoClassMeeting = new DAOClassMeeting();
            classMeetings = daoClassMeeting.ReadAllClassMeetings();
        }
    }
}