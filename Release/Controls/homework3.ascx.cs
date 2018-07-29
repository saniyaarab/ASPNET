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

public partial class Controls_homework3 : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
    {
        if (optStartYear.SelectedIndex < 1)
        {
            args.IsValid = false;
        }
        else
        {
            args.IsValid = true;
        }
    }

    /*
    Name: btnReset_Click
    Abstract: Clear all the fields 
    */
    protected void btnReset_Click(object sender, EventArgs e)
    {
        txtStudentsName.Text = string.Empty;
        txtSocialSecurityNumber.Text = string.Empty;
        txtHomePhone.Text = string.Empty;
        txtEmailAddress.Text = string.Empty;
        optStartYear.SelectedIndex = -1;
        radGraduationMonth.ClearSelection();

    }
}