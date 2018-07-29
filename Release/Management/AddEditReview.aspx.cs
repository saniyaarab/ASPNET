/*
   Form: FMain
   Class: Visual Basic.Net #1
   Author: Saniya Arab
   Abstract: Chapter 12 and 13
*/
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Management_AddEditReview : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString.Get("Id") != null)
        {
            DetailsView1.DefaultMode = DetailsViewMode.Edit;
        }
    }

    protected void DetailsView1_PageIndexChanging(object sender, DetailsViewPageEventArgs e)
    {

    }


     /*
     Name: EndEditing
     Abstract:  Redirects the Response
     */
    private void EndEditing()
    {
        Response.Redirect("Reviews.aspx");
    }

    /*
    Name: DetailsView1_ItemInserted
    Abstract:  Handles Exception
    */
    protected void DetailsView1_ItemInserted(object sender,
              DetailsViewInsertedEventArgs e)
    {
        if (e.Exception == null)
        {
            EndEditing();
        }
    }

    /*
    Name: DetailsView1_ItemInserting
    Abstract:  Gets Date Time
    */
    protected void DetailsView1_ItemInserting(object sender,
              DetailsViewInsertEventArgs e)
    {
        e.Values["UpdateDateTime"] = DateTime.Now;
    }

    /*
    Name: DetailsView1_ItemUpdated
    Abstract:  Handles Exception
    */
    protected void DetailsView1_ItemUpdated(object sender,
              DetailsViewUpdatedEventArgs e)
    {
        if (e.Exception == null)
        {
            EndEditing();
        }
    }

    /*
    Name: DetailsView1_ItemUpdating
    Abstract:  Updates Date time
    */
    protected void DetailsView1_ItemUpdating(object sender,
              DetailsViewUpdateEventArgs e)
    {
        e.NewValues["UpdateDateTime"] = DateTime.Now;
    }
}