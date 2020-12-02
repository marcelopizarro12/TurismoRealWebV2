<%@ Page Title="" Language="C#" MasterPageFile="~/Base/Principal.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="WebFinal.Base.Index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../App_Themes/Tema1/style.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <!-- ======= Hero Section ======= -->
  <section id="hero" class="d-flex justify-cntent-center align-items-center" style="background: url(../Img/hero-bg.jpg) ">
    <div id="heroCarousel" class="container carousel carousel-fade" data-ride="carousel">

      <!-- Slide 1 -->
      <div class="carousel-item active">
        <div class="carousel-container">
          <h2 class="animate__animated animate__fadeInDown">Bienvenido a <span>Turismo Real</span></h2>
          <p class="animate__animated animate__fadeInUp"> Somos una empresa familiar que nos dedicamos a arriendos de departamentos y servicios de zonas turisticas del pais para disfrutar y pasar tiempo en familia</p>
        </div>
      </div>

      <!-- Slide 2 -->
      <div class="carousel-item">
        <div class="carousel-container">
          <h2 class="animate__animated animate__fadeInDown">Lorem Ipsum Dolor</h2>
          <p class="animate__animated animate__fadeInUp">Ut velit est quam dolor ad a aliquid qui aliquid. Sequi ea ut et est quaerat sequi nihil ut aliquam. Occaecati alias dolorem mollitia ut. Similique ea voluptatem. Esse doloremque accusamus repellendus deleniti vel. Minus et tempore modi architecto.</p>
        </div>
      </div>

      <!-- Slide 3 -->
      <div class="carousel-item">
        <div class="carousel-container">
          <h2 class="animate__animated animate__fadeInDown">Sequi ea ut et est quaerat</h2>
          <p class="animate__animated animate__fadeInUp">Ut velit est quam dolor ad a aliquid qui aliquid. Sequi ea ut et est quaerat sequi nihil ut aliquam. Occaecati alias dolorem mollitia ut. Similique ea voluptatem. Esse doloremque accusamus repellendus deleniti vel. Minus et tempore modi architecto.</p>
        </div>
      </div>

      <a class="carousel-control-prev" href="#heroCarousel" role="button" data-slide="prev">
        <span class="carousel-control-prev-icon bx bx-chevron-left" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
      </a>

      <a class="carousel-control-next" href="#heroCarousel" role="button" data-slide="next">
        <span class="carousel-control-next-icon bx bx-chevron-right" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
      </a>

    </div>
  </section>
  <!-- End Hero -->

  <main id="main">

    <!-- ======= Icon Boxes Section ======= -->
    <section id="icon-boxes" class="icon-boxes">
      <div class="container">

        <div class="row">
          <div class="col-md-6 col-lg-3 d-flex align-items-stretch mb-5 mb-lg-0" data-aos="fade-up">
            <div class="icon-box">
              <div class="icon"><i class="bx bxl-dribbble"></i></div>
              <h4 class="title"><a >Espacios comunes</a></h4>
              <p class="description">Edificios con espacios comunes para uso exclusivo de nuestros clientes.</p>
            </div>
          </div>

          <div class="col-md-6 col-lg-3 d-flex align-items-stretch mb-5 mb-lg-0" data-aos="fade-up" data-aos-delay="100">
            <div class="icon-box">
              <div class="icon"><i class="icofont-beach"></i></div>
              <h4 class="title"><a >Ideales para vacacionar</a></h4>
              <p class="description">Nuestros departamentos se ubican cerca de zonas turísticas, playas y los mejores restaurantes de cada zona.</p>
            </div>
          </div>

          <div class="col-md-6 col-lg-3 d-flex align-items-stretch mb-5 mb-lg-0" data-aos="fade-up" data-aos-delay="200">
            <div class="icon-box">
              <div class="icon"><i class="icofont-dollar-true"></i></div>
              <h4 class="title"><a >Precios Accesibles</a></h4>
              <p class="description">Los mejores precios y promociones del mercado.</p>
            </div>
          </div>

          <div class="col-md-6 col-lg-3 d-flex align-items-stretch mb-5 mb-lg-0" data-aos="fade-up" data-aos-delay="300">
            <div class="icon-box">
              <div class="icon"><i class="icofont-credit-card"></i></div>
              <h4 class="title"><a >Facilidades de pago</a></h4>
              <p class="description">Aceptamos efectivo y pagos transbank</p>
            </div>
          </div>

        </div>

      </div>
    </section>
    <!-- End Icon Boxes Section -->



    <!-- ======= promocion catalogo ======= -->
    <section id="cta" class="cta " >
      <div class="container">

        <div class="row" data-aos="zoom-in">
          <div class="col-lg-9 text-center text-lg-left">
            <h3>Visite nuestro catalogo</h3>
            <p> Visite nuestro catalogo de departamentos y revise disponibilidades.</p>
          </div>
          <div class="col-lg-3 cta-btn-container text-center">
            <a class="cta-btn align-middle" href="Departamentos.aspx">Ver Catalogo</a>
          </div>
        </div>

      </div>
    </section>
    <!-- End catalogo -->


    <!-- ======= Nosotros Section ======= -->
    <section id="about" class="about">
      <div class="container" data-aos="fade-up">

        <div class="section-title">
          <h2>Sobre Nosotros</h2>
          <p>Somos una empresa familiar que busca que las familias disfruten de su tiempo en familia y vacaciones en nuestras distintas zonas ademas de ofrecerles tour en las localidades</p>
        </div>

        <div class="row content">
          <div class="col-lg-6">
            <p>
              Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore
              magna aliqua.
            </p>
            <ul>
              <li><i class="ri-check-double-line"></i> Ullamco laboris nisi ut aliquip ex ea commodo consequat</li>
              <li><i class="ri-check-double-line"></i> Duis aute irure dolor in reprehenderit in voluptate velit</li>
              <li><i class="ri-check-double-line"></i> Ullamco laboris nisi ut aliquip ex ea commodo consequat</li>
            </ul>
          </div>
          <div class="col-lg-6 pt-4 pt-lg-0">
            <p>
              Ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate
              velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in
              culpa qui officia deserunt mollit anim id est laborum.
            </p>
          </div>
        </div>

      </div>
    </section>
    <!-- End nosotros -->

    <!-- ======= Services Section ======= -->
    <section id="services" class="services">
      <div class="container" data-aos="fade-up">

        <div class="section-title">
          <h2>Servicios Extra</h2>
          <p>Éche un vistazo a nuestros servicios extra.</p>
        </div>

        <div class="row">
          <div class="col-md-6 d-flex align-items-stretch" data-aos="fade-up" data-aos-delay="100">
            <div class="icon-box">
              <i class="icofont-travelling"></i>
              <h4><a>Tours</a></h4>
              <p>Un tour que lo llevará a conocer los lugares turísticos de la zona. Conozca lugares atractivos, restaurantes y bares.</p>
            </div>
          </div>
          <div class="col-md-6 d-flex align-items-stretch mt-4 mt-md-0" data-aos="fade-up" data-aos-delay="200">
            <div class="icon-box">
              <i class="icofont-bus-alt-2"></i>
              <h4><a >Servicio de transporte</a></h4>
              <p>Contrate al transportista que lo llevará desde su hogar hacia su departamento.</p>
            </div>
          </div>
          <div class="col-md-6 d-flex align-items-stretch mt-4 mt-md-0" data-aos="fade-up" data-aos-delay="300">
            <div class="icon-box">
              <i class="icofont-clock-time"></i>
              <h4><a >Puede contratarlos cuando lo desee</a></h4>
              <p>Los servicios extra pueden ser contratados en el momento que estime conveniente: Luego de Reservar , antes de su arrivo, antes y durante su estadía.</p>
            </div>
          </div>
          <div class="col-md-6 d-flex align-items-stretch mt-4 mt-md-0" data-aos="fade-up" data-aos-delay="400">
            <div class="icon-box">
              <i class="icofont-settings"></i>
              <h4><a >Perzonalizados</a></h4>
              <p>Elija dónde quiere ir, qué quiere ver y dónde quiere que lo recojan</p>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!-- End Services Section -->
  </main>
  <!-- End #main -->
</asp:Content>
