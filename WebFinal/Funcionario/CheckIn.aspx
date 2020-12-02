<%@ Page Title="" Language="C#" MasterPageFile="~/Funcionario/PrincipalFuncionario.Master" AutoEventWireup="true" CodeBehind="CheckIn.aspx.cs" Inherits="WebFinal.Funcionario.CheckIn" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    
    <div class="container" style="margin-top:30px;">
        <div class="row">

            <div class="borde col-sm-12 margen_general">
                    <h3 class="tireserva">Check In</h3>
                    <form method="post" name="serv_extra" runat="server">                                         
                        <div class="row">

                            <!-- Inicio col1-->
                            <div class="col-6 margen_general">                               
                                <div class="row">
                                        <div class="col-sm-12">
                                            <a>Rut:</a>
                                        </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-12">
                                        <div class="input-group" style="text-align:center ">
                                            <asp:Label ID="lblrut" runat="server" Text="Label"></asp:Label>                   
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
                                        <div class="input-group" style="text-align:center ">
                                            <asp:Label ID="lbldpto" runat="server" Text="Label"></asp:Label>                   
                                         </div>
                                    </div>
                                </div>
                                 <div class="row">
                                        <div class="col-sm-12">
                                            <a>Reserva Nro:</a>
                                        </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-12">
                                        <div class="input-group" style="text-align:center ">
                                            <asp:Label ID="lblresv" runat="server" Text="Label"></asp:Label>                   
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
                                            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>                  
                                         </div>
                                    </div>
                                </div>                             
                            </div>
                            <!-- Termino col1-->



                            <!-- Inicio col2-->
                            <div class="col-5 offset-1 margen_general">  
                                




                                <div class="row">
                                        <div class="col-sm-12">
                                            <a>Segun registros en el sistema se efectuo un pago de la reserva <asp:Label ID="lblresv1" runat="server" Text="Label"></asp:Label> de $<asp:Label ID="lblres" runat="server" Text="Label"></asp:Label> del Total de una Reserva de $<asp:Label ID="lbltt" runat="server" Text="Label"></asp:Label> por lo cual el monto restante a pagar es de: $<asp:Label ID="lblResto" runat="server" Text="Label"></asp:Label></a>
                                        </div>
                                </div>
                        <!--        <div class="row">
                                    <div class="col-sm-12">                                       
                                       <div class="boton1 col-md-12 text-center mb-3">
                                            <button type="submit" class="boton1 btn btn-primary">Pagar</button>
                                        </div>
                                    </div>
                                </div>                             
                            </div>
                            <!-- Termino col2-->
                                </div>

                            <div class="boton1 col-md-12 text-center mb-3">
                                <asp:Button ID="Button1" runat="server" CssClass="boton1 btn btn-primary" Text="Ingresar" OnClick="Button1_Click" />
                                
                            </div>
                            

                        </div>
                        <asp:GridView ID="GridView1" runat="server" Visible="false" AutoGenerateColumns="False">
                            <Columns>
                                <asp:BoundField DataField="pago_reserva" HeaderText="reseva" />
                                <asp:BoundField DataField="subtotal" HeaderText="total" />
                                <asp:BoundField DataField="pgresto" HeaderText="resto" />
                            </Columns>
                        </asp:GridView>
                        <asp:GridView ID="GridView2" runat="server" Visible="false"></asp:GridView>
                        <asp:GridView ID="GridView3" runat="server" Visible="false"></asp:GridView>
                    </form>                               
            </div>


        </div>
    </div>

</asp:Content>
