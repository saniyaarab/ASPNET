<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ControlsDemo.aspx.cs" Inherits="Site_Demos_ControlsDemo" %>

<!DOCTYPE html>
<%--
Form: FMain
Class: Visual Basic.Net #1
Author: Saniya Arab
Abstract: Homework 2 - Chapter 4
--%>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Controls Demo</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        Your name<asp:TextBox ID="txtYourName" runat="server" Height="17px"></asp:TextBox>
        <asp:Button ID="btnSubmitButton" runat="server" OnClick="btnSubmitButton_Click" Text="Submit Information" />
        <br />
        <asp:Label ID="lblResult" runat="server"></asp:Label>
    
    </div>
        <p>
            &nbsp;</p>
    </form>
</body>
</html>
