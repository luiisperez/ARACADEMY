using ARAcademy.common.entities;
using ARAcademy.model.document;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ARAcademy.controller.document
{
    public class ReadAllDocumentByDocumentCommand : Command
    {
        Section section;
        private List<Document> documents;

        public ReadAllDocumentByDocumentCommand(Section section)
        {
            this.section = section;
        }

        public List<Document> Documents { get => documents; set => documents = value; }

        public override void Execute()
        {
            DAODocument daoSection = new DAODocument();
            documents = daoSection.ReadAllDocumentsBySection(section);
        }
    }
}