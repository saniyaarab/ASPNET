<%--
Form: FMain
Class: Visual Basic.Net #1
Author: Saniya Arab
Abstract: Weather Control - Midterm
--%>
<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Weather.ascx.cs" Inherits="Controls_Weather" %>
<link href="../Styles/Weather.css" rel="stylesheet" />

<%--<script>
    $(document).ready(function () {
        $.simpleWeather({
        location: '45230',
        unit: 'f',
        success: function (weather) {
            html = '<p>' + weather.temp + '&deg;' + weather.units.temp + '</p>';

            $("#weather").html(html);
        },
        error: function (error) {
            $("#weather").html('<p>' + error + '</p>');
        }
    });
});
</script>--%>

<script> 
    $(document).ready(function () {
        $('#btnSearchWeather').click(function () {
            var strZipcode = document.getElementById('<%= txtZipcode.ClientID %>');
            if (!Page_IsValid) {
                alert("Please Enter Valid Zipcode");
                return;
            }
                $.simpleWeather({
                location: strZipcode.value,
                woeid: '',
                unit: 'f',
                success: function (weather) {
                    html = '<h2><i class="icon-' + weather.code + '"></i> ' + weather.temp + '&deg;' + weather.units.temp + '</h2>';
                    html += weather.city + ', ' + weather.region + '</br>';
                    html +=  weather.currently ;
                    $("#weather").html(html);
                },
                error: function (error) {
                    $("#weather").html('<p>' + error + '</p>');
                }
            });
        });
    });
</script>


<div id="search">

    <strong>Enter Your Zipcode:</strong>
    <asp:RequiredFieldValidator ID="RequiredZipcodeValidator" runat="server" ControlToValidate="txtZipcode" CssClass="ErrorMessage" ErrorMessage="Enter Zipcode">*</asp:RequiredFieldValidator>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtZipcode" CssClass="ErrorMessage" ErrorMessage="Enter Valid Zipcode" ValidationExpression="\d{5}(-\d{4})?">*</asp:RegularExpressionValidator>
    <asp:TextBox ID="txtZipcode" runat="server" Width="237px"></asp:TextBox>
    <input type="button" id="btnSearchWeather" value="Search"/>    
    <br>
    <br>
    <br>
    <br>
    <br>
</div>
  
<asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>
<div id="weather">
</div>
  </ContentTemplate>
</asp:UpdatePanel>







  




