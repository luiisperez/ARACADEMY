using ARAcademy.common;
using ARAcademy.common.entities;
using ARAcademy.controller.educate;
using System;
using System.Collections.Generic;
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
                            list_section.DataSource = educateList;
                            list_section.DataTextField = "Section";
                            list_section.DataValueField = "Id";
                            list_section.DataBind();
                        }

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
    }
}
}