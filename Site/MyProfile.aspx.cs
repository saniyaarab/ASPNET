/*
    Form: FMain
    Class: Visual Basic.Net #1
    Author: Saniya Arab
    Abstract: Week 11
*/
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _MyProfile : CBasePage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            txtFirstName.Text = Profile.FirstName;
            txtLastName.Text = Profile.LastName;
            txtDateOfBirth.Text = Profile.DateOfBirth.ToShortDateString();
            txtBio.Text = Profile.Bio;
        }
    }

    /*
    Name: btnSave_Click
    Abstract: Save 
    */

    protected void btnSave_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            Profile.FirstName = txtFirstName.Text;
            Profile.LastName = txtLastName.Text;
            Profile.DateOfBirth = DateTime.Parse(txtDateOfBirth.Text);
            Profile.Bio = txtBio.Text;

            // Clear the existing list
            Profile.FavoriteGenres.Clear();

            // Now add the selected genres
            foreach (ListItem myItem in cblPreferredGenres.Items)
            {
                if (myItem.Selected)
                {
                    Profile.FavoriteGenres.Add(Convert.ToInt32(myItem.Value));
                }
            }
        }
    }

    /*
   Name: PreferredGenres_GetData
   Abstract: get data 
   */
    public IEnumerable<Genre> cblPreferredGenres_GetData()
    {
        using (var myEntities = new PlanetWroxEntities())
        {
            return (from genre in myEntities.Genres
                    orderby genre.Name
                    select genre).ToList();
        }
    }

    /*
Name: cblPreferredGenres_DataBound
Abstract: 
*/
    protected void cblPreferredGenres_DataBound(object sender, EventArgs e)
    {
        foreach (ListItem myItem in cblPreferredGenres.Items)
        {
            int currentValue = Convert.ToInt32(myItem.Value);
            if (Profile.FavoriteGenres.Contains(currentValue))
            {
                myItem.Selected = true;
            }
        }
    }
}