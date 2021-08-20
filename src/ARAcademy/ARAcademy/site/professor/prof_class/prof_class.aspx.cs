using System;
using ARAcademy.common.entities;
using ARAcademy.controller.payment;
using ARAcademy.controller.section;
using ARAcademy.controller.classmeeting;
using ARAcademy.controller.teacher;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ARAcademy.common;

namespace ARAcademy.site.professor.prof_class
{
    public partial class prof_class : System.Web.UI.Page
    {
        private List<ClassMeeting> list_class = new List<ClassMeeting>();
        private List<ClassMeeting> list_class_aux = new List<ClassMeeting>();
        private Teacher teacher;
        private ClassMeeting clase;
        private ClassMeeting classmeet;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                try
                {
                    if (Session["Username"] != null && Session["Token"] != null)
                    {
                        teacher = new Teacher();
                        teacher.Email = Session["Username"].ToString();
                        ReadAllClassMeetingCommand cmd = new ReadAllClassMeetingCommand();
                        cmd.Execute();
                        list_class = cmd.ClassMeetings;
                        foreach (ClassMeeting classMeeting in list_class)
                        {
                            if (classMeeting.Teacher.Email == Session["Username"].ToString())
                            {

                                list_class_aux.Add(classMeeting);
                                class_data.DataSource = list_class_aux;
                                class_data.DataBind();
                            }
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

        protected void mat_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            ImageButton action = (ImageButton)e.CommandSource;
            string actionString = action.ID;
            if (action.ID.Equals("join"))
            {
                try
                {
                    clase = new ClassMeeting();
                    string date = ((Label)class_data.Items[e.Item.ItemIndex].FindControl("starttime")).Text;
                    clase.StartTime = Convert.ToDateTime(date);
                    if (clase.StartTime.ToShortDateString() == DateTime.Now.ToShortDateString())
                    {
                        string joinurl = ((Label)class_data.Items[e.Item.ItemIndex].FindControl("joinurl")).Text;
                        Response.Redirect(joinurl);
                    }
                    else
                    {
                        ClientScript.RegisterClientScriptBlock(this.GetType(), "random", "alertme()", true);
                    }
                }
                catch (Exception ex)
                {

                }
            }
            else if (action.ID.Equals("cancel"))
            {
                try
                {
                    teacher = new Teacher();
                    classmeet = new ClassMeeting();
                    string id = ((Label)class_data.Items[e.Item.ItemIndex].FindControl("Id")).Text;
                    classmeet.Id = id;
                    teacher.Email = "host@aracademy.com";
                    classmeet.Teacher = teacher;
                    UpdateClassTeacherCommand _cmd_ = new UpdateClassTeacherCommand(classmeet);
                    _cmd_.Execute();
                    ClientScript.RegisterClientScriptBlock(this.GetType(), "random", "alertme_err()", true);
                }
                catch (Exception ex)
                {

                }
            }

        }
    }
}

