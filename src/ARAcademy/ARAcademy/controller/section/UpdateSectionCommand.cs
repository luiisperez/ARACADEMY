using ARAcademy.common;
using ARAcademy.common.entities;
using ARAcademy.model.section;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ARAcademy.controller.section
{
    public class UpdateSectionCommand : Command
    {
        private Section section;

        public UpdateSectionCommand(Section section)
        {
            this.section = section;
        }

        public Section Section { get => section; set => section = value; }

        public override void Execute()
        {
            DAOSection daoSection = new DAOSection();
            section.Code = daoSection.UpdateSection(section);
        }
    }
}