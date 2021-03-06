﻿using ARAcademy.common;
using ARAcademy.common.entities;
using ARAcademy.controller.document;
using ARAcademy.controller.educate;
using ARAcademy.controller.section;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ARAcademy.site.professor.prof_mat
{
    public partial class prof_mat : System.Web.UI.Page
    {
        private List<Educate> educateList = new List<Educate>();
        private List<Section> sectionList = new List<Section>();
        private Section section_aux;
        private Section section;
        public List<Document> list_doc = new List<Document>();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                try
                {
                    if (Session["Username"] != null && Session["Token"] != null)
                    {
                        Educate educate = new Educate();
                        Teacher teacher = new Teacher();
                        teacher.Email = Session["Username"].ToString();
                        educate.Teacher = teacher;
                        GetSectionsByTeacherCommand cmd = new GetSectionsByTeacherCommand(educate);
                        cmd.Execute();
                        educateList = cmd.EducateList;
                        foreach (Educate educate1 in educateList)
                        {
                            ReadSectionCommand cmd_ = new ReadSectionCommand(educate1.Section);
                            cmd_.Execute();
                            section_aux = new Section();
                            section_aux = cmd_.Section;
                            sectionList.Add(section_aux);
                        }
                        foreach (Section section in sectionList) 
                        {
                            list_section.DataTextField = "Name";
                            list_section.DataValueField = "Id";
                            list_section.DataSource = sectionList;
                            list_section.DataBind();
                        }
                        list_section.Items.Insert(0, new ListItem("Seleccione", ""));
                        list_section.Items[0].Selected = true;
                        list_section.Items[0].Attributes["disabled"] = "disabled";

                }
                    else
                    {
                        Response.Redirect("/site/professor/login.aspx");
                    }
                }
                catch (Exception ex)
                {

                }
            }
        }

        protected void top_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            ImageButton action = (ImageButton)e.CommandSource;
            string actionString = action.ID;
            if (action.ID.Equals("download"))
            {
                try
                {
                    Document document = new Document();
                    string id = ((Label)document_list.Items[e.Item.ItemIndex].FindControl("Id")).Text;
                    document.Id = Int32.Parse(id);
                    ReadDocumentCommand cmd = new ReadDocumentCommand(document);
                    cmd.Execute();
                    string filePath = "C:\\Users\\Karem\\Desktop\\" + cmd.Document.File;
                    FileInfo file = new FileInfo(filePath);
                    if (file.Exists)
                    {
                        Response.ClearContent();
                        Response.AddHeader("Content-Disposition", "attachment; filename=" + file.Name);
                        Response.AddHeader("Content-Length", file.Length.ToString());
                        Response.ContentType = "text/plain";
                        Response.TransmitFile(file.FullName);
                        Response.End();
                    }
                }
                catch (Exception ex)
                {
                }
            }
        }

        protected void document__SelectedIndexChanged(object sender, EventArgs e)
        {
            section = new Section();
            section.Id = Int32.Parse(list_section.SelectedValue);
            ReadAllDocumentByDocumentCommand cmd = new ReadAllDocumentByDocumentCommand(section);
            cmd.Execute();
            list_doc = cmd.Documents;
            foreach (Document document in list_doc)
            {
                document_list.DataSource = list_doc;
                document_list.DataBind();
            }
        }
    }
}
