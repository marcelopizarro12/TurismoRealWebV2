<%@ Page Title="" Language="C#" MasterPageFile="~/Cliente/PrincipalUsuario.Master" AutoEventWireup="true" CodeBehind="Confirmacion.aspx.cs" Inherits="WebFinal.Cliente.Confimacion" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

        <div class="container margen_general" style="margin-top:30px; text-align:center">
        <div class="row">

            <div class="borde offset-3 col-sm-6">
                <h3 class="tireserva">Confirme su reserva</h3>

                <div class="container-fluid">
                                                           
                        <div class="row">
                            <div class="col-12">
                                    
                                <div class="row">
                                        <div class="col-sm-12">
                                            <a>Desde:</a>
                                        </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-12">
                                        <div class="input-group" style="text-align:center ">
                                            <asp:Label ID="lbldesde" runat="server" Text="Label"></asp:Label>                      
                                         </div>
                                    </div>
                                </div>

                                <div class="row">
                                        <div class="col-sm-12">
                                            <a>Hasta:</a>
                                        </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-12">
                                        <div class="input-group" style="text-align:center">
                                            <asp:Label ID="lblhasta" runat="server" Text="Label"></asp:Label>                  
                                         </div>
                                    </div>
                                </div>

                                <div class="row">
                                        <div class="col-sm-12">
                                            <a>Número de acompañantes:</a>
                                        </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-12">
                                        <div class="input-group" style="text-align:center ">
                                            <asp:Label ID="lblacomp" runat="server" Text="Label"></asp:Label>                    
                                         </div>
                                    </div>
                                </div>
                                   

                                <div class="row">
                                        <div class="col-sm-12">
                                            <a>Total reserva:</a>
                                        </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-12">
                                        <div class="input-group" style="text-align:center ">
                                            <asp:Label ID="lblPago" runat="server" Text="Label"></asp:Label>                    
                                         </div>
                                    </div>
                                </div>

                                <div class="row">
                                        <div class="col-sm-12">
                                            <a>Nro. Boleta</a>
                                        </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-12">
                                        <div class="input-group" style="text-align:center ">
                                            <asp:Label ID="lblBoleta" runat="server" Text="Label"></asp:Label>                    
                                         </div>
                                    </div>
                                </div>
                                  <div class="row">
                                        <div class="col-sm-12">
                                            <a>Rut Cliente</a>
                                        </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-12">
                                        <div class="input-group" style="text-align:center ">
                                            <asp:Label ID="lblrut" runat="server" Text="Label"></asp:Label>                    
                                         </div>
                                    </div>
                                </div>
                                 <form id="form1" runat="server" method="post">

                               <asp:Label ID="Label2" runat="server" Text="Label" Visible="false"></asp:Label>
                               <asp:Label ID="Label1" runat="server" Text="Label" Visible="false"></asp:Label>
                                <div class="col-md-12 text-center mb-3">
                                    <asp:TextBox ID="token_ws" runat="server" Visible="true"></asp:TextBox>
                                   <asp:Button ID="Button1"  runat="server" Text="Pagar" OnClick="Button1_Click" />                   
                                </div>
                            </form>

                            </div>
                             
                        </div>                  
                      
                </div>
            </div>
            <div class="offset-3"></div>



        </div>
    </div>


   

</asp:Content>
