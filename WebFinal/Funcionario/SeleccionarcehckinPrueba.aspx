<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SeleccionarcehckinPrueba.aspx.cs" Inherits="WebFinal.Funcionario.SeleccionarcehckinPrueba" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
<form runat="server">
    <asp:Label ID="Label1" runat="server" Text="Buscador de clientes"></asp:Label> <br />
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
    <br />

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
        <Columns>
            <asp:CommandField SelectText="Crear check in" ShowSelectButton="True" />
            <asp:BoundField DataField="ID_CHECK_IN" HeaderText="ID_CHECK_IN" />
            <asp:BoundField DataField="ID_REG_PAGO" HeaderText="Registro de pago" />
            <asp:BoundField DataField="CLIENTE_RUT" HeaderText="CLIENTE_RUT" />
            <asp:BoundField DataField="ID_RESERVAS" HeaderText="ID_RESERVA" />
            <asp:BoundField DataField="DEPARTAMENTO_ID_DEPTO" HeaderText="DEPARTAMENTO_ID" />
        </Columns>
    </asp:GridView>
    </form>
</body>
</html>
