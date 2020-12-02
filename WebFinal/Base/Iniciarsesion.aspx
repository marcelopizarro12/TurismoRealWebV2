<%@ Page Title="" Language="C#" MasterPageFile="~/Base/Principal.Master" AutoEventWireup="true" CodeBehind="Iniciarsesion.aspx.cs" Inherits="WebFinal.Base.Iniciarsesion" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



      <div class="container" style="margin-top:70px">
        <div class="row">
			<div class="col-md-5 mx-auto">
			    <div id="first">
				    <div class="myform1 form">
					    <div class="logo mb-3">
						    <div class="col-md-12 text-center">
							    <h1>Inicie Sesión</h1>
						    </div>
					    </div>
                          <form method="post" name="login" id="login" runat="server">
                               <div class="form-group">
                                  <label for="exampleInputEmail1">Rut</label>
                                   <asp:TextBox ID="txtUsuario" CssClass="form-control" TextMode="Number" runat="server"></asp:TextBox>                                  
                               </div>
                               <div class="form-group">
                                  <label for="exampleInputEmail1">Contraseña</label>
                                   <asp:TextBox ID="txtContra" CssClass="form-control"  runat="server" TextMode="Password" Text="******"></asp:TextBox>                         
                               </div>
                               <div class="form-group">
                                  <p class="text-center">Al unirse usted acepta nuestros <a href="#">Términos de uso</a></p>
                               </div>
                               <div class="col-md-12 text-center ">
                                   <asp:Button ID="Button1" CssClass="btn btn-block mybtn1 btn-primary tx-tfm1" runat="server" Text="Iniciar Sesión" OnClick="Button1_Click"/>                                 
                               </div>
                               <div class="col-md-12 ">
                                  <div class="login-or1">
                                     <hr class="hr-or1"/>
                                     <span class="span-or1">-</span>
                                  </div>
                               </div>
                               <div class="form-group">
                                  <p class="text-center">¿No tiene una cuenta? <a href="Registrarse.aspx" id="signup">Cree una aquí</a></p>
                               </div>
                        </form>
			        </div>
			    </div>
            </div>
		</div>
    </div>
</asp:Content>
