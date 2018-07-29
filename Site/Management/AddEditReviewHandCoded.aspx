<%@ Page Title="Title of Planet Wrox - Management - Insert and Update Reviews using controls" Language="C#" MasterPageFile="~/MasterPages/Management.master" AutoEventWireup="true" CodeFile="AddEditReviewHandCoded.aspx.cs" Inherits="Management_AddEditReviewHandCoded" %>
<%--
Form: FMain
Class: Visual Basic.Net #1
Author: Saniya Arab
Abstract: Week 10
--%>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
    <table class="auto-style1">
        <tr>
            <td>
                <asp:Label ID="lblTitle" runat="server" Text="Title"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtTitle" runat="server" Width="450px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblSummary" runat="server" Text="Summary"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtSummary" runat="server" TextMode="MultiLine" Width="450px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblBody" runat="server" Text="Body"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtBody" runat="server" TextMode="MultiLine" Width="450px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblGenre" runat="server" Text="Genre"></asp:Label>
            </td>
            <td>
                <asp:DropDownList ID="ddlGenre" runat="server" DataTextField="Name" DataValueField="Id" SelectMethod="ddlGenre_GetData">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblAuthorized" runat="server" Text="Authorized"></asp:Label>
            </td>
            <td>
                <asp:CheckBox ID="cbAuthorized" runat="server" />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="btnSave" runat="server" Text="Save" OnClick="btnSave_Click" />
            </td>
        </tr>
    </table>
</asp:Content>

