<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TableDemo.aspx.cs" Inherits="TableDemo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <%--
    Form: FMain
    Class: Visual Basic.Net #1
    Author: Saniya Arab
    Abstract: Homework 1
--%>

    <title>Table Demo</title>
    <style type="text/css">
        .colWidth {
            width: 100%;
        }
        .tbWidth {
            width: 200px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="colWidth">
            <tr>
                <td class="tbWidth">Bulleted List</td>
                <td>
                    <ul>
                        <li>Punk</li>
                        <li>Rock</li>
                        <li>Techno</li>
                    </ul>
                </td>
            </tr>
            <tr>
                <td class="tbWidth">Numbered List</td>
                <td>
                    <ol>
                        <li>Jazz</li>
                        <li>Hip Hop</li>
                        <li>Trip Hop</li>
                    </ol>
                </td>
            </tr>
            <tr>
                <td class="tbWidth">Link</td>
                <td><a href="../Default.aspx">Go to the homepage of Planet Wrox</a></td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
