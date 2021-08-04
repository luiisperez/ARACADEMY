using ARAcademy.common.entities;
using ARAcademy.controller.payment;
using ARAcademy.controller.section;
using ARAcademy.controller.classmeeting;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ARAcademy.site.student
{
    public partial class mis_clases : System.Web.UI.Page
    {
        private List<ClassMeeting> list_class = new List<ClassMeeting>();
        private List<ClassMeeting> list_class_aux = new List<ClassMeeting>();
        private List<Classlist> clase_aux;
        private Classlist classlist;
        private Student student;
        private ClassMeeting clase;
        private List<AraPayment> payment;
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
                        ReadAllClassMeetingCommand cmd = new ReadAllClassMeetingCommand();
                        cmd.Execute();
                        list_class = cmd.ClassMeetings;
                        foreach (ClassMeeting classMeeting in list_class)
                        {
                            ReadClasslistCommand cmd_ = new ReadClasslistCommand(classMeeting);
                            cmd_.Execute();
                            clase_aux = cmd_.Classlist;
                            foreach (Classlist classlist in clase_aux)
                            {
                                if ( classlist.Student.Email == Session["Username"].ToString())
                                {
                                    list_class_aux.Add(classMeeting);
                                    class_data.DataSource = list_class_aux;
                                    class_data.DataBind();
                                }
                            }
                        }
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
                    clase = new ClassMeeting();
                    clase_aux = new List<Classlist>();
                    string id = ((Label)class_data.Items[e.Item.ItemIndex].FindControl("Id")).Text;
                    clase.Id = id;
                    ReadClasslistCommand cmd__ = new ReadClasslistCommand(clase);
                    cmd__.Execute();
                    clase_aux = cmd__.Classlist;
                    foreach (Classlist classlist in clase_aux) 
                    {
                        if (classlist.Student.Email == Session["Username"].ToString())
                        {
                            DeleteClasslistCommand __cmd__ = new DeleteClasslistCommand(classlist);
                            __cmd__.Execute();
                        }
                    }
                    student = new Student();
                    student.Email = Session["Username"].ToString();
                    string sectionid = ((Label)class_data.Items[e.Item.ItemIndex].FindControl("sectionId")).Text;
                    payment = new List<AraPayment>();
                    ReadAllPaymentByStudentCommand _cmd_ = new ReadAllPaymentByStudentCommand(student);
                    _cmd_.Execute();
                    payment = _cmd_.Payments;
                    foreach (AraPayment Payment in payment)
                    {

                        if (Payment.Section.Id == Int32.Parse(sectionid))
                        {
                            Payment.Id = Payment.Id;
                            Payment.RemainingClasses = Payment.RemainingClasses + 1;
                            UpdateRemainingClassesCommand __cmd_ = new UpdateRemainingClassesCommand(Payment);
                            __cmd_.Execute();
                        }
                    }
                    ClientScript.RegisterClientScriptBlock(this.GetType(), "random", "alertme_del()", true);
                }
                catch (Exception ex)
                {

                }
            }

        }
    }
}