using ARAcademy.common;
using ARAcademy.common.entities;
using ARAcademy.model.classlist;
using ARAcademy.model.classmeeting;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ARAcademy.controller.classmeeting
{
    public class ReadClasslistCommand : Command
    {
        private ClassMeeting classMeeting;
        private List<Classlist> classlist;

        public ReadClasslistCommand(ClassMeeting classMeeting)
        {
            this.classMeeting = classMeeting;
        }

        public List<Classlist> Classlist { get => classlist; set => classlist = value; }

        public override void Execute()
        {
            DAOClasslist daoClasslist = new DAOClasslist();
            classlist = daoClasslist.ReadClasslist(classMeeting);
        }
    }
}