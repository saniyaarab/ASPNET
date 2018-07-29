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

public partial class Site_Demos_State : CBasePage
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    /*
    Name: btnSetDate_Click
    Abstract: Display Text on Label when button is clicked
    */
    protected void btnSetDate_Click(object sender, EventArgs e)
    {
        lblString.Text = DateTime.Now.ToString();
    }
}