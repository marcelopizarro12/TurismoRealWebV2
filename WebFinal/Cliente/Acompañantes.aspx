<%@ Page Title="" Language="C#" MasterPageFile="~/Cliente/PrincipalUsuario.Master" AutoEventWireup="true" CodeBehind="Acompañantes.aspx.cs" Inherits="WebFinal.Cliente.Acompañantes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <form runat="server" style="margin-top:85px;">
                <!-- Inicio columna 2-->
            <div class="col-md-4 offset-md-1 borde col-sm-12">
                <h3 class="tireserva">Reservar</h3>
                <div class="container-fluid">
                   
                        
                    

                        
                                <div class="row">
                                        <div class="col-sm-12">
                                            <a>Nro Reserva:</a>
                                        </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-12">
                                        <div class="input-group" style="text-align:center !important">
                                            <asp:Label ID="lblres" runat="server" Text="Label"></asp:Label>             
                                         </div>
                                    </div>
                                </div>
                                    


                                <div class="row">
                                        <div class="col-sm-12">
                                            <a>Rut Acompañante:</a>
                                        </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-12">
                                        <div class="input-group" style="text-align:center !important">
                                           <asp:TextBox ID="TextBox1" CssClass="form-control" TextMode="Number" runat="server"></asp:TextBox>                     
                                         </div>
                                    </div>
                                </div>


                                <div class="row">
                                        <div class="col-sm-12">
                                            <a>Nombre Acompañante</a>
                                        </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-12">
                                        <div class="input-group" style="text-align:center !important">
                                           <asp:TextBox ID="TextBox2" CssClass="form-control"  runat="server"></asp:TextBox>                     
                                         </div>
                                    </div>
                                </div>
                         
                            <div class="boton1 col-md-12 text-center mb-3">
                               
                                <asp:Button ID="Button1" runat="server" Text="Guardar" CssClass="boton1 btn btn-primary" OnClick="Button1_Click" />
                                <asp:Button ID="Button2" runat="server" Text="Volver" OnClick="Button2_Click" />
                            </div>

                        </div>                  
                    
              
            </div>
    </form>



</asp:Content>
