using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;

namespace Website_Ecom
{
    public partial class contactwithmap : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnContact_Click(object sender, EventArgs e)
        {
            SmtpClient smtpClient = new SmtpClient();
            MailMessage msg = new MailMessage("wafiwes123@gmail.com", "wafiwes123@gmail.com");
            msg.Subject = txtSubj.Text;
            msg.Body = txtBody.Text;

            smtpClient.Host = "smtp.gmail.com";
            smtpClient.Port = 587;
            smtpClient.EnableSsl = true;

            System.Net.NetworkCredential credentials = new System.Net.NetworkCredential("wafiwes123@gmail.com", "wafiwest8");
            smtpClient.Credentials = credentials;


            try
            {
                smtpClient.Send(msg);
                litResult.Text = "<p> Success mail sent using SMTP with secure connection and credentials</p>";
            }
            catch (Exception ex)
            {
                //display the full error to the user
                litResult.Text = "<p> send failed: " + ex.Message + ":" + ex.InnerException + "</p>";
            }
        }
    }
}
