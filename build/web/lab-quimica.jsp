<%@page import="model.Curso"%>
<%@page import="dao.CursoDAO"%>
<%@page import="dao.TemaDAO"%>
<%@page import="model.Tema"%>
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

                </div>
            </div>
        </div>

        <!-- /End Fables Navigation -->

        <!-- Start Header -->
        <div class="fables-footer-image fables-after-overlay white-color py-4 py-lg-5 bg-rules" style="background-image: url(imagenes/fondo-ciencias.jpg);">
            <div class="container">
                <h2 class="fables-page-title fables-second-border-color">LABORATORIO VIRTUAL DE QUÍMICA</h2>
            </div>
        </div>
        <!-- /End Header -->

        <!-- Start Breadcrumbs -->
        <div class="fables-light-background-color">
            <div class="container">
                <nav aria-label="breadcrumb">
                    <ol class="fables-breadcrumb breadcrumb px-0 py-3">
                        <li class="breadcrumb-item"><a href="inicio" class="fables-second-text-color">Inicio</a></li>
                        <li class="breadcrumb-item active" aria-current="page">Laboratorio virtual de química</li>
                    </ol>
                </nav>
            </div>
        </div>
        <!-- /End Breadcrumbs -->
        <div class="container ">
            <div class="form-group fables-subscribe-formgroup ">
                <input type="text" id="temaQ" class="form-control fables-subscribe-input fables-btn-rouned fables-main-background-color"
                       placeholder="Buscar temas">
            </div>



        </div>

        <!-- Start page content -->

        <div class="container">


            <div class="gallery-filter">

                <div class="portfolioContainer mt-4 my-lg-5 row" id="busqueda">
                    <%for (Tema t : TemaDAO.ListarTema("Q")) {%>

                    <div class="webDesign objects col-sm-6 col-md-3 mb-4">
                        <div class="filter-img-block position-relative image-container translate-effect-right">
                            <img src="<%=t.getImagen()%>" alt="image" width="110px" height="170px" >

                            <div class="img-filter-overlay fables-main-color-transparent row m-0">
                                <a href="<%=t.getPagina()%>" class=" white-color fables-second-hover-color"><%=t.getNom_tema()%></a>
                            </div>
                        </div>

                    </div>
                    <% }%> 

                </div>
            </div>
            <br>
            <br>
            <br>
            <h2 class="fables-main-text-color text-center mt-lg-4 mb-4 mb-lg-5 font-26 bold-font">Archivos</h2>

            <div class="row">

                   <%for (Curso c: CursoDAO.listarCursoQuimica()) { %>


                <div class="col-12 col-sm-6 col-lg-4 fables-product-block">
                    <div class="card rounded-0 mb-4">
                        <div class="row">
                            <div class="fables-product-img col-12">
                                <img class="card-img-top rounded-0" src="imagenes/carpeta.jpg" alt="dress fashion">
                                <div class="fables-img-overlay">                                          
                                    <ul class="nav fables-product-btns">
                                        <li><a href="archivos-curso.jsp?curso=<%=c.getId_curso() %>" class="fables-product-btn"><span class="fables-iconeye"></span></a></li>

                                    </ul>
                                </div>
                            </div>
                            <div class="card-body col-12">

                                <p class="fables-product-info"><a href="archivos-curso.jsp?curso=<%=c.getId_curso() %>" class="btn fables-second-border-color fables-second-text-color fables-btn-rouned fables-hover-btn-color font-14 p-2 px-2 px-xl-4">

                                        <span class="fables-btn-value"><%=c.getNom_curso() %></span></a></p>
                            </div>
                        </div>
                    </div>
                </div>
               <% } %>




            </div> 

        </div>

        <!-- /End page content -->
        <jsp:include page="pie_pagina.jsp" />




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