<%@ Page Title="" Language="C#" MasterPageFile="~/Cliente/PrincipalUsuario.Master" AutoEventWireup="true" CodeBehind="Reservar.aspx.cs" Inherits="WebFinal.Cliente.Reservar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 <form method="post" name="reserva" runat="server" >
     <div class="container margen1" style="margin-top:80px; margin-bottom:30px;">

        <div class="row"> 

            <!-- Inicio columna 1 textos-->
                <div class="col-md-12 borde col-sm-12">
                <div class="container-fluid">
                    <div class="row">
                    
                        <h3 class="tireserva">Departamento</h3>
                    
                        <div class="col-12">
                            <div>
                              <label style="text-align: center" class="auto-style6"><span class="negrita">Nro. Depto: </span></label>
                              <asp:Label ID="lblid" runat="server" Text="Label"></asp:Label>
                            </div>
                        </div>

                        <div class="col-sm-12 col-md-7">
                            <asp:Image ID="Image1"  runat="server" ImageUrl="" Height="166px" Width="300px" />
                        </div>
                    
                        <div class="col-sm-12 col-md-4" style="margin-top:10px; margin-left:20px;">
                            <div style="text-align:left">
                                  <label style="text-align: center" class="auto-style6"><span class="negrita">Mts²: </span></label>
                                  <asp:Label ID="lblmt" runat="server" Text="Label"></asp:Label>
                            </div>

                            <div>
                              <label style="text-align: center" class="auto-style8"><span class="negrita">Ubicación: </span></label>    
                               <asp:Label ID="lblub" runat="server" Text="Label"></asp:Label>
                            </div>

                            <div>
                                  <label style="text-align: center" class="auto-style9"><span class="negrita">Habitaciones: </span></label>
                                  <asp:Label ID="lblhb" runat="server" Text="Label"></asp:Label>
                            </div>

                            <div>
                                  <label style="text-align: center" class="auto-style8"><span class="negrita">Camas: </span></label>
                                  <asp:Label ID="lblcm" runat="server" Text="Label"></asp:Label>
                            </div>
                        </div>

                        <div class="col-12">

                          <div style="margin-top:20px;">
                            <label class="auto-style7"><span class="negrita">Descripción<br /></span></label>
                          </div>

                          <div>
                            <p class="auto-style13">Departamento ubicado en
                                <asp:Label ID="lblub1" runat="server" Text="Label"></asp:Label>
                               
                                , el cual incluye
                                <asp:Label ID="lblinclud" runat="server" Text="Label"></asp:Label>
                                .<br />
                                Se le atribuye un valor de $<asp:Label ID="lblprice" runat="server" Text="Label"></asp:Label>
                                    &nbsp;por noche.
                            </p>                    
                          </div>

                        </div>

                    </div>                  
                </div>

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

                    
            </div> 
               
                    
            </div> 
            <!-- Termino columna 1 textos-->
      

        
            <!-- Inicio columna 2-->
            <div class="col-md-6  borde col-sm-12">
                <h3 class="tireserva">Reservar</h3>
                <div class="container-fluid">                                                             
                        <div class="row">
                            <div class="col-12">                                    
                                <div class="row">
                                        <div class="col-sm-12">
                                            <a>Rut Cliente:</a>
                                        </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-12">
                                        <div class="input-group" style="text-align:center !important">
                                           <asp:TextBox ID="TextBox8" CssClass="form-control" TextMode="Number" runat="server"></asp:TextBox>                     
                                         </div>
                                    </div>
                                </div>


                                <div class="row">
                                        <div class="col-sm-12">
                                            <a>Nro. Departamento</a>
                                        </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-12">
                                        <div class="input-group" style="text-align:center !important">
                                           <asp:TextBox ID="TextBox9" CssClass="form-control" TextMode="Number" runat="server"></asp:TextBox>                     
                                         </div>
                                    </div>
                                </div>
                                <div class="row">
                                        <div class="col-sm-12">
                                            <a>Desde:</a>
                                        </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-12">
                                        <div class="input-group" style="text-align:center !important">
                                           <asp:TextBox ID="TextBox4" CssClass="form-control" TextMode="Date" runat="server"></asp:TextBox>
                                                                 
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
                                        <div class="input-group" style="text-align:center !important">
                                           <asp:TextBox ID="TextBox5" CssClass="form-control" TextMode="Date"  runat="server"></asp:TextBox>
                                                                  
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
                                        <div class="input-group" style="text-align:center !important">
                                            <asp:DropDownList ID="DropDownList1" runat="server">
                                                <asp:ListItem Selected="True" Value="cero">0</asp:ListItem>
                                                <asp:ListItem>1</asp:ListItem>
                                                <asp:ListItem>2</asp:ListItem>
                                                <asp:ListItem>3</asp:ListItem>
                                                <asp:ListItem>4</asp:ListItem>
                                                <asp:ListItem>5</asp:ListItem>
                                                <asp:ListItem>6</asp:ListItem>
                                                <asp:ListItem>7</asp:ListItem>
                                                <asp:ListItem>8</asp:ListItem>
                                               <asp:ListItem>9</asp:ListItem>
                                           </asp:DropDownList>                      
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
                                        <div class="input-group" style="text-align:center !important">
                                           <asp:TextBox ID="TextBox2" CssClass="form-control" TextMode="Number"  runat="server"></asp:TextBox>                     
                                         </div>
                                    </div>
                                </div>

                                <div class="row">
                                        <div class="col-sm-12">
                                            <a>Total estadía:</a>
                                        </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-12">
                                        <div class="input-group" style="text-align:center !important">
                                           <asp:TextBox ID="TextBox7" CssClass="form-control" TextMode="Number"  runat="server"></asp:TextBox>                      
                                         </div>
                                    </div>
                                </div>
                                     <div class="row">
                                        <div class="col-sm-12">
                                            <a>Metodo de Pago:</a>
                                        </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-12">
                                        <div class="input-group" style="text-align:center !important">
                                            <asp:DropDownList ID="DropDownList2" runat="server">
                                               <asp:ListItem Selected="True" Value="cero">Elija metodo de Pago</asp:ListItem>
                                               <asp:ListItem>Debito</asp:ListItem>
                                               <asp:ListItem>Credito</asp:ListItem>
                                            </asp:DropDownList>                     
                                         </div>
                                    </div>
                                </div>
                                     <div class="row">
                                        <div class="col-sm-12">
                                            <a>Multa :</a>
                                        </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-12">
                                        <div class="input-group" style="text-align:center !important">
                                           <asp:TextBox ID="TextBox6" CssClass="form-control" TextMode="Number" runat="server"></asp:TextBox>                      
                                         </div>
                                    </div>
                                </div>

                            </div>
                                
                            <div class="boton1 col-md-12 text-center mb-3">
                               
                                <asp:Button ID="Button1" runat="server" Text="Reservar" CssClass="boton1 btn btn-primary" OnClick="Button1_Click" />
                                
                            </div>

                        </div>                  
                    
                </div>
            </div>
            <!-- Termino columna 2-->
        </div>        
    

</form>









      
    






</asp:Content>
