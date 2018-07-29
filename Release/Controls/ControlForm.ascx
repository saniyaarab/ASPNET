<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ControlForm.ascx.cs" Inherits="Controls_ControlForm" %>
<%--
Form: FMain
Class: Visual Basic.Net #1
Author: Saniya Arab
Abstract: Homework week 5
--%>
<style type="text/css">
    .tablelength {
        width: 613px;
        margin-right: 225px;
    }
    .collength{
        width: 612px;
    }
</style>

<h1>
    Get in touch with us
</h1>
<script>
  function validatePhoneNumbers(source, args)
  {
    var strPhoneHome = document.getElementById('<%= txtPhoneHome.ClientID %>');
    var strPhoneBusiness = document.getElementById('<%= txtPhoneBusiness.ClientID %>');
      if (strPhoneHome.value != '' || strPhoneBusiness.value != '')
    {
      args.IsValid = true;
    }
    else
    {
      args.IsValid = false;
    }
  }
</script>
<asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>
<div id="TableWrapper">
<table class="tablelength" runat="server" id="FormTable">
    <tr>
        <td colspan="3">Use the form below to get in touch with us. Enter your name, e-mail address, and your home or buisness phone number to get in touch with us.</td>
    </tr>
    <tr>
        <td class="collength">Name</td>
        <td>
            <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
        </td>
        <td class="collength">
            <asp:RequiredFieldValidator ID="ErrorValidation" runat="server" ControlToValidate="txtName" CssClass="ErrorMessage" ErrorMessage="Enter your name">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="collength">EmailAddress</td>
        <td class="collength">
            <asp:TextBox ID="txtEmail" runat="server" TextMode="Email"></asp:TextBox>
        </td>
        <td class="collength">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtEmail" CssClass="ErrorMessage" ErrorMessage="Enter an e-mail address">*</asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtEmail" CssClass="ErrorMessage" ErrorMessage="Enter a valid e-mail address" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td class="collength">ConfirmEmailAddress</td>
        <td class="collength">
            <asp:TextBox ID="txtConfirmEmail" runat="server" TextMode="Email"></asp:TextBox>
        </td>
        <td class="collength">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtConfirmEmail" CssClass="ErrorMessage" ErrorMessage="Confirm the e-mail address">*</asp:RequiredFieldValidator>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtEmail" ControlToValidate="txtConfirmEmail" CssClass="ErrorMessage" ErrorMessage="The e-mail addresses doon't match">*</asp:CompareValidator>
        </td>
    </tr>
    <tr>
        <td class="collength">PhoneHome</td>
        <td class="collength">
            <asp:TextBox ID="txtPhoneHome" runat="server"></asp:TextBox>
        </td>
        <td class="collength">
            <asp:CustomValidator ID="CustomValidator1" runat="server" ClientValidationFunction="validatePhoneNumbers" CssClass="ErrorMessage" Display="Dynamic" ErrorMessage="Enter your home or business phone number" OnServerValidate="CustomValidator1_ServerValidate">*</asp:CustomValidator>
        </td>
    </tr>
    <tr>
        <td class="collength">PhoneBusiness</td>
        <td class="collength">
            <asp:TextBox ID="txtPhoneBusiness" runat="server"></asp:TextBox>
        </td>
        <td class="collength">&nbsp;</td>
    </tr>
    <tr>
        <td class="collength">Comments</td>
        <td class="collength">
            <asp:TextBox ID="txtComments" runat="server" TextMode="MultiLine"></asp:TextBox>
        </td>
        <td class="collength">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtComments" CssClass="ErrorMessage" ErrorMessage="Enter a comment">*</asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="collength">&nbsp;</td>
        <td class="collength">
            <asp:Button ID="btnSend" runat="server" Text="Send" OnClick="btnSend_Click" />
        </td>
        <td class="collength">&nbsp;</td>
    </tr>
    <tr>
        <td colspan="3">
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" CssClass="ErrorMessage" HeaderText="Please correct the following errors:" />
        </td>
    </tr>
</table>
</div>
<asp:Label ID="lblMessage" runat="server" Text="Message Sent" Visible="False" />
        <p runat="server" id="MessageSentPara" visible="False">Thank you for your message.
           We'll get in touch with you if necessary.</p>
        </ContentTemplate>
</asp:UpdatePanel>
<asp:UpdateProgress ID="UpdateProgress1" runat="server"
               AssociatedUpdatePanelID="UpdatePanel1">
  <ProgressTemplate>
    <div class="PleaseWait">
      Please Wait...
    </div>
  </ProgressTemplate>
</asp:UpdateProgress>
<script>
  $(function() 
  {   
    $('form').bind('submit', function()
    {
      if (Page_IsValid)
      {
        $('#TableWrapper').slideUp(3000);
      }
    });
  });
  function pageLoad() {
      $('.Attention').animate({ width: '600px' }, 3000).
                 animate({ width: '100px' }, 3000).fadeOut('slow');
  }
</script>

