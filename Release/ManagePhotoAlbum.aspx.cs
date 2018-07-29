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
using System.Web.ModelBinding;
using System.Web.Security;


public partial class _ManagePhotoAlbum : CBasePage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        int photoAlbumId = Convert.ToInt32(Request.QueryString.Get("PhotoAlbumId"));

        using (PlanetWroxEntities myEntities = new PlanetWroxEntities())
        {
            string photoAlbumOwner = (from p in myEntities.PhotoAlbums
                                      where p.Id == photoAlbumId
                                      select p.UserName).Single();
            if (User.Identity.Name != photoAlbumOwner && !User.IsInRole("Managers"))
            {
                Response.Redirect("~/");
            }
        }
    }

    // The return type can be changed to IEnumerable, however to support
    // paging and sorting, the following parameters must be added:
    //     int maximumRows
    //     int startRowIndex
    //     out int totalRowCount
    //     string sortByExpression
    public IQueryable lstPhoto_GetData([QueryString("PhotoAlbumId")] int photoAlbumId)
    {
        var myEntities = new PlanetWroxEntities();
        return from p in myEntities.Pictures
               where p.PhotoAlbumId == photoAlbumId
               select p;
    }

    public void lstPhoto_InsertItem([QueryString("PhotoAlbumId")] int photoAlbumId)
    {
        Picture picture = new Picture();
        TryUpdateModel(picture);
        FileUpload FileUpload1 = (FileUpload)lstPhoto.InsertItem.FindControl("FileUpload1");
        if (!FileUpload1.HasFile || !FileUpload1.FileName.ToLower().EndsWith(".jpg"))
        {
            CustomValidator cusValImage =
                  (CustomValidator)lstPhoto.InsertItem.FindControl("cusValImage");
            cusValImage.IsValid = false;
            ModelState.AddModelError("Invalid", cusValImage.ErrorMessage);
        }

        if (ModelState.IsValid && Page.IsValid)
            if (ModelState.IsValid)
        {
            using (var myEntities = new PlanetWroxEntities())
            {
                picture.PhotoAlbumId = photoAlbumId;
                string virtualFolder = "~/GigPics/";
                string physicalFolder = Server.MapPath(virtualFolder);
                string fileName = Guid.NewGuid().ToString();
                string extension = System.IO.Path.GetExtension(FileUpload1.FileName);

                FileUpload1.SaveAs(System.IO.Path.Combine(physicalFolder, fileName + extension));
                picture.ImageUrl = virtualFolder + fileName + extension;
                myEntities.Pictures.Add(picture);
                myEntities.SaveChanges();
            }
        }
    }

    // The id parameter name should match the DataKeyNames value set on the control
    public void lstPhoto_DeleteItem(int id)
    {
        using (var myEntities = new PlanetWroxEntities())
        {
            var picture = (from p in myEntities.Pictures
                           where p.Id == id
                           select p).Single();
            myEntities.Pictures.Remove(picture);
            myEntities.SaveChanges();
        }
    }

    //protected void lstPhoto_ItemCreated(object sender, ListViewItemEventArgs e)
    //{
    //    switch (e.Item.ItemType)
    //    {
    //        case ListViewItemType.DataItem:
    //            Button btnDeleteButton = (Button)e.Item.FindControl("btnDeleteButton");
    //            btnDeleteButton.Visible = Roles.IsUserInRole("Managers");
    //            break;
    //    }
    //}
}