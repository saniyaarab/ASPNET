/*
   Form: FMain
   Class: Visual Basic.Net #1
   Author: Saniya Arab
   Abstract: Week 8 
*/
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class PhotoAlbums_Default : CBasePage
{
    PlanetWroxEntities entities = new PlanetWroxEntities();

    protected void Page_Load(object sender, EventArgs e)
    {
       
    }

    protected void ddlPhotoAlbumList_SelectedIndexChanged(object sender, EventArgs e)
    {
        lstPhotoAlbum.DataBind();
    }

    public IEnumerable<PhotoAlbum> PhotoAlbumList_GetData()
    {
        return from p in entities.PhotoAlbums
               orderby p.Id
               select p;
    }

    public IQueryable<Picture> lstPhotoAlbum_GetData()
    {
        int photoAlbumId = Convert.ToInt32(ddlPhotoAlbumList.SelectedValue);
        return from p in entities.Pictures
               where p.PhotoAlbumId == photoAlbumId
               orderby p.Id
               select p;
    }

    protected void lstPhotoAlbum_DataBound(object sender, EventArgs e)
    {
        if (!string.IsNullOrEmpty(ddlPhotoAlbumList.SelectedValue))
        {
            int photoAlbumId = Convert.ToInt32(ddlPhotoAlbumList.SelectedValue);
            using (PlanetWroxEntities myEntities = new PlanetWroxEntities())
            {
                string photoAlbumOwner = (from p in myEntities.PhotoAlbums
                                          where p.Id == photoAlbumId
                                          select p.UserName).Single();
                if (User.Identity.IsAuthenticated &&
                      (User.Identity.Name == photoAlbumOwner || User.IsInRole("Managers")))
                {
                    EditLink.NavigateUrl = string.Format(
                  "~/ManagePhotoAlbum.aspx?PhotoAlbumId={0}", ddlPhotoAlbumList.SelectedValue);
                    EditLink.Visible = true;
                }
                else
                {
                    EditLink.Visible = false;
                }
                if (!string.IsNullOrEmpty(photoAlbumOwner))
                {
                    ProfileCommon ownerProfile = Profile.GetProfile(photoAlbumOwner);
                    lblUserName.Text = photoAlbumOwner;
                    lblBio.Text = ownerProfile.Bio;
                    phPhotoAlbumDetails.Visible = true;
                }
                else
                {
                    phPhotoAlbumDetails.Visible = false;
                }
            }
        }
        else
        {
            EditLink.Visible = false;
        }
    }
}