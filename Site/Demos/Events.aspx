<%@ Page Title="Evens Demo" Language="C#" MasterPageFile="~/MasterPages/Frontend.master" AutoEventWireup="true" CodeFile="Events.aspx.cs" Inherits="Demos_Events" %>
<%--
Form: FMain
Class: Visual Basic.Net #1
Author: Saniya Arab
Abstract: Week 13
--%>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
 <table>
  <tr>
    <td><h1>No PostBack</h1><asp:Label ID="NoPostBack" runat="server" /></td>
    <td><h1>PostBack</h1><asp:Label ID="PostBack" runat="server" /></td>
  </tr>
</table>
    <asp:GridView ID="gvGenre" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" OnDataBinding="gvGenre_DataBinding" OnDataBound="gvGenre_DataBound" OnRowCreated="gvGenre_RowCreated" OnRowDataBound="gvGenre_RowDataBound" OnSorted="gvGenre_Sorted" OnSorting="gvGenre_Sorting">
        <Columns>
            <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
            <asp:BoundField DataField="SortOrder" HeaderText="SortOrder" SortExpression="SortOrder" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PlanetWroxConnectionString1 %>" SelectCommand="SELECT * FROM [Genre]" OnSelecting="SqlDataSource1_Selecting"></asp:SqlDataSource>
    <asp:Button ID="btnPostBack" runat="server" OnClick="btnPostBack_Click" Text="Submit" />
</asp:Content>

