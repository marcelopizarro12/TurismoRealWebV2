<%@ Page Title="" Language="C#" MasterPageFile="~/Cliente/PrincipalUsuario.Master" AutoEventWireup="true" CodeBehind="Usuario.aspx.cs" Inherits="WebFinal.Cliente.Usuario" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <style type="text/css">
        .auto-style1 {
            width: 808px;
            height: 269px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  <div style="margin-top:70px">
    <asp:Label ID="Label2" runat="server" Text="Bienvenido Usuario"></asp:Label> &nbsp;&nbsp;&nbsp;<asp:Label ID="lblid" runat="server" Visible="false"></asp:Label>
      <asp:Label ID="lblnombre" runat="server" Text="Label"></asp:Label>
  </div>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       
  <form runat="server"> 
    <asp:Button ID="Btnhistorico" runat="server" Text="Historial" OnClick="Btnhistorico_Click" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Btnactivo" runat="server" Text="Reservas Activas " OnClick="Btnactivo_Click"  />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Btnreservar" runat="server" Text="Departamentos" OnClick="Btnreservar_Click" />
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="BtnAcomp" runat="server" Text="Registrar Acompañanates" OnClick="BtnAcomp_Click" />
    
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="BtnServ" runat="server" Text="Servicios Extra" OnClick="BtnServ_Click"/>
    <br />
    <br />

      <table class="auto-style1">
      <tr>
        <td style="text-align: center; vertical-align: top"><asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="XX-Large" Font-Underline="True" ></asp:Label></td>
      </tr>
      <tr>
        <td>
            <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Height="135px" Width="780px">
                <AlternatingRowStyle BackColor="White" />
                <EditRowStyle BackColor="#2461BF" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#EFF3FB" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#F5F7FB" />
                <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                <SortedDescendingCellStyle BackColor="#E9EBEF" />
                <SortedDescendingHeaderStyle BackColor="#4870BE" />
            </asp:GridView>
         
          </td>
          <td>    
              <asp:GridView ID="GridView3" runat="server" OnSelectedIndexChanged="GridView3_SelectedIndexChanged">
                 <Columns>
                     <asp:CommandField ShowSelectButton="True" />

                 </Columns>
             </asp:GridView>


          </td>
           <td>    
              <asp:GridView ID="GridView4" runat="server" OnSelectedIndexChanged="GridView4_SelectedIndexChanged">
                 <Columns>
                     <asp:CommandField ShowSelectButton="True" SelectText="Cancelar" />

                 </Columns>
             </asp:GridView>

               <%--  --%>
          </td>
      </tr>
    </table>
     
    <asp:GridView ID="GridView2" runat="server" Enabled="False" AutoGenerateColumns="False" Visible="false">
        <Columns>
            <asp:BoundField DataField="nombre" />
        </Columns>
    </asp:GridView>
</form>
</asp:Content>
