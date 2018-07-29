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

public partial class Site_Demos_ListControls : CBasePage
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    /*
    Name: btnClick_Click
    Abstract: Display Checkbox and list value selected
    */
    protected void btnClick_Click(object sender, EventArgs e)
    {
        lblText.Text = "In the DDL you selected " +
              lstLanguage.SelectedValue + "<br />";

        foreach (ListItem item in cblLanguages.Items)
        {
            if (item.Selected == true)
            {
                lblText.Text += "In the CBL you selected " + item.Value + "<br />";
            }
        }
    }
}