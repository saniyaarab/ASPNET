/*
   Form: FMain
   Class: Visual Basic.Net #1
   Author: Saniya Arab
   Abstract: Chapter 15 -Week 10
*/
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Management_AddEditReviewHandCoded : System.Web.UI.Page
{
    int _id = -1;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!string.IsNullOrEmpty(Request.QueryString.Get("Id")))
        {
            _id = Convert.ToInt32(Request.QueryString.Get("Id"));
        }
        if (!Page.IsPostBack && _id > -1)
        {
            using (PlanetWroxEntities myEntities = new PlanetWroxEntities())
            {
                var review = (from r in myEntities.Reviews
                              where r.Id == _id
                              select r).SingleOrDefault();
                if (review != null)
                {
                    txtTitle.Text = review.Title;
                    txtSummary.Text = review.Summary;
                    txtBody.Text = review.Body;
                    ddlGenre.DataBind();
                    ListItem myItem =
                             ddlGenre.Items.FindByValue(review.GenreId.ToString());
                    if (myItem != null)
                    {
                        myItem.Selected = true;
                    }
                    cbAuthorized.Checked = review.Authorized;
                }
            }
        }
    }
    // GenreList_GetData goes here

    protected void btnSave_Click(object sender, EventArgs e)
    {
        using (PlanetWroxEntities myEntities = new PlanetWroxEntities())
        {
            Review myReview;
            if (_id == -1) // Insert new item
            {
                myReview = new Review();
                myReview.CreateDateTime = DateTime.Now;
                myReview.UpdateDateTime = myReview.CreateDateTime;
                myEntities.Reviews.Add(myReview);
            }
            else // update existing item
            {
                myReview = (from r in myEntities.Reviews
                            where r.Id == _id
                            select r).Single();
                myReview.UpdateDateTime = DateTime.Now;
            }

            myReview.Title = txtTitle.Text;
            myReview.Summary = txtSummary.Text;
            myReview.Body = txtBody.Text;
            myReview.GenreId = Convert.ToInt32(ddlGenre.SelectedValue);
            myReview.Authorized = cbAuthorized.Checked;

            myEntities.SaveChanges();
            Response.Redirect("Reviews.aspx");
        }
    }


    public IEnumerable<Genre> ddlGenre_GetData()
    {
        using (PlanetWroxEntities myEntities = new PlanetWroxEntities())
        {
            return (from genre in myEntities.Genres
                    orderby genre.SortOrder
                    select genre).ToList();
        }
    }
}