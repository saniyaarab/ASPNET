<%@ Page Title="Create New Photo Album" Language="C#" MasterPageFile="~/MasterPages/Frontend.master" AutoEventWireup="true" CodeFile="NewPhotoAlbum.aspx.cs" Inherits="_NewPhotoAlbum" %>
<%--
Form: FMain
Class: Visual Basic.Net #1
Author: Saniya Arab
Abstract:Week 8
--%>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
    <asp:DetailsView AutoGenerateRows="false" ID="dvPhotoAlbum" 
          DefaultMode="Insert" runat="server" InsertMethod ="dvPhotoAlbum_InsertItem">
      <Fields>
        <asp:BoundField DataField="Name" HeaderText="Name" />
        <asp:CommandField ShowInsertButton="True" ShowCancelButton="false" />
      </Fields>
    </asp:DetailsView>
</asp:Content>

