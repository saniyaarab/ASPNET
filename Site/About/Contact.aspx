<%@ Page Title="Contact Us" Language="C#" MasterPageFile="~/MasterPages/Frontend.master" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="About_Contact" %>
<%--
Form: FMain
Class: Visual Basic.Net #1
Author: Saniya Arab
Abstract: Homework week 4
--%>
<%@ Register Src="~/Controls/ControlForm.ascx" TagPrefix="Wrox" TagName="ControlForm" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
    <Wrox:ControlForm runat="server" ID="ControlForm" />
</asp:Content>

