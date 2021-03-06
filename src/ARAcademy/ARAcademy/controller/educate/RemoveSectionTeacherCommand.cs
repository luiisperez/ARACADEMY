﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using ARAcademy.common.entities;
using ARAcademy.model.educate;

namespace ARAcademy.controller.educate
{
    public class RemoveSectionTeacherCommand : Command
    {
        private Educate educate;

        public RemoveSectionTeacherCommand(Educate educate)
        {
            this.educate = educate;
        }

        public Educate Educate { get => educate; set => educate = value; }

        public override void Execute()
        {
            DAOEducate daoEducate = new DAOEducate();
            this.Educate.Code = daoEducate.RemoveSectionTeacher(educate);
        }
    }
}