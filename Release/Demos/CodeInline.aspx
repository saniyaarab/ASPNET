<%@ Page Language="C#" %>

<!DOCTYPE html>
<%--
    Form: FMain
    Class: Visual Basic.Net #1
    Author: Saniya Arab
    Abstract: Homework 1
--%>

<script runat="server">

    protected void Page_Load(object sender, EventArgs e)
    {
        lblHello.Text = "Hello World; the time is now " + DateTime.Now.ToString();
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <title> CodeInline</title>
</head>
<body>
  <form id="form1" runat="server">
  <div>
  
      <asp:Label ID="lblHello" runat="server" Text="Label"></asp:Label>
  
  </div>
  </form>
</body>
</html>
