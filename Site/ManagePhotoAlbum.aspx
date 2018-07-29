<%@ Page Title="Manage Photo Album" Language="C#" MasterPageFile="~/MasterPages/Frontend.master" AutoEventWireup="true" CodeFile="ManagePhotoAlbum.aspx.cs" Inherits="_ManagePhotoAlbum" %>
<%--
Form: FMain
Class: Visual Basic.Net #1
Author: Saniya Arab
Abstract:Week 8
--%>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
    <asp:ListView ID="lstPhoto" runat="server" DataKeyNames="Id"
              InsertItemPosition="LastItem" SelectMethod="lstPhoto_GetData" InsertMethod="lstPhoto_InsertItem" DeleteMethod="lstPhoto_DeleteItem" ItemType="Picture">
  <InsertItemTemplate>
    <li>
      Description:
        <asp:RequiredFieldValidator ID="reqDesc" ControlToValidate="txtDescription"
            runat="server" ErrorMessage="Enter a description." />
        <asp:TextBox ID="txtDescription" runat="server" 
             TextMode="MultiLine" Text='<%# BindItem.Description %>' /><br />
      ToolTip:
        <asp:RequiredFieldValidator ID="reqToolTip" ControlToValidate="txtToolTip"
            runat="server" ErrorMessage="Enter a tool tip." /><asp:TextBox ID="txtToolTip" runat="server" 
             Text='<%# BindItem.ToolTip %>' /><br />
      ImageUrl: <asp:FileUpload ID="FileUpload1" runat="server" /><br />
        <asp:CustomValidator ID="cusValImage" runat="server"
            ErrorMessage="Select a valid .jpg file." />
        <br />
      <asp:Button ID="btnInsertButton" runat="server" Text="Insert" CommandName="Insert" />
    </li>
  </InsertItemTemplate>
  <ItemTemplate>
    <li>
      Description: <asp:Label ID="lblDescription" runat="server" 
             Text='<%# Item.Description %>' /><br />
      ToolTip: <asp:Label ID="lblToolTip" runat="server" 
             Text='<%# Item.ToolTip %>' /><br />
      ImageUrl: <asp:Image ID="ImageUrl" runat="server" ImageUrl='<%# Item.ImageUrl %>' /> 
             Text='<%# Eval("ImageUrl") %>' /><br />
      <asp:Button ID="btnDeleteButton" runat="server" CommandName="Delete"
             Text="Delete" CausesValidation="False" />
    </li>
  </ItemTemplate>
  <LayoutTemplate>
    <ul class="ItemContainer">
      <li runat="server" id="itemPlaceholder" />
    </ul>
  </LayoutTemplate>
</asp:ListView>
</asp:Content>

