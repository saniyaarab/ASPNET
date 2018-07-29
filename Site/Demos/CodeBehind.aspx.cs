
/*
    Form: FMain
    Class: Visual Basic.Net #1
    Author: Saniya Arab
    Abstract: Homework 1
*/
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Demos_CodeBehind : CBasePage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lblTime.Text = "Hello World; the time is now " + DateTime.Now.ToString();
    }
}