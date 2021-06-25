using ARAcademy.controller.document;
using System;
using System.Collections.Generic;
using System.Web.UI;
using System.Web.UI.WebControls;
using ARAcademy.common.entities;
using ARAcademy.controller.section;
using ARAcademy.controller.payment;
using System.IO;

namespace ARAcademy.site.student
{
    public partial class est_content : System.Web.UI.Page
    {
        public Course course = new Course();
        public Section section = new Section();
        public Student student = new Student();
        public List<Course> course_list = new List<Course>();
        public List<Document> list_doc = new List<Document>();
        private List<AraPayment> payment_list = new List<AraPayment>();
        private List<Section> section_list = new List<Section>();
        private List<Section> section_list_aux = new List<Section>();
        private List<Section> section_list_aux2 = new List<Section>();
        public Section section2 = new Section();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                try
                {
                    if (Session["Username"] != null && Session["Token"] != null)
                    {
                        student = new Student();
                        student.Email = Session["Username"].ToString();
                        ReadAllPaymentByStudentCommand cmd = new ReadAllPaymentByStudentCommand(student);
                        cmd.Execute();
                        payment_list = cmd.Payments;
                        foreach (AraPayment arapayment in payment_list)
                        {
                            section = new Section();
                            section.Id = arapayment.Section.Id;
                            ReadSectionCommand cmd_ = new ReadSectionCommand(section);
                            cmd_.Execute();
                            section2 = new Section();
                            section2 = cmd_.Section;
                            section_list.Add(section2);
                        }
                        foreach (Section section in section_list)
                        {
                            list_section.DataTextField = "Name";
                            list_section.DataValueField = "Id";
                            list_section.DataSource = section_list;
                            list_section.DataBind();
                        }
                        list_section.Items.Insert(0, new ListItem("Seleccione", ""));
                        list_section.Items[0].Selected = true;
                        list_section.Items[0].Attributes["disabled"] = "disabled";
                    }
                    else
                    {
                        Response.Redirect("/site/student/login.aspx");
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