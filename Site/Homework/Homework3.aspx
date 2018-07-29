<%--
Form: FMain
Class: Visual Basic.Net #1
Author: Saniya Arab
Abstract: Homework3 -  week 5
--%>
<%@ Page Title="Student Form - Personal Information" Language="C#" MasterPageFile="~/MasterPages/Frontend.master" AutoEventWireup="true" CodeFile="Homework3.aspx.cs" Inherits="Homework_Homework3" %>

<%@ Register src="../Controls/homework3.ascx" tagname="homework3" tagprefix="uc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
    <uc1:homework3 ID="HW3StudentForm" runat="server" />
</asp:Content>

