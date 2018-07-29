/*
   Form: FMain
   Class: Visual Basic.Net #1
   Author: Saniya Arab
   Abstract: Homework /week 4
*/
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Demos_Target : CBasePage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lblTarget.Text = Request.QueryString.ToString();
    }
}