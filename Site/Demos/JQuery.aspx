<%--
Form: FMain
Class: Visual Basic.Net #1
Author: Saniya Arab
Abstract: Week 6
--%>

<%@ Page Title="JQuery Demo" Language="C#" MasterPageFile="~/MasterPages/Frontend.master" AutoEventWireup="true" CodeFile="JQuery.aspx.cs" Inherits="Demos_JQuery" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
    <input id="Button1" type="button" value="button" />
  <script>
    $(document).ready(function() {
      $('#MainContent').css('background-color', 'green')
 
      $('#Button1').click(function() {
        $('#MainContent').css('background-color', 'red')
                      .animate({ width: '100px', height: '800px' })
      });
    });
  </script>
</asp:Content>

