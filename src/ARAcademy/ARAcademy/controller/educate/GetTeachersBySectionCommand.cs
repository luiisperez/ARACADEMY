using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using ARAcademy.common.entities;
using ARAcademy.model.educate;

namespace ARAcademy.controller.educate
{
    public class GetTeachersBySectionCommand : Command
    {
        private Educate educate;
        private List<Educate> educateList;

        public GetTeachersBySectionCommand(Educate educate)
        {
            this.educate = educate;
        }

        public Educate Educate { get => educate; set => educate = value; }
        public List<Educate> EducateList { get => educateList; set => educateList = value; }

        public override void Execute()
        {
            DAOEducate daoEducate = new DAOEducate();
            this.EducateList = daoEducate.GetTeacherBySection(educate);
        }
    }
}