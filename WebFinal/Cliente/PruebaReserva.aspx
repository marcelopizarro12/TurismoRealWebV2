<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PruebaReserva.aspx.cs" Inherits="WebFinal.Cliente.PruebaReserva" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .form-group {
            width: 601px;
        }
    </style>
</head>
<body>
   
         <div class="container">
        <div class="row">
			<div class="col-md-5 mx-auto">
			    <div id="first">
				    <div class="myform1 form">
					    <div class="logo mb-3">
						    <div class="col-md-12 text-center">
							    <h1>Reserva</h1>
						    </div>
					    </div>
                        <form id="form1" runat="server" >
                                                      
                                <div class="form-group">
                                  <label for="exampleInputEmail1">Rut del Cliente</label>
                                    <asp:TextBox ID="TextBox8" CssClass="form-control" TextMode="Number" runat="server"></asp:TextBox>
                                </div>
                                  <div class="form-group">
                                  <label for="exampleInputEmail1">Nro Departamento</label>
                                    <asp:TextBox ID="TextBox9" CssClass="form-control" TextMode="Number" runat="server"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Nro Acompañantes</label>
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
                                
                                 <div class="form-group">
                                    <label for="exampleInputEmail1">Fecha Entrada</label>
                                    <asp:TextBox ID="TextBox4" CssClass="form-control" TextMode="Date" runat="server"></asp:TextBox>
                                  </div>
                                  <div class="form-group">
                                      <label for="exampleInputEmail1">Fecha Salida</label>
                                      <asp:TextBox ID="TextBox5" CssClass="form-control" TextMode="Date"  runat="server"></asp:TextBox>                                      
                                      
                                  </div>
                               
                                 <div class="form-group">
                                  <label for="exampleInputEmail1">Valor total Reserva</label>
                                    <asp:TextBox ID="TextBox7" CssClass="form-control" TextMode="Number"  runat="server"></asp:TextBox>
                                </div>
                                  <div class="form-group">
                                    <label for="exampleInputEmail1">Pago Reserva</label>
                                    <asp:TextBox ID="TextBox2" CssClass="form-control" TextMode="Number" runat="server"></asp:TextBox>
                                </div>
                                  <div class="form-group">
                                    <label for="exampleInputEmail1">Multa</label>
                                    <asp:TextBox ID="TextBox6" CssClass="form-control" TextMode="Number" runat="server"></asp:TextBox>
                                  </div>
                           
                                 <div class="form-group">
                                   <label for="exampleInputEmail1">Metodo de Pago</label>
                                   <asp:DropDownList ID="DropDownList2" runat="server">
                                       <asp:ListItem Selected="True" Value="cero">Elija metodo de Pago</asp:ListItem>
                                       <asp:ListItem>Devito</asp:ListItem>
                                       <asp:ListItem>Credito</asp:ListItem>
                                 </asp:DropDownList>
                                </div>
                               
                             <div class="form-group">
                                 <asp:Button ID="Button1" runat="server" Text="Reservar" OnClick="Button1_Click" />
                                     </div>
                                
                             
                        </form>
			        </div>
			    </div>
            </div>
		</div>
    </div>
   
</body>
</html>
