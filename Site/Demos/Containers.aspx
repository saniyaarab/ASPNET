<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Containers.aspx.cs" Inherits="Site_Demos_Containers" %>

<!DOCTYPE html>
<%--
Form: FMain
Class: Visual Basic.Net #1
Author: Saniya Arab
Abstract: Homework 2 - Chapter 4
--%>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Containers</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:CheckBox ID="cbShowPanel" runat="server" AutoPostBack="True" Text="Show Panel" OnCheckedChanged="cbShowPanel_CheckedChanged" />
        <asp:Panel ID="pContainer" runat="server" Visible="False">
            <asp:Wizard ID="wContainer" runat="server" ActiveStepIndex="0" OnFinishButtonClick="Wizard1_FinishButtonClick" Width="500px">
                <WizardSteps>
                    <asp:WizardStep runat="server" title="About You">
                        Type your name<asp:TextBox ID="txtYourName" runat="server"></asp:TextBox>
                    </asp:WizardStep>
                    <asp:WizardStep runat="server" title="Favorite Language" StepType="Finish">
                        <asp:DropDownList ID="lstFavoriteLanguage" runat="server">
                            <asp:ListItem>C#</asp:ListItem>
                            <asp:ListItem>Visual Basic</asp:ListItem>
                            <asp:ListItem>CSS</asp:ListItem>
                        </asp:DropDownList>
                    </asp:WizardStep>
                    <asp:WizardStep runat="server" StepType="Complete" Title="Ready">
                        <asp:Label ID="lblResult" runat="server" Text="Label"></asp:Label>
                    </asp:WizardStep>
                </WizardSteps>
            </asp:Wizard>
        </asp:Panel>
    
    </div>
    </form>
</body>
</html>
