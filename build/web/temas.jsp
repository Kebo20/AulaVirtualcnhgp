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
                        <b style="color:aliceblue" class="font-17">I.E.P. "NUESTROS H�ROES DE LA GUERRA DEL PAC�FICO" </b>




                    </div>
                    <div class="col-12 col-md-2 col-lg-3 pr-md-0 ">

                        <div class="fables-header-icons">
                            <div class="dropdown"> 
                                <%if (session.getAttribute("user") == null) {%>
                                <a href="login.jsp" class=" font-13 fables-third-text-color dropdown-toggle right px-3 px-md-2 px-lg-4 fables-second-hover-color top-header-link max-line-height position-relative" >
                                    Iniciar sesi�n


                                </a>
                                <% } else {%>
                                <a href="logout" class=" font-13 fables-third-text-color dropdown-toggle right px-3 px-md-2 px-lg-4 fables-second-hover-color top-header-link max-line-height position-relative" >
                                    Salir


                                </a>
                                <% }%>
                                <%if (session.getAttribute("user") == null) {%>
                               
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
                <h2 class="fables-page-title fables-second-border-color">AGENTES F�SICOS: Escala de pH</h2>
            </div>
        </div>
        <!-- /End Header -->

        <!-- Start Breadcrumbs -->
        <div class="fables-light-background-color">
            <div class="container">
                <nav aria-label="breadcrumb">
                    <ol class="fables-breadcrumb breadcrumb px-0 py-3">
                        <li class="breadcrumb-item"><a href="inicio" class="fables-second-text-color">Inicio</a></li>
                        <li class="breadcrumb-item active" aria-current="page"><a href="lab-fisica.jsp" class="fables-second-text-color">Laboratorio Virtual de ...</a></li>
                        <li class="breadcrumb-item active" aria-current="page">tema</li>
                    </ol>


                </nav>
            </div>
        </div>
        <!-- /End Breadcrumbs -->


        <!-- Start page content -->

        <div class="container">
            <br>
            <!--Teoria descargar-->
            <div  align="center">
                <h2 class="font-30 semi-font my-3 fables-main-text-color fables-second-hover-color text-center">Teor�a</h2>
                <br>
                <a href="imagenes/1.pdf" ><img src="imagenes/pdf.jpg"  width="250px" height="240px"></a>
            </div>

            <!--Pr�ctica-->
            <div class="col-12 col-lg-10 offset-lg-1 col-xl-8 offset-xl-2 mt-4 mt-xl-5" >
                <h2 class="font-30 semi-font my-3 fables-main-text-color fables-second-hover-color text-center">Pr�ctica </h2>
                <br>
                <div class="col-12 col-lg-8">   


                    <h2 class="font-20 semi-font my-3 fables-second-text-color fables-second-hover-color">Objetivos</h2>


                    <label class="fables-main-text-color fables-single-blog font-14 my-3" >


                        <li>Determinar si un l�quido es �cido, b�sico o neutro.</li> 
                        <li>Localizar �cidos o bases en orden relativo.</li> 
                        <li>Describir en una escala molecular, con ilustraciones, c�mo el equilibrio del agua var�a con el pH. </li> 

                    </label>
                    <br>

                    <h2 class="font-20 semi-font my-3 fables-second-text-color fables-second-hover-color">Materiales</h2>


                    <label class="fables-main-text-color fables-single-blog font-14 my-3">


                        <li>Simulador</li> 


                    </label>
                    <br>
                    <h2 class="font-20 semi-font my-3 fables-second-text-color fables-second-hover-color">Procedimiento</h2>
                    <label class="fables-main-text-color  font-14 my-3">

                        Seleccionar una de las tres opciones mostradas en la pantalla:  
                        <br>
                        <li>Macro (apunta a conceptos cualitativos sobre el pH de los �cidos y bases cotidianos, incluida la diluci�n)</li> 
                        <li>  Micro (relaciona el pH con las concentraciones de iones H3O+ y OH-).</li> 


                    </label>
                    <div align="center">
                        <img src="imagenes/1a�o.jpg" width="120px" height="120px" >
                    </div>

                    <br>
                    <label class="fables-main-text-color  font-14 my-3">


                        <li>Mi soluci�n (permite manipular directamente el pH o la concentraci�n de iones, en lugar de agregar soluciones o agua al vaso de precipitados).</li> 


                    </label>
                    <div align="center">
                        <img src="imagenes/1a�o.jpg" width="120px" height="120px" >
                    </div>
                    <br>
                    <h2 class="font-20 semi-font my-3 fables-second-text-color fables-second-hover-color">Conclusiones</h2>
                    <p class="fables-main-text-color  font-14 my-3" >La simulaci�n no tiene en cuenta las diferentes constantes de disociaci�n de �cido (Ka) para cada l�quido en el c�lculo de las concentraciones de iones o el pH despu�s de la diluci�n. Hacemos la simplificaci�n que cualquier aumento en la concentraci�n del ion principal se debe a los iones ya presentes en el agua a�adida. Por ejemplo, si los estudiantes a�adir 100 ml de agua a una soluci�n �cida, entonces el n�mero de moles de H3O + aumenta por 1 x 10-8 mol. La concentraci�n del ion de menor importancia se calcula entonces utilizando la constante de auto-ionizaci�n para el agua (Kw). Estos c�lculos representan el efecto de nivelaci�n de agua.</p>
                    <br>

                    <a class="btn fables-btn-link fables-second-border-color fables-btn-rouned fables-second-background-color font-16 " style="color: #ffffff"><span class="fables-btn-value">Ir al simulador</span></a>

                    <div style="position: relative; width: 300px; height: 197px;">
                        <a href="imagenes/1.jar" style="text-decoration: none;">
                            <img src="https://phet.colorado.edu/sims/circuit-construction-kit/circuit-construction-kit-ac-virtual-lab-600.png" alt="Equipo de Construcci�n de Circuitos (AC+DC), Laboratorio Virtual" style="border: none;" width="300" height="197"/>
                           
                            <table style="position: absolute; width: 200px; height: 80px; left: 50px; top: 58px;">
                                <tr>
                                    <td style="text-align: center; color: #000; font-size: 24px; font-family: Arial,sans-serif;">
                                        <button class="btn btn-success">
                                            <icon class="fa fa-arrow-circle-right"></icon>
                                        </button>
                                    </td>
                                </tr>
                            </table>
                        </a>
                    </div>







                </div>
            </div>
        </div>
        <br>
        <br>
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
