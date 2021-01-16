using ARAcademy.common;
using ARAcademy.common.entities;
using ARAcademy.controller.educate;
using ARAcademy.controller.teacher;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ARAcademy.site.admin.adm_professor
{
    public partial class list_mod_prof : System.Web.UI.Page
    {
        public Section section;
        public Teacher teacher;
        public Educate educate;
        private List<Section> section_list = new List<Section>();
        private List<Teacher> teacher_list = new List<Teacher>();
        private List<Educate> educateList = new List<Educate>();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                try
                {
                    if (Session["Username"] != null && Session["Token"] != null )
                    {
                        ReadAllTeacherCommand cmd_ = new ReadAllTeacherCommand();
                        cmd_.Execute();
                        teacher_list = cmd_.Teachers;
                        foreach (Teacher teacher in teacher_list)
                        {
                            teacher.Name = teacher.Name + " " + teacher.LastName;
                            list_prof.DataTextField = "Name";
                            list_prof.DataValueField = "Email";
                            list_prof.DataSource = teacher_list;
                            list_prof.DataBind();
                        }

                            list_prof.Items.Insert(0, new ListItem("Seleccione", ""));
                            list_prof.Items[0].Selected = true;
                            list_prof.Items[0].Attributes["disabled"] = "disabled";

                    }
                    else
                    {
                        Response.Redirect("/site/admin/login.aspx");
                    }
                }
                catch (Exception ex)
                {

                }
            }

        }

        protected void sections__SelectedIndexChanged(object sender, EventArgs e)
        {
            Educate educate = new Educate();
            Teacher teacher = new Teacher();
            teacher.Email = list_prof.SelectedValue;
            educate.Teacher = teacher;
            GetSectionsByTeacherCommand cmd = new GetSectionsByTeacherCommand(educate);
            cmd.Execute();
            educateList = cmd.EducateList;
            foreach (Educate educate1 in educateList)
            {
                prof_data.DataSource =  educateList;
                prof_data.DataBind();
            }

         }

        protected void prof_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            ImageButton action = (ImageButton)e.CommandSource;
            string actionString = action.ID;
            if (action.ID.Equals("delete"))
            {
                try
                {
                    string id = ((Label)prof_data.Items[e.Item.ItemIndex].FindControl("id")).Text;
                    educate = new Educate();
                    section = new Section();
                    teacher = new Teacher();
                    educate.Id = Int32.Parse(id);
                    RemoveSectionTeacherCommand cmd = new RemoveSectionTeacherCommand(educate);
                    cmd.Execute();
                    if (educate.Code == 200)
                    {
                        ClientScript.RegisterClientScriptBlock(this.GetType(), "random", "alertme()", true);
                    }
                    else { }
                }
                catch (Exception ex)
                {
                }
            }
            else 
            {
                try
                {
                }
                catch (Exception ex)
                {
                }
            }

        }
    }
}