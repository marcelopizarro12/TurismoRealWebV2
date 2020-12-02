<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Pagar.aspx.cs" Inherits="WebFinal.Cliente.Pagar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Button ID="Button1" runat="server" Text="Button"  OnClick="Button1_Click"/>


        <asp:GridView ID="GridView1" runat="server" AllowPaging="False" Visible="true"></asp:GridView>

    </form>
</body>
</html>
