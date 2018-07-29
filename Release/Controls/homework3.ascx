<%@ Control Language="C#" AutoEventWireup="true" CodeFile="homework3.ascx.cs" Inherits="Controls_homework3" %>
<%--
Form: FMain
Class: Visual Basic.Net #1
Author: Saniya Arab
Abstract: Homework2 -  week 5
--%>

<link href="../Styles/homework3.css" rel="stylesheet" />

<script>
    function validateStartYear(source, args)
  {
    var strStartYear = document.getElementById('<%= optStartYear.ClientID %>');
   
        if (strStartYear.value != 'Choose')
        {
            args.IsValid = true;
        }
        else
        {
            args.IsValid = false;
        }
  }

</script>

<h1>Student Personal Information</h1>
<p>
    &nbsp;</p>
<table class="tablelength" runat="server" id="frmStudentData">
    <tr>
        <td class="collength">Students Name</td>
        <td class="collength">
            <asp:TextBox ID="txtStudentsName" runat="server"></asp:TextBox>
        </td>
        <td class="collength">
            <asp:RequiredFieldValidator ID="RequiredNameValidator" runat="server" ControlToValidate="txtStudentsName" CssClass="ErrorMessage" ErrorMessage="Enter your Full Name">*</asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidatorName" runat="server" ControlToValidate="txtStudentsName" CssClass="ErrorMessage" EnableTheming="False" ErrorMessage="Enter Valid Name" ValidationExpression="^([a-zA-Z]{2,}\s[a-zA-z]{1,}'?-?[a-zA-Z]{2,}\s?([a-zA-Z]{1,})?)">*</asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td class="collength">Social Security Number</td>
        <td class="collength">
            <asp:TextBox ID="txtSocialSecurityNumber" runat="server"></asp:TextBox>
        </td>
        <td class="collength">
            <asp:RequiredFieldValidator ID="RequiredSSNValidator" runat="server" ControlToValidate="txtSocialSecurityNumber" CssClass="ErrorMessage" ErrorMessage="Enter your SSN">*</asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidatorSSN" runat="server" ControlToValidate="txtSocialSecurityNumber" CssClass="ErrorMessage" ErrorMessage="Enter Valid SSN" ValidationExpression="\d{3}-\d{2}-\d{4}">*</asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td class="collength">Home Phone</td>
        <td class="collength">
            <asp:TextBox ID="txtHomePhone" runat="server"></asp:TextBox>
        </td>
        <td class="collength">
            <asp:RequiredFieldValidator ID="RequiredPhoneValidator" runat="server" ControlToValidate="txtHomePhone" CssClass="ErrorMessage" ErrorMessage="Enter Home Phone  Number">*</asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidatorPhone" runat="server" ControlToValidate="txtHomePhone" CssClass="ErrorMessage" ErrorMessage="Enter a Valid Phone" ValidationExpression="((\(\d{3}\) ?)|(\d{3}-))?\d{3}-\d{4}">*</asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td class="collength">Email Address</td>
        <td class="collength">
            <asp:TextBox ID="txtEmailAddress" runat="server"></asp:TextBox>
        </td>
        <td class="collength">
            <asp:RequiredFieldValidator ID="RequiredEmailValidator" runat="server" ControlToValidate="txtEmailAddress" CssClass="ErrorMessage" ErrorMessage="Enter Email Address">*</asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidatorEmail" runat="server" ControlToValidate="txtEmailAddress" CssClass="ErrorMessage" ErrorMessage="Enter Valid Email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td class="collength">Start Year</td>
        <td class="collength">
            <asp:DropDownList ID="optStartYear" runat="server">
                <asp:ListItem>Choose</asp:ListItem>
                <asp:ListItem>2017</asp:ListItem>
                <asp:ListItem>2018</asp:ListItem>
                <asp:ListItem>2019</asp:ListItem>
                <asp:ListItem>2020</asp:ListItem>
            </asp:DropDownList>
        </td>
        <td class="collength">
            <asp:CustomValidator ID="n" runat="server" ClientValidationFunction="validateStartYear" CssClass="ErrorMessage" Display="Dynamic" ErrorMessage="Select A Valid Year" OnServerValidate="CustomValidator1_ServerValidate" ControlToValidate="optStartYear">*</asp:CustomValidator>
        </td>
    </tr>
    <tr>
        <td class="collength">Expected Cincinnati State Graduation Month</td>
        <td class="collength">
            <asp:RadioButtonList ID="radGraduationMonth" runat="server">
                <asp:ListItem Value="1">November</asp:ListItem>
                <asp:ListItem Value="2">June</asp:ListItem>
            </asp:RadioButtonList>
        </td>
        <td class="collength">
            <asp:RequiredFieldValidator ID="RequiredMonthValidator" runat="server" ControlToValidate="radGraduationMonth" CssClass="ErrorMessage" Display="Dynamic" ErrorMessage="Select Atleast One Option for Graduation Month">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="buttonAlignment">
            <asp:Button ID="btnSubmit" runat="server" Text="Submit" Width="100px" />
        </td>
        <td class="buttonAlignment">
            <asp:Button ID="btnReset" runat="server" Text="Reset" Width="100px" OnClick="btnReset_Click" />
        </td>
        <td class="collength">&nbsp;</td>
    </tr>
    <tr>
        <td colspan="3">
            <asp:ValidationSummary ID="ValidationErrorsSummary" runat="server" CssClass="ErrorMessage" />
        </td>
    </tr>
</table>

