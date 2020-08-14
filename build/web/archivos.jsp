<%@page import="model.Curso"%>
<%@page import="dao.CursoDAO"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="Fables">
        <meta name="author" content="Enterprise Development">
        <link rel="shortcut icon" href="imagenes/logo.ico">

        <title>Aula virtual</title>

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
        <div class="fables-transparent py-3 py-lg-0 ">
            <div class="container ">
                <div class="row">
                    <div class="col-12 col-md-10 col-lg-9 pr-md-0 ">
                        <a class="navbar-brand fables-logo-brand pl-0" href="">
                            <img src="imagenes/logo.png" width="50px" heigth="50px" alt="Fables Template"
                                 class="fables-logo">
                        </a>
                        <b style="color:aliceblue" class="font-17">I.E.P. "NUESTROS HÉROES DE LA GUERRA DEL PACÍFICO" </b>




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
                                <a href="#_" class=" font-13 fables-third-text-color dropdown-toggle right px-3 px-md-2 px-lg-4 fables-second-hover-color top-header-link max-line-height position-relative" >


                                    Aula Virtual
                                </a>
                                <% } else {%>
                                <a href="profesor.jsp" class=" font-13 fables-third-text-color dropdown-toggle right px-3 px-md-2 px-lg-4 fables-second-hover-color top-header-link max-line-height position-relative" >

                                    <%=session.getAttribute("user")%>

                                </a>
                                <% }%>




                            </div>


                        </div>
                    </div>

                </div>
            </div>
        </div>

        <!-- /End Fables Navigation -->

        <!-- Start Header -->
        <div class="fables-footer-image fables-after-overlay white-color py-4 py-lg-5 bg-rules" style="background-image: url(imagenes/fondo-ciencias.jpg);">
            <div class="container">
                <h2 class="fables-page-title fables-second-border-color">Archivos</h2>
            </div>
        </div>
        <!-- /End Header -->

        <!-- Start Breadcrumbs -->
        <div class="fables-light-background-color">
            <div class="container">
                <nav aria-label="breadcrumb">
                    <ol class="fables-breadcrumb breadcrumb px-0 py-3">
                        <li class="breadcrumb-item"><a href="inicio.jsp" class="fables-second-text-color">Inicio</a></li>
                        <li class="breadcrumb-item active" aria-current="page">Archivos</li>
                    </ol>
                </nav>
            </div>
        </div>
        <!-- /End Breadcrumbs -->


        <!-- Start page content -->

        <div class="container">


           

            <div class="row">
                <%for (Curso c : CursoDAO.listarCurso()) {%>
                <div class="col-12 col-sm-6 col-lg-4 fables-product-block">
                    <div class="card rounded-0 mb-4">
                        <div class="row">
                            <div class="fables-product-img col-12">
                                <img class="card-img-top rounded-0" src="imagenes/carpeta.jpg" alt="dress fashion">
                                <div class="fables-img-overlay">                                          
                                    <ul class="nav fables-product-btns">
                                        <li><a href="archivos-curso.jsp?curso=<%=c.getId_curso()%>" class="fables-product-btn"><span class="fables-iconeye"></span></a></li>

                                    </ul>
                                </div>
                            </div>
                            <div class="card-body col-12">
                               
                                <p class="fables-product-info"><a href="archivos-curso.jsp?curso=<%=c.getId_curso()%>" class="btn fables-second-border-color fables-second-text-color fables-btn-rouned fables-hover-btn-color font-14 p-2 px-2 px-xl-4">

                                        <span class="fables-btn-value"><%=c.getNom_curso()%></span></a></p>
                            </div>
                        </div>
                    </div>
                </div>

                <%}%>

            </div> 


           


        </div>

        <!-- /End page content -->
        <!-- Start Footer 2 Background Image  -->
        <div class="fables-footer-image fables-after-overlay white-color py-4 py-lg-5 bg-rules"
             style="background-image: url(imagenes/fondo-ciencias.jpg);">
            <div class="container">
                <div class="row">
                    <div class="col-12 col-md-8 offset-md-2 col-lg-6 offset-lg-3 mt-2 mb-5 text-center">
                        <h2 class="font-30 semi-font mb-5">Información</h2>


                    </div>


                    <div class="col-12 col-sm-6 col-lg-4">
                        <h2 class="font-20 semi-font fables-second-border-color border-bottom pb-3">Contactanos</h2>
                        <div class="my-3">
                            <h4 class="font-16 semi-font"><span
                                    class="fables-iconmap-icon fables-second-text-color pr-2 font-20 mt-1 d-inline-block"></span>
                                Ubicación</h4>
                            <p class="font-14 fables-fifth-text-color mt-2 ml-4">level13, 2Elizabeth St, Melbourne, Victor
                                2000</p>
                        </div>
                        <div class="my-3">
                            <h4 class="font-16 semi-font"><span
                                    class="fables-iconphone fables-second-text-color pr-2 font-20 mt-1 d-inline-block"></span>
                                Teléfono</h4>
                            <p class="font-14 fables-fifth-text-color mt-2 ml-4">+333 111 111 000</p>
                        </div>
                        <div class="my-3">
                            <h4 class="font-16 semi-font"><span
                                    class="fables-iconemail fables-second-text-color pr-2 font-20 mt-1 d-inline-block"></span>
                                Correo </h4>
                            <p class="font-14 fables-fifth-text-color mt-2 ml-4">adminsupport@website.com</p>
                        </div>
                    </div>
                    <div class="col-12 col-sm-6 col-lg-4">
                        <h2 class="font-20 semi-font fables-second-border-color border-bottom pb-3 mb-3">EXPLORE OUR SITE
                        </h2>
                        <ul class="nav fables-footer-links">
                            <li><a href="about1.html">Ayuda</a></li>

                        </ul>
                    </div>

                </div>

            </div>
        </div>
        <div class="copyright fables-main-background-color mt-0 border-0 white-color">

            <p class="mb-0">AULA VIRTUAL</p>

        </div>


        <!-- /End Footer 2 Background Image -->




        <script src="assets/vendor/jquery/jquery-3.3.1.min.js"></script>
        <script src="assets/vendor/loadscreen/js/ju-loading-screen.js"></script>
        <script src="assets/vendor/jquery-circle-progress/circle-progress.min.js"></script>
        <script src="assets/vendor/popper/popper.min.js"></script>
        <script src="assets/vendor/timeline/jquery.timelify.js"></script>
        <script src="assets/vendor/fancybox-master/jquery.fancybox.min.js"></script>
        <script src="assets/vendor/bootstrap/js/bootstrap.min.js"></script>
        <script src="assets/vendor/bootstrap/js/bootstrap-4-navbar.js"></script>
        <script src="assets/vendor/WOW-master/dist/wow.min.js"></script>
        <script src="assets/vendor/owlcarousel/owl.carousel.min.js"></script>
        <script src="assets/custom/js/custom.js"></script>


        <script src="js/tema.js"></script>

    </body>

</html>
