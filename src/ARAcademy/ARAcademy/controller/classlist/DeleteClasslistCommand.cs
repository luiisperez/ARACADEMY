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
    public class DeleteClasslistCommand : Command
    {
        private Classlist classlist;
        private Classlist response;

        public DeleteClasslistCommand(Classlist classlist)
        {
            this.classlist = classlist;
        }

        public Classlist Classlist { get => classlist; set => classlist = value; }

        public override void Execute()
        {
            DAOClasslist daoClasslist = new DAOClasslist();
            classlist.Code = daoClasslist.DeleteClasslist(classlist);
        }
    }
}