using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ARAcademy.common.entities;
using ARAcademy.controller.payment;
using ARAcademy.controller.section;
using ARAcademy.controller.student;

namespace ARAcademy.site.student
{
    public partial class pago_stu : System.Web.UI.Page
    {
        public string sec;
        public int j;
        public string sec_2;
        public double monto;
        public Section section;
        public List<Section> CartList = new List<Section>();
        public Student student;
        public Course course;
        public List<Section> section_list = new List<Section>();
        private List<string> ScStrList = new List<string>();
        public string ScStr;
        public List<AraPayment> payment = new List<AraPayment>();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                try
                {
                    if (Session["Username"] != null && Session["Token"] != null)
                    {

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

        protected void course_selected_mate(object sender, EventArgs e)
        {
            student = new Student();
            student.Email = Session["Username"].ToString();
            ReadStudentCommand cmd_ = new ReadStudentCommand(student);
            cmd_.Execute();
            student = cmd_.Student;
            course = new Course();
            course.Id = "Mate" + student.Grade.Id + DateTime.Now.Year.ToString();
            ReadAllSectionByCourseCommand cmd = new ReadAllSectionByCourseCommand(course);
            cmd.Execute();
            section_list = cmd.Sections;
            foreach (Section section in section_list)
            {
                rb_mod.DataSource = section_list;
                rb_mod.DataBind();
            }

            if (rb_mod.Items.Count > 0)
            {
                div_mod.Visible = true;
            }
            else
            {
                div_mod.Visible = false;
            }
            rb_mod = null;
        }
        protected void course_selected_leng(object sender, EventArgs e)
        {
            student = new Student();
            student.Email = Session["Username"].ToString();
            ReadStudentCommand cmd_ = new ReadStudentCommand(student);
            cmd_.Execute();
            student = cmd_.Student;
            course = new Course();
            course.Id = "Leng" + student.Grade.Id + DateTime.Now.Year.ToString();
            ReadAllSectionByCourseCommand cmd = new ReadAllSectionByCourseCommand(course);
            cmd.Execute();
            section_list = cmd.Sections;
            foreach (Section section in section_list)
            {
                rb_mod.DataSource = section_list;
                rb_mod.DataBind();
            }

            if (rb_mod.Items.Count > 0)
            {
                div_mod.Visible = true;
            }
            else
            {
                div_mod.Visible = false;
            }
            rb_mod = null;
        }
        protected void course_selected_ingl(object sender, EventArgs e)
        {
            student = new Student();
            student.Email = Session["Username"].ToString();
            ReadStudentCommand cmd_ = new ReadStudentCommand(student);
            cmd_.Execute();
            student = cmd_.Student;
            course = new Course();
            course.Id = "Ingl" + student.Grade.Id + DateTime.Now.Year.ToString();
            ReadAllSectionByCourseCommand cmd = new ReadAllSectionByCourseCommand(course);
            cmd.Execute();
            section_list = cmd.Sections;
            foreach (Section section in section_list)
            {
                rb_mod.DataSource = section_list;
                rb_mod.DataBind();
            }

            if (rb_mod.Items.Count > 0)
            {
                div_mod.Visible = true;
            }
            else
            {
                div_mod.Visible = false;
            }
            rb_mod = null;
        }
        
        protected void add_cart(object source, RepeaterCommandEventArgs e)
        {
            student = new Student();
            student.Email = Session["Username"].ToString();
            ReadAllPaymentByStudentCommand cmd_ = new ReadAllPaymentByStudentCommand(student);
            cmd_.Execute();
            payment = cmd_.Payments;
            CartList = (List<Section>)Session["ScItms"];
            ImageButton action = (ImageButton)e.CommandSource;
            string actionString = action.ID;
            string id = ((Label)rb_mod.Items[e.Item.ItemIndex].FindControl("Id")).Text;
            Boolean flag = false;
            if (action.ID.Equals("add"))
            {
                try
                {
                    if (CartList == null )
                    {
                        foreach (AraPayment araPayment in payment)
                        {
                            if ( araPayment.Section.Id == Int32.Parse(id))
                            {
                                flag = true;
                                ClientScript.RegisterClientScriptBlock(this.GetType(), "random", "alertmeErr()", true);
                            }
                            else
                            {
                            }
                        }
                        if (flag == false)
                        {
                            CartList = new List<Section>();
                            section = new Section();
                            section.Id = Int32.Parse(id);
                            ReadSectionCommand cmd = new ReadSectionCommand(section);
                            cmd.Execute();
                            CartList.Add(cmd.Section);
                            ClientScript.RegisterClientScriptBlock(this.GetType(), "random", "alertme()", true);
                        }
                        else
                        {
                        }

                    }
                    else 
                    {
                        foreach (AraPayment araPayment in payment)
                        {
                            if (araPayment.Section.Id == Int32.Parse(id))
                            {
                                flag = true;
                                ClientScript.RegisterClientScriptBlock(this.GetType(), "random", "alertmeErr()", true);
                            }
                            else
                            {
                                foreach (Section section in CartList)
                                {
                                    if (section.Id == Int32.Parse(id))
                                    {
                                        flag = true;
                                        ClientScript.RegisterClientScriptBlock(this.GetType(), "random", "alertmeErr()", true);
                                    }
                                    else
                                    {
                                    }
                                }
                            }
                        }

                        if (flag == false)
                        {
                            section = new Section();
                            section.Id = Int32.Parse(id);
                            ReadSectionCommand cmd = new ReadSectionCommand(section);
                            cmd.Execute();
                            CartList.Add(cmd.Section);
                            ClientScript.RegisterClientScriptBlock(this.GetType(), "random", "alertme()", true);
                        }
                        else
                        {

                        }
                    }
                Session["ScItms"] = CartList;
                }
                catch (Exception ex)
                {
                }
            }
        }
    }
}