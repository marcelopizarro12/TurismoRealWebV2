<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registrarse.aspx.cs" Inherits="WebFinal.Base.Registrarse" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    
<style type="text/css">
.auto-style1 {
	width: 100%;
}
</style>
        <title>Turismo Real</title>

  <!-- Favicons -->
  <link href="../Img/favicon.png" rel="icon"/>
  <link href="../Img/apple-touch-icon.png" rel="apple-touch-icon"/>

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet"/>

  <!-- Vendor CSS Files -->

  <link href="../Codigo/Animacion/bootstrap/css/bootstrap.min.css" rel="stylesheet"/>
  <link href="../Codigo/Animacion/icofont/icofont.min.css" rel="stylesheet"/>
  <link href="../Codigo/Animacion/boxicons/css/boxicons.min.css" rel="stylesheet"/>
  <link href="../Codigo/Animacion/animate.css/animate.min.css" rel="stylesheet"/>
  <link href="../Codigo/Animacion/remixicon/remixicon.css" rel="stylesheet"/>
  <link href="../Codigo/Animacion/owl.carousel/assets/owl.carousel.min.css" rel="stylesheet"/>
  <link href="../Codigo/Animacion/venobox/venobox.css" rel="stylesheet"/>
  <link href="../Codigo/Animacion/aos/aos.css" rel="stylesheet"/>
    
  <!-- Template Main CSS File -->
  <link href="../App_Themes/Tema1/style.css" rel="stylesheet"/>

</head>
<body class="body1">

     <!-- ======= Header ======= -->
  <header id="header" class="fixed-top">
    <div class="container d-flex align-items-center">

      <h1 class="logo mr-auto"><a href="#header" class="scrollto">Turismo Real</a></h1>
      
      <!-- Uncomment below if you prefer to use an image logo -->
      <!-- <a href="#header" class="logo mr-auto scrollto"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>-->

      <nav class="nav-menu d-none d-lg-block">
        <ul>
          <li class="active"><a href="Index.aspx">Inicio</a></li>         
          <li><a href="Departamentos.aspx">Departamentos</a></li>
          <li><a href="Index.aspx#about" >Nosotros</a></li>
          <li><a href="Index.aspx#services" >Servicios Extra</a></li>
          <li class="drop-down"><a href="#">Cuenta</a>
            <ul>
              <li><a href="InicioSesion.aspx">Iniciar sesión</a></li>
              <li><a href="Registrarse.aspx">Registrarse</a></li> 
            </ul>
          </li>
        </ul>
      </nav>
      <!-- .nav-menu -->
    </div>
  </header>
  <!-- End Header -->
      <div class="container">
        <div class="row">
			<div class="col-md-5 mx-auto">
			    <div id="first">
				    <div class="myform1 form">
					    <div class="logo mb-3">
						    <div class="col-md-12 text-center">
							    <h1>Registro</h1>
						    </div>
					    </div>
                        <form id="login" method="post" name="login" runat="server">
                                <div class="form-group">
                                  <label for="exampleInputRut1">Rut</label>
                                    <asp:TextBox ID="TextBox1" CssClass="form-control" TextMode="Number" runat="server"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                  <label for="exampleInputEmail1">Nombre</label>
                                    <asp:TextBox ID="TextBox2" CssClass="form-control" runat="server"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                  <label for="exampleInputEmail1">Apellido</label>
                                    <asp:TextBox ID="TextBox3" CssClass="form-control"  runat="server"></asp:TextBox>
                                </div>
                               <div class="form-group">
                                  <label for="exampleInputEmail1">Telefono</label>
                                    <asp:TextBox ID="TextBox4" CssClass="form-control" TextMode="Phone" runat="server"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                  <label for="exampleInputEmail1">Correo</label>
                                    <asp:TextBox ID="TextBox5" CssClass="form-control" TextMode="Email" runat="server"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                  <label for="exampleInputEmail1">Contraseña</label>
                                    <asp:TextBox ID="TextBox6" CssClass="form-control" runat="server"></asp:TextBox>
                                </div>
                                <div class="col-md-12 text-center mb-3">
                                    <asp:Button ID="Button1" runat="server" CssClass="btn btn-block mybtn1 btn-primary tx-tfm1" Text="Registrarse" OnClick="Button1_Click" />                   
                                </div>
                                <div class="col-md-12 ">
                                    <div class="form-group">
                                        <p class="text-center"><a href="InicioSesion.aspx" id="signin">¿Ya tiene una cuenta?</a></p>
                                    </div>
                                </div>

                        </form>
			        </div>
			    </div>
            </div>
		</div>
    </div>




         <!-- ======= Footer ======= -->
  <footer id="footer">

    <div class="footer-top">
      <div class="container">
        <div class="row">


          <div class="col-lg-4 col-md-6 footer-contact">
            <h4>Contactanos</h4>
            <p>
              <strong>Casa Matriz</strong><br/>
	      	  Calle 123<br/>
              Santiago, Chile <br/><br/>
              <strong>Teléfono:</strong> +56 22 555 5555<br/>
              <strong>Email:</strong> contacto@turismoreal.com<br/>
            </p>
          </div>
          
          <div class="col-lg-4 col-md-6 footer-contact">
            <img src="../Img/logob.png" alt="" class="logofooter"/>
          </div>

          <div class="col-lg-4 col-md-6 footer-info">
            <h3>¡Siguenos en redes sociales!</h3>
            <p>No te pierdas nuestras últimas noticias y promociones.</p>
            <div class="social-links mt-3">
              <a href="#" class="twitter"><i class="bx bxl-twitter"></i></a>
              <a href="#" class="facebook"><i class="bx bxl-facebook"></i></a>
              <a href="#" class="instagram"><i class="bx bxl-instagram"></i></a>
            </div>
          </div>

        </div>
      </div>
    </div>

    <div class="container">
      <div class="copyright">
        &copy; Grupo 2 - Sección 003D - Portafolio - Plaza Oeste 2020
      </div>
      <div class="credits">

        Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>
      </div>
    </div>
  </footer>
  <!-- End Footer -->

  <a href="#" class="back-to-top"><i class="ri-arrow-up-line"></i></a>
  <div id="preloader"></div>



     <!-- Vendor JS Files -->
  <script src="../Codigo/Animacion/jquery/jquery.min.js"></script>
  <script src="../Codigo/Animacion/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="../Codigo/Animacion/jquery.easing/jquery.easing.min.js"></script>
  <script src="../Codigo/Animacion/owl.carousel/owl.carousel.min.js"></script>
  <script src="../Codigo/Animacion/venobox/venobox.min.js"></script>
  <script src="../Codigo/Animacion/isotope-layout/isotope.pkgd.min.js"></script>
  <script src="../Codigo/Animacion/aos/aos.js"></script>

  <!-- Template Main JS File -->
  <script src="../Codigo/js/main.js"></script>
</body>
</html>
