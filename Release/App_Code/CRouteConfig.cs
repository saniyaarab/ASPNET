/*
   Form: FMain
   Class: Visual Basic.Net #1
   Author: Saniya Arab
   Abstract: Homework/Week 4 - Chapter 6
*/
using System.Web.Routing;
using Microsoft.AspNet.FriendlyUrls;

public static class CRouteConfig
{
    public static void RegisterRoutes(RouteCollection routes)
    {
        var settings = new FriendlyUrlSettings();
        settings.AutoRedirectMode = RedirectMode.Permanent;
        routes.EnableFriendlyUrls(settings);
    }
}