<%--
    Form: FMain
    Class: Visual Basic.Net #1
    Author: Saniya Arab
    Abstract: Week 6 - Chapter 10 and 11
--%>
<%@ Page Title="Using jQuery" Language="C#" MasterPageFile="~/MasterPages/Frontend.master" AutoEventWireup="true" CodeFile="Homework4.aspx.cs" Inherits="Homework_Homework4" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
    
        <p>
       Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor 
        incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco 
        laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit 
        esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa 
        qui officia deserunt mollit anim id est laborum.

       The append method add or inserts content at the end of the selected HTML elements. For more details please visit <a href="https://www.w3schools.com/jquery/jquery_examples.asp" target="_blank">www.w3schools.com</a>
    </p>
   
    
    <input id="btnAppendText" type="button" value="Append Text" />
    <input id="btnAppendItem" type="button" value="Append Item" />
    
</asp:Content>

<asp:Content ID="Content3" runat="server" contentplaceholderid="cpClientScript">
     <script>
        $(document).ready(function(){
            $("#btnAppendText").click(function () {
                $("p").append(" <b>Appended text</b>.");
            });

            $("#btnAppendItem").click(function () {
                $("p").append("<li>Appended item</li>");
            });
        });
     </script>
   
</asp:Content>


