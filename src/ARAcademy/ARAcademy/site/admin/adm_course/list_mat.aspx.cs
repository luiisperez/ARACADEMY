using ARAcademy.common.entities;
using ARAcademy.controller.course;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ARAcademy.site.admin
{
    public partial class list_mat : System.Web.UI.Page
    {
        private List<Course> list_mate = new List<Course>();
        public Course course = new Course();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                try
                {
                    if (Session["Username"] != null && Session["Token"] != null)
                    {
                        ReadAllCourseCommand cmd = new ReadAllCourseCommand();
                        cmd.Execute();
                        list_mate = cmd.Courses;
                        foreach (Course course in list_mate)
                        {
                            mat_data.DataSource = list_mate;
                            mat_data.DataBind();
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

        protected void mat_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            ImageButton action = (ImageButton)e.CommandSource;
            string actionString = action.ID;
            if (action.ID.Equals("delete"))
            {
                try
                {
                    Course course = new Course();
                    string id = ((Label)mat_data.Items[e.Item.ItemIndex].FindControl("Id")).Text;
                    course.Id = id;
                    DeleteCourseCommand cmd = new DeleteCourseCommand(course);
                    cmd.Execute();
                    if (course.Code == 200)
                    {
                        ClientScript.RegisterClientScriptBlock(this.GetType(), "random", "alertme()", true);
                    } 
                    else 
                    {
                        ClientScript.RegisterClientScriptBlock(this.GetType(), "random", "alertmeErr()", true);
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
                    string id = ((Label)mat_data.Items[e.Item.ItemIndex].FindControl("Id")).Text;
                    Session["Id_mat"] = id;
                    Response.Redirect("/site/admin/adm_course/edit_mat.aspx");
                }
                catch (Exception ex)
                {

                }
            }

        }
    }
}