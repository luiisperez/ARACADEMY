using ARAcademy.common;
using ARAcademy.controller.teacher;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ARAcademy.site.admin
{
    public partial class list_prof : System.Web.UI.Page
    {
        private List<Teacher> list_profe = new List<Teacher>();
        public Teacher teacher = new Teacher();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                try
                {
                    if (Session["Username"] != null && Session["Token"] != null)
                    {
                        ReadAllTeacherCommand cmd = new ReadAllTeacherCommand();
                        cmd.Execute();
                        list_profe = cmd.Teachers;
                        foreach (Teacher teacher in list_profe)
                        {
                            prof_data.DataSource = list_profe;
                            prof_data.DataBind();
                        }
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

        protected void prof_ItemCommand (object source, RepeaterCommandEventArgs e)
        {
            ImageButton action = (ImageButton)e.CommandSource;
            string actionString = action.ID;
            if (action.ID.Equals("delete"))                
            {
                try
                {
                    string email  = ((Label)prof_data.Items[e.Item.ItemIndex].FindControl("Email")).Text;
                    teacher = new Teacher();
                    teacher.Email = email;
                    DeleteTeacherCommand cmd = new DeleteTeacherCommand(teacher);
                    cmd.Execute();
                if (teacher.Code == 200)
                {
                    ClientScript.RegisterClientScriptBlock(this.GetType(), "random", "alertme()", true);
                } else { }
                }
                catch (Exception ex)
                {
                }
            } else if (action.ID.Equals("modify"))
            {
                try
                {
                    string email = ((Label)prof_data.Items[e.Item.ItemIndex].FindControl("Email")).Text;
                    Session["Email_prof"] = email;
                    Response.Redirect("/site/admin/adm_professor/edit_prof.aspx"); 
                }
                catch (Exception ex)
                {

                }
            }

        }
    }
}   