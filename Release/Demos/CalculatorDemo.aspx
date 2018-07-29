<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CalculatorDemo.aspx.cs" Inherits="Demos_CalculatorDemo" Trace="false" %>

<!DOCTYPE html>
<%--
    Form: FMain
    Class: Visual Basic.Net #1
    Author: Saniya Arab
    Abstract: Homework/Week 3 - Chapter 5
--%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>CalculatorDemo</title>
    <style type="text/css">
        .labelwidth {
            width: 100%;
            font-size: 20px;
            color: #dd1f1f
        }
        .textboxWidth {
            width: 290px;
        }
        .buttonWidth {
            width: 290px;
        }
        h1 {
        color: darkred;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <h1>CALCULATOR DEMO</h1>
    <div>
    
        <table class="labelwidth">
            <tr>
                <td colspan="3">
                    <asp:Label ID="lblResult" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="textboxWidth">
                    <asp:TextBox ID="txtfirstValue" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:DropDownList ID="lslOperatorlList" runat="server">
                        <asp:ListItem>+</asp:ListItem>
                        <asp:ListItem>-</asp:ListItem>
                        <asp:ListItem>*</asp:ListItem>
                        <asp:ListItem>/</asp:ListItem>
                    </asp:DropDownList>
                    <asp:TextBox ID="txtSecondValue" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="buttonWidth">
                    &nbsp;</td>
                <td>
                    <asp:Button ID="btnCalculate" runat="server" OnClick="btnCalculate_Click" Text="Calculate" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
