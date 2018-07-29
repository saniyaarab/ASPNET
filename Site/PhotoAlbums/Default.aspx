<%@ Page Title="All Photo Albums" Language="C#" MasterPageFile="~/MasterPages/Frontend.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="PhotoAlbums_Default" %>
<%--
Form: FMain
Class: Visual Basic.Net #1
Author: Saniya Arab
Abstract: Week 8
--%>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>
    <asp:DropDownList ID="ddlPhotoAlbumList" runat="server" AutoPostBack="True" DataTextField="Name" DataValueField="Id" OnSelectedIndexChanged="ddlPhotoAlbumList_SelectedIndexChanged" SelectMethod="PhotoAlbumList_GetData">
    </asp:DropDownList>
    <asp:ListView ID="lstPhotoAlbum" runat="server" DataKeyNames="Id" 
       ItemType="Picture" SelectMethod="lstPhotoAlbum_GetData" OnDataBound="lstPhotoAlbum_DataBound">
  <EmptyDataTemplate>
    No pictures found for this photo album.
  </EmptyDataTemplate>
  <ItemTemplate>
    <li>
      <asp:Image ID="Image1" runat="server" ImageUrl='<%# Item.ImageUrl %>' 
             ToolTip='<%# Item.ToolTip %>' />
      <asp:Label ID="Description" runat="server" Text='<%# Item.Description %>' />
    </li>
  </ItemTemplate>
  <LayoutTemplate>
    <ul class="ItemContainer">
      <li id="itemPlaceholder" runat="server" />
    </ul>
    <div style="clear: both;">
  <asp:DataPager ID="DataPager1" runat="server" PageSize="3">
    <Fields>
      <asp:NextPreviousPagerField ButtonType="Button" 
              ShowFirstPageButton="True" ShowLastPageButton="True" />
    </Fields>
  </asp:DataPager>
</div>
  </LayoutTemplate>
</asp:ListView>
        <asp:PlaceHolder ID="phPhotoAlbumDetails" runat="server">
        <h2>Photo Album Details</h2>
          Created by:
          <asp:Label ID="lblUserName" runat="server" Text=""></asp:Label><br />
          About this user:
          <asp:Label ID="lblBio" runat="server" Text=""></asp:Label>
        </asp:PlaceHolder>
        <br /><br />
        <asp:HyperLink ID="EditLink" runat="server" Text="Edit Photo Album" />
    </ContentTemplate>
</asp:UpdatePanel>
</asp:Content>

