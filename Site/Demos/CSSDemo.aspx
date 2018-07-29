<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CSSDemo.aspx.cs" Inherits="Site_Demos_CSSDemo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <%--
    Form: FMain
    Class: Visual Basic.Net #1
    Author: Saniya Arab
    Abstract: Homework 2
--%>
    <title>CSS Demo</title>
    <style>
        h1
        {
          font-size: 20px;
          color: Green;
        }

        p
        {
          color: #0000FF;
          font-style: italic;
        }

        .RightAligned
        {
          text-align: right;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h1>Welcome to this CSS Demo page</h1>
        <p>CSS makes it super easy to style your pages.</p>
        <p class="RightAligned">
            With very little code, you can quickly change the looks of a page.
        </p>
    
    </div>
    </form>
</body>
</html>
