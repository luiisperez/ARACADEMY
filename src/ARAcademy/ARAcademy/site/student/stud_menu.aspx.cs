using ARAcademy.common;
using ARAcademy.common.entities;
using ARAcademy.common.json.meetings;
using ARAcademy.controller.classmeeting;
using ARAcademy.controller.payment;
using ARAcademy.controller.section;
using ARAcademy.controller.topic;
using ARAcademy.model.zoom;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Globalization;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ARAcademy.site.student
{
    public partial class stud_menu : System.Web.UI.Page
    {
        private Section section;
        private Section section_;
        private Teacher teacher;
        public Student student;
        private List<AraPayment> payment;
        private List<Section> sections;
        public List<Topic> topics;
        public Topic topic;
        private Classlist listado;
        private ClassMeeting classmeet;
        private AraPayment arapayment;
        private List<Classlist> class_list;
        private List<ClassMeeting> list_class = new List<ClassMeeting>();
        public List<ClassMeeting> list_class_aux = new List<ClassMeeting>();
        public List<ClassMeeting> class_aux = new List<ClassMeeting>();
        private List<Classlist> clase_aux;
        public string jsonData;
        public string myData;
        public List<object> list_data;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                try
                {
                    if (Session["Username"] != null && Session["Token"] != null)
                    {
                        student = new Student();
                        sections = new List<Section>();
                        student.Email = Session["Username"].ToString();
                        ReadAllPaymentByStudentCommand cmd_ = new ReadAllPaymentByStudentCommand(student);
                        cmd_.Execute();
                        payment = cmd_.Payments;
                        foreach (AraPayment araPayment in payment)
                        {
                            section = new Section();
                            section.Id = araPayment.Section.Id;
                            ReadSectionCommand cmd = new ReadSectionCommand(section);
                            cmd.Execute();
                            sections.Add(cmd.Section);
                        }

                        ReadAllClassMeetingCommand _cmd_ = new ReadAllClassMeetingCommand();
                        _cmd_.Execute();
                        list_class = _cmd_.ClassMeetings;
                        foreach (Section section in sections)
                        {
                            foreach (ClassMeeting classMeeting in list_class)
                            {
                                if (section.Id == classMeeting.Section.Id)
                                {
                                    list_class_aux.Add(classMeeting);
                                }
                            }
                        }

                        foreach (ClassMeeting classMeeting1 in list_class_aux)
                        {
                            ReadClasslistCommand cmd2 = new ReadClasslistCommand(classMeeting1);
                            cmd2.Execute();
                            class_list = cmd2.Classlist;
                            if (class_list.Count == 0 )
                            {
                                class_aux.Add(classMeeting1);
                            }
                        }
                        class_data.DataSource = class_aux;
                        class_data.DataBind();
                        int i;
                        list_data = new List<object>();
                        for (i = 0; i < class_aux.Count; i++)
                        {
                            var myData = new
                            {
                                title = list_class_aux[i].Agenda,
                                start = new DateTime(list_class_aux[i].StartTime.Year, list_class_aux[i].StartTime.Month, list_class_aux[i].StartTime.Day).ToString("yyyy-MM-dd")
                            };

                            list_data.Add(myData);
                        }
                        //Tranform it to Json object
                        jsonData = JsonConvert.SerializeObject(list_data);
                    }
                    else
                    {
                        Response.Redirect("login.aspx");
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
            if (action.ID.Equals("join"))
            {
                try
                {
                    student = new Student();
                    classmeet = new ClassMeeting();
                    listado = new Classlist();
                    Section section = new Section();
                    string id = ((Label)class_data.Items[e.Item.ItemIndex].FindControl("Id")).Text;
                    section.Id = Int32.Parse(((Label)class_data.Items[e.Item.ItemIndex].FindControl("section")).Text);
                    classmeet.Id = id;
                    student.Email = Session["Username"].ToString();
                    listado.ClassMeeting = classmeet;
                    listado.Student = student;
                    payment = new List<AraPayment>();
                    ReadAllPaymentByStudentCommand _cmd__ = new ReadAllPaymentByStudentCommand(student);
                    _cmd__.Execute();
                    payment = _cmd__.Payments;
                    bool flag = false;
                    foreach (AraPayment Payment in payment)
                    {
                        if (Payment.Section.Id == section.Id && Payment.RemainingClasses > 0)
                        {
                            Payment.Id = Payment.Id;
                            Payment.RemainingClasses = Payment.RemainingClasses - 1;
                            UpdateRemainingClassesCommand __cmd_ = new UpdateRemainingClassesCommand(Payment);
                            __cmd_.Execute();
                            CreateClasslistCommand _cmd_ = new CreateClasslistCommand(listado);
                            _cmd_.Execute();
                            flag = true;
                        }
                    }
                    if (flag == true)
                    {
                        ClientScript.RegisterClientScriptBlock(this.GetType(), "random", "alertme_succ()", true);
                    }
                    else
                    {
                        ClientScript.RegisterClientScriptBlock(this.GetType(), "random", "alertme_err_class()", true);
                    }
                }
                catch (Exception ex)
                {
                }
            }
            else if (action.ID.Equals("modify"))
            {
                try
                {

                }
                catch (Exception ex)
                {

                }
            }

        }

        protected void create_class(object sender, EventArgs e)
        {
            Response.Redirect("create_class.aspx");
        }
    }
}