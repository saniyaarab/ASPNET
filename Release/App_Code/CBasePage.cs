using System;
using System.Web;
/*
   Form: FMain
   Class: Visual Basic.Net #1
   Author: Saniya Arab
   Abstract: Homework/Week 4 - Chapter 6
*/
public class CBasePage : System.Web.UI.Page
{
    private void Page_PreRender(object sender, EventArgs e)
    {
        if (string.IsNullOrEmpty(this.Title) || this.Title.Equals("Untitled Page",
                      StringComparison.CurrentCultureIgnoreCase))
        {
            throw new Exception(
                  "Page title cannot be \"Untitled Page\" or an empty string.");
        }
    }

    private void Page_PreInit(object sender, EventArgs e)
    {
        HttpCookie preferredTheme = Request.Cookies.Get("PreferredTheme");
        if (preferredTheme != null)
        {
            string strThemeValueFolder = Server.MapPath("~/App_Themes/" + preferredTheme.Value);
            if (System.IO.Directory.Exists(strThemeValueFolder))
            {
                Page.Theme = preferredTheme.Value;
            }
        }
    }

    public CBasePage()
    {
        this.PreRender += Page_PreRender;
        this.PreInit += Page_PreInit;
    }
}