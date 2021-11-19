using ARAcademy.common;
using ARAcademy.common.entities;
using ARAcademy.controller.teacher;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ARAcademy.controller.report;

namespace ARAcademy.site.admin.adm_reports
{
    public partial class pago_prof : System.Web.UI.Page
    {
        private Teacher teacher = new Teacher();
        private Int32 meetings;
        private List<Teacher> teacher_list = new List<Teacher>();

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
            CalculateTeacherSalaryBetweenDatesCommand cmd = new CalculateTeacherSalaryBetweenDatesCommand(fec_ini, fec_fi);
            cmd.Execute();

            teacher_list = cmd.Teachers;
            teacher_list.RemoveAt(0);
            prof_pagos.DataSource = teacher_list;
            prof_pagos.DataBind();
            div_table.Visible = true;
            //export.Visible = true;
        }
    }
}