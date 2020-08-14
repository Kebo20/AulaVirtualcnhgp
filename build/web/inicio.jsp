<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="Fables">
        <meta name="author" content="Enterprise Development">
        <link rel="shortcut icon" href="imagenes/logo.ico">

        <title>Aula Virtual</title>

        <!-- animate.css-->
        <link href="assets/vendor/animate.css-master/animate.min.css" rel="stylesheet">
        <!-- Load Screen -->
        <link href="assets/vendor/loadscreen/css/spinkit.css" rel="stylesheet">
        <!-- GOOGLE FONT -->
        <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i"
              rel="stylesheet">
        <!-- Font Awesome 5 -->
        <link href="assets/vendor/fontawesome/css/fontawesome-all.min.css" rel="stylesheet">
        <!-- Fables Icons -->
        <link href="assets/custom/css/fables-icons.css" rel="stylesheet">
        <!-- Bootstrap CSS -->
        <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <link href="assets/vendor/bootstrap/css/bootstrap-4-navbar.css" rel="stylesheet">
        <!-- portfolio filter gallery -->
        <link href="assets/vendor/portfolio-filter-gallery/portfolio-filter-gallery.css" rel="stylesheet">
        <!-- FANCY BOX -->
        <link href="assets/vendor/fancybox-master/jquery.fancybox.min.css" rel="stylesheet">
        <!-- RANGE SLIDER -->
        <link href="assets/vendor/range-slider/range-slider.css" rel="stylesheet">
        <!-- OWL CAROUSEL  -->
        <link href="assets/vendor/owlcarousel/owl.carousel.min.css" rel="stylesheet">
        <link href="assets/vendor/owlcarousel/owl.theme.default.min.css" rel="stylesheet">
        <!-- FABLES CUSTOM CSS FILE -->
        <link href="assets/custom/css/custom.css" rel="stylesheet">
        <!-- FABLES CUSTOM CSS RESPONSIVE FILE -->
        <link href="assets/custom/css/custom-responsive.css" rel="stylesheet">

    </head>


    <body>



        <!-- Loading Screen -->
        <div id="ju-loading-screen">
            <div class="sk-double-bounce">
                <div class="sk-child sk-double-bounce1"></div>
                <div class="sk-child sk-double-bounce2"></div>
            </div>
        </div>

        <!-- Start Fables Navigation -->
        <div class="fables-transparent  py-3 py-lg-0 ">
            <div class="container ">
                <div class="row">
                    <div class="col-12 col-md-10 col-lg-9 pr-md-0 ">
                        <a class="navbar-brand fables-logo-brand pl-0" href="#_">
                            <img src="imagenes/logo.png" width="255px" heigth="255px" alt="Fables Template"
                                 class="fables-logo">
                        </a>



                    </div>

                    <div class="col-12 col-md-2 col-lg-3 pr-md-0 ">

                        <div class="fables-header-icons">
                            <div class="dropdown"> 
                                <%if (session.getAttribute("user") == null) {%>
                                <a href="login.jsp" class=" font-13 fables-third-text-color dropdown-toggle right px-3 px-md-2 px-lg-4 fables-second-hover-color top-header-link max-line-height position-relative" >
                                    Iniciar sesión


                                </a>
                                <% } else {%>
                                <a href="logout" class=" font-13 fables-third-text-color dropdown-toggle right px-3 px-md-2 px-lg-4 fables-second-hover-color top-header-link max-line-height position-relative" >
                                    Salir


                                </a>
                                <% }%>
                                <%if (session.getAttribute("user") == null) {%>

                                <% } else if (session.getAttribute("tipo").equals("1")) {%>
                                <a href="profesor.jsp" class=" font-13 fables-third-text-color dropdown-toggle right px-3 px-md-2 px-lg-4 fables-second-hover-color top-header-link max-line-height position-relative" >

                                    <%=session.getAttribute("user")%>

                                </a>
                                <% } else {%>

                                <a href="administrador.jsp" class=" font-13 fables-third-text-color dropdown-toggle right px-3 px-md-2 px-lg-4 fables-second-hover-color top-header-link max-line-height position-relative" >

                                    <%=session.getAttribute("user")%>

                                </a>
                                <% }%>



                            </div>


                        </div>

                    </div>


                    <!--  <div class="col-12 col-md-2 col-lg-3 pr-md-0 ">
 
                         
                             
 
 
                                <div class="pt-0 mt-0 pt-xl-5 mt-xl-5 wow slideInUp" data-wow-duration="3s"
                                      data-wow-delay=".5s">
                                     <h1 class="fables-main-text-color font-weight-bold mb-1">LABORATORIO VIRTUAL 
                                        
                                     </h1>
 
                                 </div> 
 
 
 
 
                           
 
 
                         
                     </div>-->

                </div>
            </div>
        </div> 
        <!-- /End Fables Navigation -->

        
        <!-- /End Top Header -->




        <!-- Start Header -->
<div class="fables-header fables-after-overlay overlay-lighter index-traingle bg-rules"
             style="background-image: url(imagenes/profesor-login.jpg);">
            <div class="container">
                <div class="row">

                    <div class="col-md-10 col-lg-7 mr-auto index-carousel">
                        <div class="owl-carousel owl-theme default-carousel nav-0 z-index mt-md-4 mt-xl-5 pt-md-4 pt-xl-5 dots-0 pb-md-5">
                            <div class="pt-0 mt-0 pt-xl-5 mt-xl-5 wow slideInUp" data-wow-duration="3s"
                                 data-wow-delay=".5s">
                                <h1 class="fables-main-text-color font-weight-bold mb-1">LABORATORIO VIRTUAL 
                                    <span class="fables-second-text-color"></span>
                                </h1>
                                <p class="fables-forth-text-colo mb-3 light-font fables-header-slider-details">
                                    Encuentra la información necesaria para desarrolar tus habilidades en las principales
                                    ciencias
                                </p>
                            </div>
                            <div class="pt-0 mt-0 pt-xl-5 mt-xl-5 wow slideInUp" data-wow-duration="3s"
                                 data-wow-delay=".5s">
                                <h1 class="fables-main-text-color font-weight-bold mb-1">Laboratorio virtual de
                                    <span class="fables-second-text-color">física</span>
                                </h1>
                                <p class="fables-forth-text-colo mb-3 light-font fables-header-slider-details">
                                    Encuentra la información necesaria para desarrolar tus habilidades en las principales
                                    ciencias
                                </p>
                            </div>
                            <div class="pt-0 mt-0 pt-xl-5 mt-xl-5 wow slideInUp" data-wow-duration="3s"
                                 data-wow-delay=".5s">
                                <h1 class="fables-main-text-color font-weight-bold mb-1">Laboratorio virtual de
                                    <span class="fables-second-text-color">biólogia</span>
                                </h1>
                                <p class="fables-forth-text-colo mb-3 light-font fables-header-slider-details">
                                    Encuentra la información necesaria para desarrolar tus habilidades en las principales
                                    ciencias
                                </p>
                            </div>
                            <div class="pt-0 mt-0 pt-xl-5 mt-xl-5 wow slideInUp" data-wow-duration="3s"
                                 data-wow-delay=".5s">
                                <h1 class="fables-main-text-color font-weight-bold mb-1">Laboratorio virtual de
                                    <span class="fables-second-text-color">química</span>
                                </h1>
                                <p class="fables-forth-text-colo mb-3 light-font fables-header-slider-details">
                                    Encuentra la información necesaria para desarrolar tus habilidades en las principales
                                    ciencias </p>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- /End Header -->



        <!-- Start page content -->


        <div class="fables-price-bg fables-after-overlay py-4 py-lg-5 my-4 my-lg-5 bg-rules overflow-hidden "
             style="background-image: url(imagenes/fondo-ciencias.jpg);">
            <div class="container position-relative z-index">
                <h2 class="white-color font-35 font-weight-bold text-center mb-4 mb-md-5">Laboratorios virtuales</h2>
                <div class="row">

                    <div class="col-12 col-sm-6 col-lg-3 text-center mb-4 mb-lg-0 wow bounceInDown" data-wow-delay=".8s"
                         data-wow-duration="1.5s">
                        <div class="table-border-light fables-second-hover-border colored-table">
                            <div class=" py-4">
                                <h2 class="white-color font-weight-bold position-relative fables-third-after font-26 ">
                                    Física</h2>
                                <p class="white-color font-13 mb-4"></p>

                                <span
                                    class="fables-table-arrow border-2 fables-main-background-color white-color rounded-circle border-white position-absolute"><i
                                        class="fas fa-arrow-down"></i></span>
                            </div>
                            <div class="bg-white py-4">
                                <p class="fables-forth-text-color my-4 px-4 line-height-large font-15">
                                    Teoría
                                    -Simulaciones
                                </p>
                                <a href="lab-fisica.jsp"
                                   class="btn fables-second-background-color white-color white-color-hover fables-btn-rounded px-4 py-2">Ir</a>
                            </div>
                        </div>

                    </div>
                    <div class="col-12 col-sm-6 col-lg-3 text-center mb-4 mb-lg-0 wow bounceInDown" data-wow-delay="1.2s"
                         data-wow-duration="1.5s">
                        <div class="table-border-light fables-second-hover-border colored-table">
                            <div class=" py-4">
                                <h2 class="white-color font-weight-bold position-relative fables-third-after font-26 ">
                                    Biología</h2>
                                <p class="white-color font-13 mb-4"></p>
                                <span
                                    class="fables-table-arrow border-2 fables-main-background-color white-color rounded-circle border-white position-absolute"><i
                                        class="fas fa-arrow-down"></i></span>
                            </div>
                            <div class="bg-white py-4">
                                <p class="fables-forth-text-color my-4 px-4 line-height-large font-15">
                                    Teoría
                                    -Simulaciones
                                </p>
                                <a href="lab-biologia.jsp"
                                   class="btn fables-second-background-color white-color white-color-hover fables-btn-rounded px-4 py-2">Ir</a>
                            </div>
                        </div>

                    </div>
                    <div class="col-12 col-sm-6 col-lg-3 text-center mb-4 mb-lg-0 wow bounceInDown" data-wow-delay="1.6s"
                         data-wow-duration="1.5s">
                        <div class="table-border-light fables-second-hover-border colored-table">
                            <div class=" py-4">
                                <h2 class="white-color font-weight-bold position-relative fables-third-after font-26 ">
                                    Química</h2>
                                <p class="white-color font-13 mb-4"></p>
                                <span
                                    class="fables-table-arrow border-2 fables-main-background-color white-color rounded-circle border-white position-absolute"><i
                                        class="fas fa-arrow-down"></i></span>
                            </div>
                            <div class="bg-white py-4">
                                <p class="fables-forth-text-color my-4 px-4 line-height-large font-15">
                                    Teoría
                                    -Simulaciones
                                </p>
                                <a href="lab-quimica.jsp"
                                   class="btn fables-second-background-color white-color white-color-hover fables-btn-rounded px-4 py-2">Ir</a>
                            </div>
                        </div>

                    </div>
                    <div class="col-12 col-sm-6 col-lg-3 text-center mb-4 mb-lg-0 wow bounceInDown" data-wow-delay="2s"
                         data-wow-duration="1.5s">
                        <div class="table-border-light fables-second-hover-border colored-table">
                            <div class=" py-4">
                                <h2 class="white-color font-weight-bold position-relative fables-third-after font-26 ">
                                    Microscopio virtual</h2>
                                <p class="white-color font-13 mb-4"></p>
                                <span
                                    class="fables-table-arrow border-2 fables-main-background-color white-color rounded-circle border-white position-absolute"><i
                                        class="fas fa-arrow-down"></i></span>
                            </div>
                            <div class="bg-white py-4">
                                <p class="fables-forth-text-color my-4 px-4 line-height-large font-15">

                                    Simulación
                                </p>
                                <a href="bee/laminas.jsp"
                                   class="btn fables-second-background-color white-color white-color-hover fables-btn-rounded px-4 py-2">Ir</a>
                            </div>
                        </div>

                    </div>

                </div>
            </div>
        </div>



        <!-- /End page content -->

        <jsp:include page="pie_pagina.jsp" />




        <script src="assets/vendor/jquery/jquery-3.3.1.min.js"></script>
        <script src="assets/vendor/loadscreen/js/ju-loading-screen.js"></script>
        <script src="assets/vendor/jquery-circle-progress/circle-progress.min.js"></script>
        <script src="assets/vendor/popper/popper.min.js"></script>
        <script src="assets/vendor/jQuery.countdown-master/jquery.countdown.min.js"></script>
        <script src="assets/vendor/timeline/jquery.timelify.js"></script>
        <script src="assets/vendor/bootstrap/js/bootstrap.min.js"></script>
        <script src="assets/vendor/bootstrap/js/bootstrap-4-navbar.js"></script>
        <script src="assets/vendor/WOW-master/dist/wow.min.js"></script>
        <script src="assets/vendor/owlcarousel/owl.carousel.min.js"></script>
        <script src="assets/custom/js/jquery-data-to.js"></script>
        <script src="assets/vendor/jquery-circle-progress/circle.js"></script>
        <script src="assets/vendor/portfolio-filter-gallery/jquery.isotope.min.js"></script>
        <script src="assets/vendor/portfolio-filter-gallery/portfolio-filter-gallery.js"></script>
        <script src="assets/vendor/fancybox-master/jquery.fancybox.min.js"></script>
        <script src="assets/custom/js/custom.js"></script>


    </body>

</html>
