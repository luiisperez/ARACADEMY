using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using ARAcademy.common.entities;
using ARAcademy.model.educate;

namespace ARAcademy.controller.educate
{
    public class GetSectionsByTeacherCommand : Command
    {
        private Educate educate;
        private List<Educate> educateList;

        public List<Educate> EducateList { get => educateList; set => educateList = value; }

        public GetSectionsByTeacherCommand(Educate educate)
        {
            this.educate = educate;
        }

        public Educate Educate { get => educate; set => educate = value; }

        public override void Execute()
        {
            DAOEducate daoEducate = new DAOEducate();
            this.EducateList = daoEducate.GetSectionByTeacher(educate);
        }
    }
}