using ARAcademy.common;
using ARAcademy.common.entities;
using ARAcademy.model.section;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ARAcademy.controller.section
{
    public class ReadAllSectionCommand : Command
    {
        private List<Section> sections;

        public List<Section> Sections { get => sections; set => sections = value; }

        public override void Execute()
        {
            DAOSection daoSection = new DAOSection();
            sections = daoSection.ReadAllSections();
        }
    }
}