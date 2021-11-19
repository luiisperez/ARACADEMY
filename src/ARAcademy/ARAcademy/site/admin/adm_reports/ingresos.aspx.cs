using ARAcademy.common.entities;
using ARAcademy.controller.report;
using ARAcademy.controller.student;
using PayPal.Api;
using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ARAcademy.site.admin.adm_reports
{
    public partial class ingresos : System.Web.UI.Page
    {
        private Student student;
        private List<AraPayment> list_pagos = new List<AraPayment>();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                try
                {
                    if (Session["Username"] != null && Session["Token"] != null)
                    {
                        div_table.Visible = false;
                        //export.Visible = false;
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

        protected void prof_search(object sender, EventArgs e)
        {
            DateTime fec_ini = DateTime.Parse(fec_in.Text);
            DateTime fec_fi = DateTime.Parse(fec_fin.Text);
            ReadAllPaymentsBetweenDatesCommand cmd = new ReadAllPaymentsBetweenDatesCommand(fec_ini, fec_fi);
            cmd.Execute();

            list_pagos = cmd.Payments;
            foreach (AraPayment araPayments in list_pagos)
            {
                student = new Student();
                student.Email = araPayments.Student.Email;
                ReadStudentCommand cmd_ = new ReadStudentCommand(student);
                cmd_.Execute();
                araPayments.Student = cmd_.Student;
            }

            prof_pagos.DataSource = list_pagos;
            prof_pagos.DataBind();
            div_table.Visible = true;
            //export.Visible = true;
        }
    }
}