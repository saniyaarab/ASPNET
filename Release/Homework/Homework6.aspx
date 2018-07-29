<%@ Page Title="Homework 6 - Use of HTML5 element" Language="C#" MasterPageFile="~/MasterPages/Frontend.master" AutoEventWireup="true" CodeFile="Homework6.aspx.cs" Inherits="Homework_Homework6" %>
<%--
    Form: FMain
    Class: Visual Basic.Net #1
    Author: Saniya Arab
    Abstract: Week 12 - Homework 6
--%>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="cpMainContent" Runat="Server">
    <h1>Canvas HTML5 Element</h1>
    <canvas id="myCanvas"></canvas>
    <script>
    var strCanvas = document.getElementById("myCanvas");
    var strContext = strCanvas.getContext("2d");
    strContext.fillStyle = "#00FF00";
    strContext.fillRect(50, 50, 200, 100);
    </script>
    <p>The canvas element is HTML code that uses width and height attributes. The HTML5 API allows javascript to generate graphics and Animation. I used this website as a reference and quick tutorial on how to use it. <a href="https://www.sitepoint.com/html5-canvas-tutorial-introduction/" target="_blank">www.sitepoint.com</a> </p>
</asp:Content>


