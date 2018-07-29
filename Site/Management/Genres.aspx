<%@ Page Title="Planet Wrox - Management - Genres" Language="C#" MasterPageFile="~/MasterPages/Management.master" AutoEventWireup="true" CodeFile="Genres.aspx.cs" Inherits="Management_Genres" %>
<%--
Form: FMain
Class: Visual Basic.Net #1
Author: Saniya Arab
Abstract: Week 9
--%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
    <asp:Label ID="lblErrorMessage" runat="server" CssClass="ErrorMessage" EnableViewState="False"></asp:Label>
    <asp:GridView ID="gvGenres" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display." AllowPaging="True" AllowSorting="True" CellPadding="4" ForeColor="#333333" GridLines="None" OnRowDataBound="gvGenres_RowDataBound">
        <AlternatingRowStyle BackColor="White" />
    <Columns>
        <asp:TemplateField ShowHeader="False">
            <EditItemTemplate>
                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update" Text="Update"></asp:LinkButton>
                &nbsp;<asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel"></asp:LinkButton>
            </EditItemTemplate>
            <ItemTemplate>
                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit"></asp:LinkButton>
                &nbsp;<asp:LinkButton ID="DeleteLink" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete"></asp:LinkButton>
            </ItemTemplate>
            <ItemStyle Width="100px" />
        </asp:TemplateField>
        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" ItemStyle-Width="200px" > 
<ItemStyle Width="200px"></ItemStyle>
        </asp:BoundField>
        <asp:BoundField DataField="SortOrder" HeaderText="Sort Order" SortExpression="SortOrder" > </asp:BoundField> 
    </Columns>
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PlanetWroxConnectionString1 %>" DeleteCommand="DELETE FROM [Genre] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Genre] ([Name], [SortOrder]) VALUES (@Name, @SortOrder)" ProviderName="<%$ ConnectionStrings:PlanetWroxConnectionString1.ProviderName %>" 
    SelectCommand="SELECT Genre.Id, Genre.Name, Genre.SortOrder,COUNT(Review.Id) AS NumberOfReviews FROM Genre LEFT OUTER JOIN Review ON Genre.Id = Review.GenreId GROUP BY Genre.Id, Genre.Name, Genre.SortOrder" UpdateCommand="UPDATE [Genre] SET [Name] = @Name, [SortOrder] = @SortOrder WHERE [Id] = @Id" OnDeleted="SqlDataSource1_Deleted">
    <DeleteParameters>
        <asp:Parameter Name="Id" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="Name" Type="String" />
        <asp:Parameter Name="SortOrder" Type="Int32" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="Name" Type="String" />
        <asp:Parameter Name="SortOrder" Type="Int32" />
        <asp:Parameter Name="Id" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>
<asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" DefaultMode="Insert" Height="50px" Width="125px">
    <Fields>
        <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
        <asp:BoundField DataField="SortOrder" HeaderText="SortOrder" SortExpression="SortOrder" />
        <asp:CommandField ShowInsertButton="True" />
    </Fields>
</asp:DetailsView>
<script>
  $(function()
  {
    $('.GridView tr:odd:not(.GridViewPagerStyle)').
                          addClass('GridViewAlternatingRowStyle');
  });
</script>
</asp:Content>

