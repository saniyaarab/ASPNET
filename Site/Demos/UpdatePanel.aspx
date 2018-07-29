<%--
Form: FMain
Class: Visual Basic.Net #1
Author: Saniya Arab
Abstract: Week 7 - Chapter 10 and 11
--%>
<%@ Page Title="UpdatePanel Demo" Language="C#" MasterPageFile="~/MasterPages/Frontend.master" AutoEventWireup="true" CodeFile="UpdatePanel.aspx.cs" Inherits="Demos_UpdatePanel" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
    <asp:UpdatePanel runat="server">
        <ContentTemplate>
    <asp:Label ID="lblDateTime" runat="server"></asp:Label>
&nbsp;&nbsp;&nbsp;
    <asp:Button ID="btnDateTime" runat="server" Text="Update Time" />
            </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>

