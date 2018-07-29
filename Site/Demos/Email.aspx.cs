/*
    Form: FMain
    Class: Visual Basic.Net #1
    Author: Saniya Arab
    Abstract: Week 6 - Chapter 10 and Chapetr 11
*/
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;

public partial class Demos_Email : CBasePage
{
    /*
  Name: Page_Load
  Abstract: Mail message
  */
    protected void Page_Load(object sender, EventArgs e)
    {
        MailMessage myMessage = new MailMessage();
        myMessage.Subject = "Test Message";
        myMessage.Body = "Hello world, from Planet Wrox";
        myMessage.From = new MailAddress("cpdm151@gmail.com", "Saniya Sender");
        myMessage.To.Add(new MailAddress("cpdm151@gmail.com", "Saniya Receiver"));

        SmtpClient mySmtpClient = new SmtpClient();
        mySmtpClient.Send(myMessage);

    }
}