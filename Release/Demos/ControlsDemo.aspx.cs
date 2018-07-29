using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
/*
Form: FMain
Class: Visual Basic.Net #1
Author: Saniya Arab
Abstract: Homework 2 - Chapter 4
*/

public partial class Site_Demos_ControlsDemo : CBasePage
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    /*
    Name: btnSubmitButton_Click
    Abstract: Display Text entered on txtYourName text box
    */

    protected void btnSubmitButton_Click(object sender, EventArgs e)
    {
        lblResult.Text = "Your name is " + txtYourName.Text;
    }
}