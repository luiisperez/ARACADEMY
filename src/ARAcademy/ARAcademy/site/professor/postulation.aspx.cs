using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ARAcademy.site.professor
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

       

        protected void btn_SendMessage(object sender, EventArgs e)
        {
            SmtpClient smtpClient = new SmtpClient();

            smtpClient.Credentials = new System.Net.NetworkCredential("postulaciones@aracademygroup.com", "Arapost2020.");
            smtpClient.Port = 26;
            smtpClient.Host = "mail.aracademygroup.com";
            smtpClient.EnableSsl = false;
            smtpClient.DeliveryMethod = SmtpDeliveryMethod.Network;

            MailMessage mailMessage = new MailMessage("postulaciones@aracademygroup.com", "postulaciones@aracademygroup.com");
            mailMessage.Subject = "Postulación de Profesor";
            mailMessage.Body = "Nombre: "+ txtName.Text + " " + txtLastName.Text 
                + "\n" + "Correo Electrónico: " + txtEmail.Text 
                + "\n" + "País: " + txtCountry.Text
                + "\n" + "Teléfono: " + txtTelf.Text; 

            try
            {
                smtpClient.Send(mailMessage);
                Label1.Text = "Message sent";
            }
            catch (Exception ex)
            {
                Label1.Text = ex.ToString();
            }
        }
    }
}