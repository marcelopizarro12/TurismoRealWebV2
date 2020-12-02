<%@ Page Title="" Language="C#" MasterPageFile="~/Funcionario/PrincipalFuncionario.Master" AutoEventWireup="true" CodeBehind="Funcionario.aspx.cs" Inherits="WebFinal.Funcionario.Funcionario" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="margin-top:70px">
        <asp:Label ID="Label1" runat="server" Text="Bienvenido "></asp:Label><asp:Label ID="Label2" runat="server" ></asp:Label>
    </div>
    <form runat="server">
    <asp:Button ID="Button1" runat="server" Text="Check In" OnClick="Button1_Click" />
    <asp:Button ID="Button2" runat="server" Text="Check Out" OnClick="Button2_Click" />
    <asp:Button ID="Button3" runat="server" Text="Log Out" OnClick="Button3_Click" />


    <asp:GridView ID="GridView1" runat="server" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Visible="False"></asp:GridView>
    </form>
      <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    
</asp:Content>
