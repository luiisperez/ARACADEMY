using ARAcademy.common;
using ARAcademy.common.entities;
using ARAcademy.model.document;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ARAcademy.controller.document
{
    public class CreateDocumentCommand : Command
    {
        private Document document;

        public CreateDocumentCommand(Document document)
        {
            this.document = document;
        }

        public Document Document { get => document; set => document = value; }

        public override void Execute()
        {
            DAODocument daoDocument = new DAODocument();
            document.Code = daoDocument.CreateDocument(Document);
        }
    }
}