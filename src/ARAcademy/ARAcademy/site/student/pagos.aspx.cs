using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using ARAcademy.controller.payment;
using ARAcademy.controller.section;
using System.Web.UI.WebControls;
using ARAcademy.common.entities;

namespace ARAcademy.site.student
{
    public partial class pagos : System.Web.UI.Page
    {
        private List<AraPayment> list_pagos = new List<AraPayment>();
        private Student student;
        private Section section;
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
                        list_pagos = cmd.Payments;
                        foreach (AraPayment payment in list_pagos)
                        {
                            section = new Section();
                            section.Id = payment.Section.Id;
                            ReadSectionCommand cmd_ = new ReadSectionCommand(section);
                            cmd_.Execute();
                            payment.Section.Name = cmd_.Section.Name;
                            mod_data.DataSource = list_pagos;
                            mod_data.DataBind();
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
    }
}