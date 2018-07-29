<%@ Page Language="C#" AutoEventWireup="true" CodeFile="State.aspx.cs" Inherits="Site_Demos_State" %>

<!DOCTYPE html>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <%--
Form: FMain
Class: Visual Basic.Net #1
Author: Saniya Arab
Abstract: Homework 2 - Chapter 4
--%>
    <title>State</title>
    <style type="text/css">
        .colWidth {
            width: 403px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="tableWidth">
            <tr>
                <td>
                    <asp:Label ID="lblString" runat="server" Text="Label" EnableViewState="False"></asp:Label>
                </td>
                <td>
                    <asp:Button ID="btnSetDate" runat="server" OnClick="btnSetDate_Click" Text="Set Date" />
                </td>
            </tr>
            <tr>
                <td class="colWidth">
                    <asp:Calendar ID="calState" runat="server" BackColor="White" BorderColor="#999999" CellPadding="4" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" Height="180px" Width="200px">
                        <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
                        <NextPrevStyle VerticalAlign="Bottom" />
                        <OtherMonthDayStyle ForeColor="#808080" />
                        <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
                        <SelectorStyle BackColor="#CCCCCC" />
                        <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
                        <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
                        <WeekendDayStyle BackColor="#FFFFCC" />
                    </asp:Calendar>
                </td>
                <td>
                    <asp:Button ID="btnPlainPostback" runat="server" Text="Plain Postback" EnableViewState="False" />
                </td>
            </tr>
            <tr>
                <td class="colWidth">
                    <asp:TextBox ID="txtDate" runat="server"></asp:TextBox>
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
