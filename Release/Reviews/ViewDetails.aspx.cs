/*
    Form: FMain
    Class: Visual Basic.Net #1
    Author: Saniya Arab
    Abstract: Week 9
*/
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Reviews_ViewDetails : CBasePage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        int reviewId = Convert.ToInt32(Request.QueryString.Get("ReviewId"));
        string cacheKey = "Reviews" + reviewId.ToString();
        Review myReview = Cache[cacheKey] as Review;
        if (myReview == null)
        {
            using (PlanetWroxEntities myEntities = new PlanetWroxEntities())
            {
                myReview = (from r in myEntities.Reviews
                            where r.Id == reviewId
                            select r).SingleOrDefault();

                if (myReview != null)
                {
                    Cache.Insert(cacheKey, myReview, null, DateTime.Now.AddMinutes(20),
                                System.Web.Caching.Cache.NoSlidingExpiration);
                }
            }
        }

        if (myReview != null)
        {
            lblTitle.Text = myReview.Title;
            lblSummary.Text = myReview.Summary;
            lblBody.Text = myReview.Body;
            Title = myReview.Title;
            MetaDescription = myReview.Summary;
        }
    }
}