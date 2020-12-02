<%@ Page Title="" Language="C#" MasterPageFile="~/Funcionario/PrincipalFuncionario.Master" AutoEventWireup="true" CodeBehind="SeleccionarChekout.aspx.cs" Inherits="WebFinal.Funcionario.SeleccionarChekout" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
    
   <form runat="server" style="margin-top:75px;"> 
    <asp:Label ID="Label1" runat="server" Text="Buscador de clientes"></asp:Label> <br />
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
    <br />
    <asp:GridView ID="GridView1" runat="server" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
        <Columns>
            <asp:CommandField SelectText="Check Out" ShowSelectButton="True" />
        </Columns>
       </asp:GridView>
    </form>
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
</asp:Content>
