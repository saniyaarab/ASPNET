/*
    Form: FMain
    Class: Visual Basic.Net #1
    Author: Saniya Arab
    Abstract: Homework /Week 5
*/
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;         // Provides access to the File class for reading the file
using System.Net.Mail;   // Provides access to the various mail related classes

public partial class Controls_ControlForm : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
    {
        if (!string.IsNullOrEmpty(txtPhoneHome.Text) ||
               !string.IsNullOrEmpty(txtPhoneBusiness.Text))
        {
            args.IsValid = true;
        }
        else
        {
            args.IsValid = false;
        }
    }

    /*
    Name: btnSend_Click
    Abstract: Send email
    */
    protected void btnSend_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            string strFileName = Server.MapPath("~/App_Data/ContactForm.txt");
            string strMailBody = File.ReadAllText(strFileName);

            strMailBody = strMailBody.Replace("##Name##", txtName.Text);
            strMailBody = strMailBody.Replace("##Email##", txtEmail.Text);
            strMailBody = strMailBody.Replace("##HomePhone##", txtPhoneHome.Text);
            strMailBody = strMailBody.Replace("##BusinessPhone##", txtPhoneBusiness.Text);
            strMailBody = strMailBody.Replace("##Comments##", txtComments.Text);
            try
            {
                MailMessage myMessage = new MailMessage();
                myMessage.Subject = "Response from web site";
                myMessage.Body = strMailBody;

                myMessage.From = new MailAddress(CAppConfiguration.FromAddress,
                  CAppConfiguration.FromName);
                myMessage.To.Add(new MailAddress(CAppConfiguration.ToAddress,
                                 CAppConfiguration.ToName));
                myMessage.ReplyToList.Add(new MailAddress(txtEmail.Text));

                SmtpClient mySmtpClient = new SmtpClient();
                mySmtpClient.Send(myMessage);

                MessageSentPara.Visible = true;
                FormTable.Visible = false;
                //System.Threading.Thread.Sleep(5000); 
            }
            catch (SmtpException)
            {
                lblMessage.Text = "An error occurred while sending your e-mail. Please try again.";
            }
            finally
            {
                lblMessage.Visible = true;
            }

        }
    }
}