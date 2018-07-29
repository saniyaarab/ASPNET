<%@ Page Title="Planet Wrox - Management - Reviews." Language="C#" MasterPageFile="~/MasterPages/Management.master" AutoEventWireup="true" CodeFile="Reviews.aspx.cs" Inherits="Management_Reviews" %>
<%--
Form: FMain
Class: Visual Basic.Net #1
Author: Saniya Arab
Abstract: Week 9
--%>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
    <asp:DropDownList ID="ddlName" runat="server" AppendDataBoundItems="True" AutoPostBack="True" DataSourceID="SqlDataSource1" DataTextField="Name" DataValueField="id">
        <asp:ListItem Value="">Make a selection</asp:ListItem>
    </asp:DropDownList>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource2">
        <Columns>
            <asp:HyperLinkField DataNavigateUrlFields="Id" DataNavigateUrlFormatString="AddEditReviewHandCoded.aspx?Id={0}" DataTextField="Title" HeaderText="Title" />
            <asp:TemplateField HeaderText="Authorized" SortExpression="Authorized">
               <%-- <EditItemTemplate>
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Authorized") %>'></asp:TextBox>
                </EditItemTemplate>--%>
                <ItemTemplate>
                    <asp:Label ID="lblAuthorizedLabel" runat="server" Text='<%# GetBooleanText(Eval("Authorized")) %>'></asp:Label>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="CreateDateTime" DataFormatString="{0:g}" HeaderText="CreateDateTime" SortExpression="CreateDateTime" />
            <asp:CommandField HeaderText="Delete" ShowDeleteButton="True" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:PlanetWroxConnectionString1 %>" DeleteCommand="DELETE FROM [Review] WHERE [Id] = @Id" InsertCommand="INSERT INTO [Review] ([Title], [Authorized], [CreateDateTime]) VALUES (@Title, @Authorized, @CreateDateTime)" SelectCommand="SELECT [Id], [Title], [Authorized], [CreateDateTime] FROM [Review] WHERE ([GenreId] = @GenreId)" UpdateCommand="UPDATE [Review] SET [Title] = @Title, [Authorized] = @Authorized, [CreateDateTime] = @CreateDateTime WHERE [Id] = @Id">
        <DeleteParameters>
            <asp:Parameter Name="Id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Title" Type="String" />
            <asp:Parameter Name="Authorized" Type="Boolean" />
            <asp:Parameter Name="CreateDateTime" Type="DateTime" />
        </InsertParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="ddlName" Name="GenreId" PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="Title" Type="String" />
            <asp:Parameter Name="Authorized" Type="Boolean" />
            <asp:Parameter Name="CreateDateTime" Type="DateTime" />
            <asp:Parameter Name="Id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PlanetWroxConnectionString1 %>" SelectCommand="SELECT [id], [Name] FROM [Genre] ORDER BY [SortOrder]"></asp:SqlDataSource>
    <a href="AddEditReviewHandCoded.aspx">Insert New Review</a>
</asp:Content>

