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
        private List<Classlist> classlist;

        public ReadClasslistCommand(List<Classlist> classlist)
        {
            this.classlist = classlist;
        }

        public List<Classlist> Classlist { get => classlist; set => classlist = value; }

        public override void Execute()
        {
            DAOClasslist daoClasslist = new DAOClasslist();
            classlist = daoClasslist.ReadClasslist(classlist);
        }
    }
}