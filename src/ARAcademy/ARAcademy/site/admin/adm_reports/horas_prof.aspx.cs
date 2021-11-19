using ARAcademy.common;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ARAcademy.controller.report;
using ARAcademy.common.entities;
using ARAcademy.controller.teacher;
using System.IO;
using System.Text;

namespace ARAcademy.site.admin.adm_reports
{
    public partial class horas_prof : System.Web.UI.Page
    {
        private Teacher teacher  = new Teacher();
        private List<ClassMeeting> meetings = new List<ClassMeeting>();
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
                        list_prof.Items.RemoveAt(0);
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

        protected void prof_search(object sender, EventArgs e)
        {
            DateTime fec_ini = DateTime.Parse(fec_in.Text);
            DateTime fec_fi = DateTime.Parse(fec_fin.Text);
            teacher.Email = list_prof.SelectedValue;
            ReadClassByTeacherBetweenDatesCommnad cmd = new ReadClassByTeacherBetweenDatesCommnad(fec_ini, fec_fi, teacher);
            cmd.Execute();

            meetings = cmd.ClassMeetings;
            prof_pagos.DataSource = meetings;
            prof_pagos.DataBind();
            div_table.Visible = true;
            //export.Visible = true;
        }

        //public void ExportToExcel(object sender, EventArgs e)
        //{
        //    //Response.Clear();
        //    //Response.Buffer = true;
        //    //Response.AddHeader("content-disposition", "attachment;filename=RepeaterExport.csv");
        //    //Response.Charset = "";
        //    //Response.ContentType = "application/vnd.ms-excel";
        //    //Repeater rp = prof_pagos;
        //    //StringWriter sw = new StringWriter();
        //    //HtmlTextWriter hw = new HtmlTextWriter(sw);

        //    //foreach (RepeaterItem item in prof_pagos.Items)
        //    //{
        //    //    item.Controls.Remove(item.FindControl("<td>"));
        //    //    item.Controls.Remove(item.FindControl("hd_ProdCode"));
        //    //    item.Controls.Remove(item.FindControl("hd_Closing"));
        //    //    item.Controls.Remove(item.FindControl("hd_groupName"));
        //    //}
        //    //rp.RenderControl(hw);
        //    //Response.Output.Write(sw.ToString());
        //    //Response.Flush();
        //    //Response.End();

        //    //string docName = "MyExcelDoc";
        //    //StringBuilder sb = new StringBuilder();
        //    //sb = meetings;

        //    //Context.Response.ClearContent();
        //    //Context.Response.ContentType = "text/csv";
        //    //Context.Response.AddHeader("content-disposition", "attachment; filename=" + docName + ".csv");
        //    //Context.Response.Write(sb.ToString());
        //    //Context.Response.Flush();
        //}
    }
}