<%@ Page Title="Skins Demo" Language="C#" MasterPageFile="~/MasterPages/Frontend.master" AutoEventWireup="true" CodeFile="SkinsDemo.aspx.cs" Inherits="Demos_SkinsDemo" %>
<%--
Form: FMain
Class: Visual Basic.Net #1
Author: Saniya Arab
Abstract: Homework 1 - Chapter 6
--%>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
    <asp:Button ID="btnWhite" runat="server" Text="Button" />
    <asp:Button ID="btnRed" runat="server" Text="Button" SkinID="RedButton" />
</asp:Content>

