/*
    Form: FMain
    Class: Visual Basic.Net #1
    Author: Saniya Arab
    Abstract: Week 13 - Chapter 18 and Chapetr 19
*/
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;

public partial class Demos_ExceptionHandling : CBasePage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        MailMessage myMessage = new MailMessage();
        myMessage.Subject = "Exception Handling Test";
        myMessage.Body = "Test message body";
        try
        {
            myMessage.From = new MailAddress("cpdm151@gmail.com", "Saniya Sender");
            myMessage.To.Add(new MailAddress("cpdm151@gmail.com"));

            SmtpClient mySmtpClient = new SmtpClient();
            mySmtpClient.Send(myMessage);
            lblMessage.Text = "Message sent";
        }
        catch (SmtpException)
        {
            lblMessage.Text = "An error occurred while sending your e-mail. Please try again.";
        }

    }
}