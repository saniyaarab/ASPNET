<%@ Page Title="Reviews Grouped By Genre" Language="C#" MasterPageFile="~/MasterPages/Frontend.master" AutoEventWireup="true" CodeFile="AllByGenre.aspx.cs" Inherits="Reviews_AllByGenre" %>
<%--
Form: FMain
Class: Visual Basic.Net #1
Author: Saniya Arab
Abstract: Homework week 4
--%>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
    <asp:Repeater ID="Repeater1" runat="server">
        <ItemTemplate> 
            <h3>
               <asp:BulletedList ID="lstReviewList" runat="server" DataSource='<%# Eval("Reviews")%>' DataTextField="Title"
                DisplayMode="Text"></asp:BulletedList>
                <asp:Literal ID="Literal1" runat="server" Text='<%# Eval("Name") %>'></asp:Literal></h3>
        </ItemTemplate>
    </asp:Repeater>
</asp:Content>

