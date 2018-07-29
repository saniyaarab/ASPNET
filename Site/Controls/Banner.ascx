<%--
Form: FMain
Class: Visual Basic.Net #1
Author: Saniya Arab
Abstract: Homework week 5
--%>
<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Banner.ascx.cs" Inherits="Controls_Banner" %>
<asp:Panel ID="pnlVerticalPanel" runat="server">
    <a href="http://p2p.wrox.com" target="_blank" runat="server" id="VerticalLink">> 
        <asp:Image ID="imgVerticalBanner" runat="server" ImageUrl="~/Images/Banner120x240.gif" AlternateText="This is a Vertical banner." />
    </a>
</asp:Panel>
<asp:Panel ID="pnlHorizontalPanel" runat="server" >
    <a href="http://p2p.wrox.com" target="_blank" runat="server" id="HorizontalLink"> 
        <asp:Image ID="imgHorizontalBanner" runat="server" ImageUrl="~/Images/Banner486x60.gif" AlternateText="This is a Horizontal banner." />
    </a>
</asp:Panel>


