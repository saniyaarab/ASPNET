<%--
    Form: FMain
    Class: Visual Basic.Net #1
    Author: Saniya Arab
    Abstract: MidTerm
--%>
<%@ Page Title="Weather Report" Language="C#" MasterPageFile="~/MasterPages/Frontend.master" AutoEventWireup="true" CodeFile="MidTerm.aspx.cs" Inherits="Homework_MidTerm" %>

<%@ Register Src="~/Controls/Weather.ascx" TagPrefix="Wrox" TagName="Weather" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    
</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="cpMainContent">
    <Wrox:Weather ID="Weather1" runat="server" />
    <p>For details for this Weather plugin please visit <a href="https://simpleweatherjs.com" target="_blank">simpleweatherjs.com</a></p>
</asp:Content>


