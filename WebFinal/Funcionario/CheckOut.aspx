<%@ Page Title="" Language="C#" MasterPageFile="~/Funcionario/PrincipalFuncionario.Master" AutoEventWireup="true" CodeBehind="CheckOut.aspx.cs" Inherits="WebFinal.Funcionario.CheckOut" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

      <div class="container" style="margin-top:30px;">
        <div class="row">

            <div class="borde col-sm-12 margen_general">
                    <h3 class="tireserva">Check Out</h3>
                    <form method="post" name="serv_extra" runat="server">                                         
                        <div class="row">

                            <!-- Inicio col1-->
                            <div class="col-6 margen_general">                               
                                <div class="row">
                                        <div class="col-sm-12">
                                            <a>Rut Cliente:</a>
                                        </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-12">
                                        <div class="input-group" style="text-align:center !important">
                                            <asp:Label ID="lblrut" runat="server" Text="Label"></asp:Label>                    
                                         </div>
                                    </div>
                                </div>

                                  <div class="row">
                                        <div class="col-sm-12">
                                            <a>Nombre del Personal:</a>
                                        </div>
                                </div>

                                <div class="row">
                                    <div class="col-sm-12">
                                        <div class="input-group" style="text-align:center !important">
                                            <asp:Label ID="lblrutp" runat="server" Text="Label"></asp:Label>             
                                         </div>
                                    </div>
                                </div>

                                  <div class="row">
                                        <div class="col-sm-12">
                                            <a>Nro departamento:</a>
                                        </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-12">
                                        <div class="input-group" style="text-align:center !important">
                                            <asp:Label ID="lbldpto" runat="server" Text="Label"></asp:Label>       
                                         </div>
                                    </div>
                                </div>
                                      <div class="row">
                                        <div class="col-sm-12">
                                            <a>Nro Reserva:</a>
                                        </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-12">
                                        <div class="input-group" style="text-align:center !important">
                                            <asp:Label ID="lblreserva" runat="server" Text="Label"></asp:Label>       
                                         </div>
                                    </div>
                                </div>
                                        <div class="row">
                                        <div class="col-sm-12">
                                            <a>Nro de Arriendo:</a>
                                        </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-12">
                                        <div class="input-group" style="text-align:center !important">
                                            <asp:Label ID="lblreg" runat="server" Text="Label"></asp:Label>       
                                         </div>
                                    </div>
                                </div>

                                <div class="row">
                                        <div class="col-sm-12">
                                            <a>Descripción:</a>
                                        </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-12">
                                        <div class="input-group" style="text-align:center !important">
                                            <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control"></asp:TextBox>
                                                                 
                                         </div>
                                    </div>
                                </div>                             
                            </div>
                              <div class="row">
                                        <div class="col-sm-12">
                                            <a>Multa:</a>
                                        </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-12">
                                        <div class="input-group" style="text-align:center !important">
                                            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                                                                 
                                         </div>
                                    </div>
                                </div>                             
                            

                            <!-- Termino col1-->

                      


                            <div class="boton1 col-md-12 text-center mb-3">
                                <asp:Button ID="Button1" runat="server" CssClass="boton1 btn btn-primary" Text="Ingresar " OnClick="Button1_Click"/>
                                
                            </div>
                            

                        </div>
                        <asp:GridView ID="GridView1" runat="server" Visible="false"></asp:GridView>
                        <asp:Label ID="lblidpers" runat="server" Text="Label" Visible="false"></asp:Label>
                    </form>                               
            </div>


        </div>
    </div>

</asp:Content>
