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
   Abstract: Homework/Week 4 - Chapter 6
*/
public partial class MasterPages_Frontend : System.Web.UI.MasterPage
{
    /*
    Name: Page_Load
    Abstract: Preselect Theme list on pageload
    */
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            string strSelectedTheme = Page.Theme;
            HttpCookie preferredTheme = Request.Cookies.Get("PreferredTheme");
            if (preferredTheme != null)
            {
                strSelectedTheme = preferredTheme.Value;
            }
            if (!string.IsNullOrEmpty(strSelectedTheme))
            {
                ListItem item = ddlThemeList.Items.FindByValue(strSelectedTheme);
                if (item != null)
                {
                    item.Selected = true;
                }
            }
        }

        switch (Page.Theme.ToLower())
        {
            case "darkgrey":
                mnuHomeMenu.Visible = false;
                treeviewMenu.Visible = true;
                break;
            default:
                mnuHomeMenu.Visible = true;
                treeviewMenu.Visible = false;
                break;
        }
    }

    /*
    Name: ddlThemeList_SelectedIndexChanged
    Abstract: Preselect Theme list
    */

    protected void ddlThemeList_SelectedIndexChanged(object sender, EventArgs e)
    {
        HttpCookie preferredTheme = new HttpCookie("PreferredTheme");
        preferredTheme.Expires = DateTime.Now.AddMonths(3);
        preferredTheme.Value = ddlThemeList.SelectedValue;
        Response.Cookies.Add(preferredTheme);
        Response.Redirect(Request.Url.ToString());
    }
}
