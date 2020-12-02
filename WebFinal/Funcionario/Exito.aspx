<%@ Page Title="" Language="C#" MasterPageFile="~/Funcionario/PrincipalFuncionario.Master" AutoEventWireup="true" CodeBehind="Exito.aspx.cs" Inherits="WebFinal.Funcionario.Exito" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


       <div class="container margen_general" style="margin-top:40px; text-align:center">
        <div class="row">

            <div class="borde offset-3 col-sm-6">
                <h3 class="tireserva">¡Su check in se registró con éxito!</h3>

                <div class="container-fluid">

                    <div class="margen_general">
                        <img src="../Img/checked.png" alt="Alternate Text"/>
                    </div>

                   <form runat="server">
                    <div class="boton1 col-md-12 text-center mb-3">
                        
                        <asp:Button ID="Button1" CssClass="boton1 btn btn-primary" runat="server" Text="Ir a Inicio" OnClick="Button1_Click" />

                    </div>
                     <asp:GridView ID="GridView1" runat="server" AllowPaging="False" Visible="false"></asp:GridView>
                       <asp:Label ID="Label1" runat="server" Text="Label" Visible="false"></asp:Label>
                       <asp:Label ID="Label2" runat="server" Text="Label" Visible="false"></asp:Label>
                    </form>
                 </div>
               
            </div>
            <div class="offset-3"></div>



        </div>
    </div>






</asp:Content>
