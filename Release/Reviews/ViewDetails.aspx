<%@ Page Language="C#" MasterPageFile="~/MasterPages/Frontend.master" AutoEventWireup="true" CodeFile="ViewDetails.aspx.cs" Inherits="Reviews_ViewDetails" %>
<%--
Form: FMain
Class: Visual Basic.Net #1
Author: Saniya Arab
Abstract:Week 10 
--%>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
    <h1><asp:Label ID="lblTitle" runat="server"></asp:Label></h1>
    <asp:Label CssClass="Summary" ID="lblSummary" runat="server" ></asp:Label>
    <asp:Label ID="lblBody" runat="server"></asp:Label>
</asp:Content>


