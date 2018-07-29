/*
    Form: FMain
    Class: Visual Basic.Net #1
    Author: Saniya Arab
    Abstract: Week 13
*/
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Runtime.CompilerServices;

public partial class Demos_Events : CBasePage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        WriteMessage();
    }

    protected void btnPostBack_Click(object sender, EventArgs e)
    {
        WriteMessage();
    }

    protected void gvGenre_Sorted(object sender, EventArgs e)
    {
        WriteMessage();
    }

    protected void gvGenre_Sorting(object sender, GridViewSortEventArgs e)
    {
        WriteMessage();
    }

    protected void gvGenre_RowCreated(object sender, GridViewRowEventArgs e)
    {
        WriteMessage();
    }

    protected void gvGenre_DataBinding(object sender, EventArgs e)
    {
        WriteMessage();
    }

    protected void gvGenre_DataBound(object sender, EventArgs e)
    {
        WriteMessage();
    }

    protected void gvGenre_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        WriteMessage();
    }

    protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {
        WriteMessage();
    }

    private void WriteMessage([CallerMemberName] string handlerName = "")
    {
        if (Page.IsPostBack)
        {
            PostBack.Text += handlerName + "<br />";
        }
        else
        {
            NoPostBack.Text += handlerName + "<br />";
        }
    }

    protected void Page_PreRenderComplete(object sender, EventArgs e)
    {
        WriteMessage("Page_PreRenderComplete<br />------------");
    }


}