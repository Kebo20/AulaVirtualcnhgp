<%@page import="model.Lamina"%>
<%@page import="dao.LaminaDAO"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <link rel="shortcut icon" href="../imagenes/logo.ico">

        <title>Aula virtual</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">



        <link rel="stylesheet" href="css/animate.css">

        <link rel="stylesheet" href="css/owl.carousel.min.css">
        <link rel="stylesheet" href="css/magnific-popup.css">


        <link rel="stylesheet" href="css/ionicons.min.css">




        <link rel="stylesheet" href="css/icomoon.css">
        <link rel="stylesheet" href="css/style.css">



        <!--fables-->



        <!-- GOOGLE FONT -->
        <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i"
              rel="stylesheet">
        <!-- Font Awesome 5 -->
        <link href="../assets/vendor/fontawesome/css/fontawesome-all.min.css" rel="stylesheet">
        <!-- Fables Icons -->
        <link href="../assets/custom/css/fables-icons.css" rel="stylesheet">
        <!-- Bootstrap CSS -->
        <link href="../assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <link href="../assets/vendor/bootstrap/css/bootstrap-4-navbar.css" rel="stylesheet">
        <!-- portfolio filter gallery -->
        <link href="../assets/vendor/portfolio-filter-gallery/portfolio-filter-gallery.css" rel="stylesheet">
        <!-- FANCY BOX -->
        <link href="../assets/vendor/fancybox-master/jquery.fancybox.min.css" rel="stylesheet">
        <!-- OWL CAROUSEL  -->
        <link href="../assets/vendor/owlcarousel/owl.carousel.min.css" rel="stylesheet">
        <link href="../assets/vendor/owlcarousel/owl.theme.default.min.css" rel="stylesheet">
        <!-- FABLES CUSTOM CSS FILE -->
        <link href="../assets/custom/css/custom.css" rel="stylesheet">
        <!-- FABLES CUSTOM CSS RESPONSIVE FILE -->
        <link href="../custom/css/custom-responsive.css" rel="stylesheet">


    </head>

    <body>
           <%
            if (session.getAttribute("user") == null) {
                //request.getRequestDispatcher("login.jsp").forward(request, response);
                response.sendRedirect("login.jsp");
            } 
            response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // HTTP 1.1.
            response.setHeader("Pragma", "no-cache"); // HTTP 1.0.

        %>

        <div class="fables-main-background-color py-3 py-lg-0 ">
            <div class="container ">
                <div class="row">
                    <div class="col-12 col-md-10 col-lg-9 pr-md-0 ">
                        <a class="navbar-brand fables-logo-brand pl-0" href="">
                            <img src="../imagenes/logo.png" width="50px" heigth="50px" alt="Fables Template"
                                 class="fables-logo">
                        </a>
                        <b style="color:aliceblue" class="font-17">I.E.P. "NUESTROS HÉROES DE LA GUERRA DEL PACÍFICO" </b>




                    </div>
                    <div class="col-12 col-md-2 col-lg-3 pr-md-0 ">

                        <div class="fables-header-icons">
                            <div class="dropdown"> 
                                <%if (session.getAttribute("user") == null) {%>
                                <a href="../login.jsp" class=" font-13 fables-third-text-color dropdown-toggle right px-3 px-md-2 px-lg-4 fables-second-hover-color top-header-link max-line-height position-relative" >
                                    Iniciar sesión


                                </a>
                                <% } else {%>
                                <a href="../logout" class=" font-13 fables-third-text-color dropdown-toggle right px-3 px-md-2 px-lg-4 fables-second-hover-color top-header-link max-line-height position-relative" >
                                    Salir


                                </a>
                                <% }%>
                                <%if (session.getAttribute("user") == null) {%>

                                <% } else if (session.getAttribute("tipo").equals("1")) {%>
                                <a href="../profesor.jsp" class=" font-13 fables-third-text-color dropdown-toggle right px-3 px-md-2 px-lg-4 fables-second-hover-color top-header-link max-line-height position-relative" >

                                    <%=session.getAttribute("user")%>

                                </a>
                                <% } else {%>

                                <a href="../administrador.jsp" class=" font-13 fables-third-text-color dropdown-toggle right px-3 px-md-2 px-lg-4 fables-second-hover-color top-header-link max-line-height position-relative" >

                                    <%=session.getAttribute("user")%>

                                </a>
                                <% }%>





                            </div>


                        </div>
                    </div>

                </div>
            </div>
        </div>

        <div class="fables-light-background-color">
            <div class="container">
                <nav aria-label="breadcrumb">
                    <ol class="fables-breadcrumb breadcrumb px-0 py-3">
                        <li class="breadcrumb-item"><a href="../inicio.jsp" class="fables-second-text-color">Inicio</a>
                        </li>
                        <li class="breadcrumb-item " aria-current="page"><a href="laminas.jsp" class="fables-second-text-color">Láminas</a></li>
                        <li class="breadcrumb-item active" aria-current="page">Láminas detalladas</li>



                    </ol>


                </nav>


            </div>
        </div>
        <br>
   




        <br>
        <br>
        <div class="container ">
            <div class="form-group fables-subscribe-formgroup ">
                <input type="text" id="laminap"
                       class="form-control fables-subscribe-input fables-btn-rouned fables-main-background-color"
                       placeholder="Buscar láminas">
            </div>


        </div>


        <br>


        <!--laminas -->
        <section class="ftco-section ftco-no-pt ftco-no-pb">
            <div class="container-fluid p-0">


                <div class="row no-gutters" id="busqueda">

                    <%for (Lamina l : LaminaDAO.listarLamina("p")) {%>    

                    <div class=' col-md-6 col-lg-3 ' >
                        <div class='project'>
                            <img src='<%=l.getImagen()%>' class='img-fluid' alt='Colorlib Template'>
                            <div class='text'>

                                <h3><a href='<%=l.getPagina()%>'><%=l.getNom_lamina()%></a></h3>
                            </div>
                            <a href='<%=l.getImagen()%>'
                               class='icon image-popup d-flex justify-content-center align-items-center'>
                                <span class='icon-expand'></span>
                            </a>
                        </div>

                    </div>
                    <% }%>



                </div>
        </section>
        <!--fin laminas-->
        <br>
        <div class="copyright fables-main-background-color mt-0 border-0 white-color">

            <p class="mb-0">AULA VIRTUAL</p>

        </div>


        <!-- loader -->
        <div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px">
            <circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee" />
            <circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10"
                    stroke="#F96D00" /></svg></div>

        <script src="js/jquery.min.js"></script>
        <script src="js/jquery-migrate-3.0.1.min.js"></script>
        <script src="js/popper.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/jquery.easing.1.3.js"></script>
        <script src="js/jquery.waypoints.min.js"></script>
        <script src="js/jquery.stellar.min.js"></script>
        <script src="js/owl.carousel.min.js"></script>
        <script src="js/jquery.magnific-popup.min.js"></script>
        <script src="js/aos.js"></script>
        <script src="js/jquery.animateNumber.min.js"></script>
        <script src="js/bootstrap-datepicker.js"></script>
        <script src="js/jquery.timepicker.min.js"></script>
        <script src="js/scrollax.min.js"></script>

        <script src="js/main.js"></script>



        <script src="../js/lamina.js"></script>

    </body>

</html>
