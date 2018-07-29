/*
    Form: FMain
    Class: Visual Basic.Net #1
    Author: Saniya Arab
    Abstract: Week 13 - Chapter 18 and Chapetr 19
*/
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Errors_Error404 : CBasePage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Response.Status = "404 Not Found";
        Response.StatusCode = 404;
        Response.TrySkipIisCustomErrors = true;
    }
}