using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Net;
using System.Net.Configuration;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ReBox
{
    public partial class Contact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
    protected void Send(object sender, EventArgs e)
        {
            using (MailMessage msg = new MailMessage(txtEmail.Text, "reboxproject26@gmail.com")) {
                msg.Subject = txtSubject.Text;
                msg.IsBodyHtml = true;
                msg.Body = "First Name: " + txtFirstName.Text + "<br />Last Name: " + txtLastName.Text + "<br />Email: " + txtEmail.Text + "<br />" + txtBody.Text;

                SmtpClient smtp = new SmtpClient();
                smtp.Host = "smtp.gmail.com";
                smtp.EnableSsl = true;
                NetworkCredential NetworkCred = new NetworkCredential("reboxproject26@gmail.com", "recycle-456");
                smtp.UseDefaultCredentials = true;
                smtp.Credentials = NetworkCred;
                smtp.Port = 587;
                try
                {
                    smtp.Send(msg);
                    lblMessage.Text = "Your message has been successfully sent.";
                }
                catch (Exception ex)
                {
                    lblMessage.Text = "Error occured while sending your message." + ex.Message;
                }
            }
        }
    }
}