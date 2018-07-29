<%--
Form: FMain
Class: Visual Basic.Net #1
Author: Saniya Arab
Abstract: Week 7 - Chapter 10 and 11
--%>
<%@ Page Title="Webservices Demo" Language="C#" MasterPageFile="~/MasterPages/Frontend.master" AutoEventWireup="true" CodeFile="Webservices.aspx.cs" Inherits="Demos_Webservices" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="cpMainContent" Runat="Server">
    <asp:ScriptManagerProxy ID="ScriptManagerProxy1" runat="server">
        <Services> 
            <asp:ServiceReference Path="~/WebServices/CNameService.svc" />  
        </Services>
    </asp:ScriptManagerProxy>
    <input id="txtYourName" type="text" /><input id="btnSayHello" type="button" value="Say Hello" onclick="helloWorld();"/>
    <script>
  function helloWorld()
  {
    var strYourName = document.getElementById('txtYourName').value;
    CNameService.HelloWorld(strYourName, helloWorldCallback);
  }
 
  function helloWorldCallback(result)
  {
    alert(result);
  }
</script>
</asp:Content>

