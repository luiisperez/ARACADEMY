using ARAcademy.common;
using ARAcademy.common.entities;
using ARAcademy.model.document;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ARAcademy.controller.document
{
    public class ReadAllDocumentCommand : Command
    {
        private List<Document> documents;

        public List<Document> Documents { get => documents; set => documents = value; }

        public override void Execute()
        {
            DAODocument daoDocument = new DAODocument();
            documents = daoDocument.ReadAllDocuments();
        }
    }
}