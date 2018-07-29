/*
Form: FMain
Class: Visual Basic.Net #1
Author: Saniya Arab
Abstract: Homework  - Week 4
*/
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Demos_Source : CBasePage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //Response.Redirect("Target?Test=SomeValue");
        Server.Transfer("Target.aspx?Test=SomeValue");
    }
}