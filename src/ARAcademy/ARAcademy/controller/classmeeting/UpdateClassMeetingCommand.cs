using ARAcademy.common;
using ARAcademy.common.entities;
using ARAcademy.model.classmeeting;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ARAcademy.controller.classmeeting
{
    public class UpdateClassMeetingCommand : Command
    {
        private ClassMeeting classMeeting;

        public UpdateClassMeetingCommand(ClassMeeting classMeeting)
        {
            this.classMeeting = classMeeting;
        }

        public ClassMeeting ClassMeeting { get => classMeeting; set => classMeeting = value; }

        public override void Execute()
        {
            DAOClassMeeting daoClassMeeting = new DAOClassMeeting();
            classMeeting.Code = daoClassMeeting.UpdateClassMeeting(classMeeting);
        }
    }
}