<%@ Page Title="My Profile" Language="C#" MasterPageFile="~/MasterPages/Frontend.master" AutoEventWireup="true" CodeFile="MyProfile.aspx.cs" Inherits="_MyProfile" %>
<%--
Form: FMain
Class: Visual Basic.Net #1
Author: Saniya Arab
Abstract:Week 11
--%>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
    <h1>My Profile</h1>
    <p>The My Profile page allows you to make changes to your personal profile.
        You can also tell us bit about yourself.</p>
    <table class="auto-style1">
        <tr>
            <td>First name</td>
            <td>
                <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtFirstName" Display="Dynamic" ErrorMessage="First name is required."></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>Last name</td>
            <td>
                <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtLastName" Display="Dynamic" ErrorMessage="Last name is required."></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>Date of birth</td>
            <td>
                <asp:TextBox ID="txtDateOfBirth" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtDateOfBirth" Display="Dynamic" ErrorMessage="Date of birth is required"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="txtDateOfBirth" Display="Dynamic" ErrorMessage="Please enter a valid date" Operator="DataTypeCheck" Type="Date"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td>Biography</td>
            <td>
                <asp:TextBox ID="txtBio" runat="server" Height="75px" TextMode="MultiLine" Width="300px"></asp:TextBox>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblFavoriteGenres" runat="server" Text="Favorite genres"></asp:Label>
            </td>
            <td>
                <asp:CheckBoxList ID="cblPreferredGenres" runat="server"
                    SelectMethod="cblPreferredGenres_GetData" DataTextField="Name" DataValueField="Id" OnDataBound="cblPreferredGenres_DataBound">
                </asp:CheckBoxList>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td>
                <asp:Button ID="btnSave" runat="server" OnClick="btnSave_Click" Text="Save Profile" />
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
    <asp:ChangePassword ID="chpChangePasswordWrox" runat="server"></asp:ChangePassword>
</asp:Content>

