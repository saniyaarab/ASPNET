<%@ Page Title="About Us" Language="C#" MasterPageFile="~/MasterPages/Frontend.master" AutoEventWireup="true" CodeFile="AboutUs.aspx.cs" Inherits="About_AboutUs" %>
<%--
Form: FMain
Class: Visual Basic.Net #1
Author: Saniya Arab
Abstract: Homework week 4
--%>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque tincidunt fermentum nisi a porta. Cras id tortor volutpat, interdum lorem at, pharetra orci. 
        Donec varius ex eu pulvinar finibus. Sed sed consequat dolor. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. 
        Proin blandit magna libero, vitae finibus purus congue vitae. Donec ut nulla in velit dictum lacinia. Quisque fringilla, nisl et ultrices pulvinar, tellus odio porttitor tortor, 
        in pulvinar metus risus sodales tellus.</p>
    <asp:Button ID="btnPostBack" runat="server" Text="Button" />
    <br />
    <Wrox:Banner ID="Banner2" runat="server" />
</asp:Content>

