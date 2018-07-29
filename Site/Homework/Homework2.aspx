<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Homework2.aspx.cs" Inherits="Homework_Homework2" %>

<!DOCTYPE html>
<%--
    Form: FMain
    Class: Visual Basic.Net #1
    Author: Saniya Arab
    Abstract: Homework 2 /Week 3 - Chapter 5
--%>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Cash Register - Homework 2</title>
    <link href="../Styles/cashRegister.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="tableLength">
            <thead>
            <tr>
                <th class=".mergedCol" colspan="2"> Cash Register
                </th>
            </tr>
            </thead>
            <tr>
                <td class="firstcolwidth">
                    <asp:Label ID="lblItem1" runat="server" Text="Item 1:"></asp:Label>
                </td>
                <td class="secondColWidth">
                    <asp:TextBox ID="txtItem1" runat="server" Width="100px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="firstcolwidth">
                    <asp:Label ID="lblItem2" runat="server" Text="Item 2:"></asp:Label>
                </td>
                <td class="secondColWidth">
                    <asp:TextBox ID="txtItem2" runat="server" Width="100px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="firstcolwidth">
                    <asp:Label ID="lblItem3" runat="server" Text="Item 3:"></asp:Label>
                </td>
                <td class="secondColWidth">
                    <asp:TextBox ID="txtItem3" runat="server" Width="100px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="firstcolwidth">
                    <asp:Label ID="lblItem4" runat="server" Text="Item 4:"></asp:Label>
                </td>
                <td class="secondColWidth">
                    <asp:TextBox ID="txtItem4" runat="server" Width="100px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="firstcolwidth">
                    <asp:Label ID="lblItem5" runat="server" Text="Item 5:"></asp:Label>
                </td>
                <td class="secondColWidth">
                    <asp:TextBox ID="txtItem5" runat="server" Width="100px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="border" colspan="2">
                </td>
            </tr>        
            <tr>
                <td class="mergedCol" colspan="2">
                    <asp:CheckBox ID="chkCoupon" runat="server" Text="Coupon(10% Off)" />
                </td>
            </tr>
            <tr>
                <td class="firstcolwidth">
                    <asp:Label ID="lblSubTotal" runat="server" Text="SubTotal:"></asp:Label>
                </td>
                <td class="secondColWidth">
                    <asp:TextBox ID="txtSubTotal" runat="server" Width="100px" Enabled="False"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="firstcolwidth">
                    <asp:Label ID="lblTax" runat="server" Text="Tax(6.25%):"></asp:Label>
                </td>
                <td class="secondColWidth">
                    <asp:TextBox ID="txtTax" runat="server" Width="100px" Enabled="False"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="border" colspan="2">
                </td>
            </tr>        
            <tr>
                <td class="firstcolwidth">
                    <asp:Label ID="lblTotal" runat="server" Text="Total:"></asp:Label>
                </td>
                <td class="secondColWidth">
                    <asp:TextBox ID="txtTotal" runat="server" Width="100px" Enabled="False"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="mergedCol" colspan="2">
                    <asp:Button ID="btnCaculate" runat="server" Text="Calculate Total" Width="200px" OnClick="btnCaculate_Click" />
                </td>
            </tr>
            <tr>
                <td class="mergedCol" colspan="2">
                    <asp:Button ID="btnClear" runat="server" Text="Clear" Width="200px" OnClick="btnClear_Click" />
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
