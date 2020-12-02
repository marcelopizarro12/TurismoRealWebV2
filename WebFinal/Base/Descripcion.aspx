<%@ Page Title="" Language="C#" MasterPageFile="~/Base/Principal.Master" AutoEventWireup="true" CodeBehind="Descripcion.aspx.cs" Inherits="WebFinal.Base.Descripcion" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <style type="text/css">
        .auto-style1 {
            width: 824px;
            font-size: medium;
        }
        .auto-style2 {
            width: 280px;
            font-size: medium;
        }
        .auto-style4 {
            width: 577px;
            font-size: medium;
        }
        .auto-style5 {
            width: 618px;
            font-size: medium;
        }
        .auto-style6 {
            width: 328px;
            font-size: medium;
        }
        .auto-style7 {
            font-size: x-large;
            text-decoration: underline;
        }
        .auto-style8 {
            width: 328px;
            font-size: medium;
        }
        .auto-style9 {
            width: 328px;
            font-size: medium;
            height: 26px;
        }
        .auto-style10 {
            width: 577px;
            font-size: medium;
            height: 26px;
        }
        .auto-style11 {
            height: 26px;
        }
        .auto-style12 {
            font-size: medium;
            text-decoration: underline;
            text-align:center;
        }
         .auto-style13 {
            font-size: medium;
            
            
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<form runat="server">
    <table class="auto-style1" style="margin-top:65px">
      <tr>
        <td colspan="4" style="text-align: center; vertical-align: top" class="auto-style7"><span class="negrita">Departamento<br />
            </span></td>
      </tr>
      <tr>
        <td class="auto-style5"></td>
        <td style="text-align: center" class="auto-style6">Nro. Depto</td>
        <td style="text-align: center" class="auto-style4">
            <asp:Label ID="lblid" runat="server" Text="Label"></asp:Label>
          </td>
        <td></td>
      </tr>
      <tr>
        <td class="auto-style5" rowspan="4">
            <asp:Image ID="Image1"  runat="server" ImageUrl="" Height="166px" Width="397px" />
          </td>
        <td style="text-align: center" class="auto-style6">Metros Cuadrados:</td>
        <td style="text-align: center" class="auto-style4">
            <asp:Label ID="lblmt" runat="server" Text="Label"></asp:Label>
          </td>
        <td></td>
      </tr>
       <tr>
        <td style="text-align: center" class="auto-style8">Ubicacion</td>
        <td style="text-align: center" class="auto-style4">
            <asp:Label ID="lblub" runat="server" Text="Label"></asp:Label>
           </td>
        <td></td>
      </tr>
      <tr>
        <td style="text-align: center" class="auto-style9">Habitaciones</td>
        <td style="text-align: center" class="auto-style10">
            <asp:Label ID="lblhb" runat="server" Text="Label"></asp:Label>
          </td>
        <td class="auto-style11"></td>
      </tr>
      <tr>
        <td style="text-align: center" class="auto-style8">Camas</td>
        <td style="text-align: center" class="auto-style4">
            <asp:Label ID="lblcm" runat="server" Text="Label"></asp:Label>
          </td>
        <td></td>
      </tr>
      <tr>
        <td class="auto-style12" colspan="2">&nbsp;Descripcion&nbsp;</td>
        <td style="text-align: center" class="auto-style4">&nbsp;</td>
        <td></td>
      </tr>
      <tr>
        <td class="auto-style13" colspan="3" rowspan="3">Departamento Ubicado en
            <asp:Label ID="lblub1" runat="server" Text="Label"></asp:Label>
            <asp:Label ID="lbldesc" runat="server" Text="Label"></asp:Label>
            , el cual Consta de
            
            , e incluye
            <asp:Label ID="lblinclud" runat="server" Text="Label"></asp:Label>
            .<br />
            Por lo cual se le atribuye un valor de $<asp:Label ID="lblprice" runat="server" Text="Label"></asp:Label>
&nbsp;por noche. </td>
        <td></td>
      </tr>
      <tr>
        <td class="auto-style2"></td>
      </tr>
      <tr>
        <td>
            <asp:Label ID="Label1" runat="server" Text="Es necesario iniciar sesion para generar una reserva"></asp:Label>
            <asp:Button ID="Button1" runat="server" Text="Iniciar Sesion" OnClick="Button1_Click"/>

        </td>
      </tr>
      </table>

            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Height="171px"  Width="162px" Visible="False">
                <Columns>
                    <asp:BoundField DataField="id_depto" HeaderText="Id" />
                    <asp:BoundField DataField="metros_cua" HeaderText="Metros Cuadrados" />
                    <asp:BoundField DataField="descripcion" HeaderText="descripcion" />
                    <asp:BoundField DataField="direccion" HeaderText="direccion" />
                    <asp:BoundField DataField="habitacion" HeaderText="Habitaciones" />
                    <asp:BoundField DataField="camas" HeaderText="Camas" />
                    <asp:BoundField DataField="precio" HeaderText="precio" />
                    <asp:BoundField DataField="incluido" HeaderText="incluido" />
                </Columns>
            </asp:GridView>

                    
</form>

    
    


</asp:Content>
