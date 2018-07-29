<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ListControls.aspx.cs" Inherits="Site_Demos_ListControls" %>

<!DOCTYPE html>
<%--
Form: FMain
Class: Visual Basic.Net #1
Author: Saniya Arab
Abstract: Homework 2 - Chapter 4
--%>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>List Controls</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:DropDownList ID="lstLanguage" runat="server">
            <asp:ListItem>C#</asp:ListItem>
            <asp:ListItem>Visual Basic</asp:ListItem>
            <asp:ListItem>CSS</asp:ListItem>
        </asp:DropDownList>

        <asp:CheckBoxList ID="cblLanguages" runat="server">
            <asp:ListItem>C#</asp:ListItem>
            <asp:ListItem>Visual Basic</asp:ListItem>
            <asp:ListItem>CSS</asp:ListItem>
        </asp:CheckBoxList>
        <asp:Button ID="btnClick" runat="server" OnClick="btnClick_Click" Text="Button" />
        <br />
        <br />
        <asp:Label ID="lblText" runat="server" Text=""></asp:Label>
    </div>
    </form>
</body>
</html>
