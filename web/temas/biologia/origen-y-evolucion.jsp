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
        <link href="../../assets/vendor/animate.css-master/animate.min.css" rel="stylesheet">
        <!-- Load Screen -->
        <link href="../../assets/vendor/loadscreen/css/spinkit.css" rel="stylesheet">
        <!-- GOOGLE FONT -->
        <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i"
              rel="stylesheet">
        <!-- Font Awesome 5 -->
        <link href="../../assets/vendor/fontawesome/css/fontawesome-all.min.css" rel="stylesheet">
        <!-- Fables Icons -->
        <link href="../../assets/custom/css/fables-icons.css" rel="stylesheet">
        <!-- Bootstrap CSS -->
        <link href="../../assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <link href="../../assets/vendor/bootstrap/css/bootstrap-4-navbar.css" rel="stylesheet">
        <!-- portfolio filter gallery -->
        <link href="../../assets/vendor/portfolio-filter-gallery/portfolio-filter-gallery.css" rel="stylesheet">
        <!-- FANCY BOX -->
        <link href="../../assets/vendor/fancybox-master/jquery.fancybox.min.css" rel="stylesheet">
        <!-- OWL CAROUSEL  -->
        <link href="../../assets/vendor/owlcarousel/owl.carousel.min.css" rel="stylesheet">
        <link href="../../assets/vendor/owlcarousel/owl.theme.default.min.css" rel="stylesheet">
        <!-- FABLES CUSTOM CSS FILE -->
        <link href="../../assets/custom/css/custom.css" rel="stylesheet">
        <!-- FABLES CUSTOM CSS RESPONSIVE FILE -->
        <link href="../../assets/custom/css/custom-responsive.css" rel="stylesheet">

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
                            <img src="../../imagenes/logo.png" width="50px" heigth="50px" alt="Fables Template"
                                 class="fables-logo">
                        </a>
                        <b style="color:aliceblue" class="font-17">I.E.P. "NUESTROS H�ROES DE LA GUERRA DEL PAC�FICO" </b>




                    </div>
                    <div class="col-12 col-md-2 col-lg-3 pr-md-0 ">

                        <div class="fables-header-icons">
                            <div class="dropdown"> 
                                <%if (session.getAttribute("user") == null) {%>
                                <a href="../../login.jsp" class=" font-13 fables-third-text-color dropdown-toggle right px-3 px-md-2 px-lg-4 fables-second-hover-color top-header-link max-line-height position-relative" >
                                    Iniciar sesi�n


                                </a>
                                <% } else {%>
                                <a href="../../logout" class=" font-13 fables-third-text-color dropdown-toggle right px-3 px-md-2 px-lg-4 fables-second-hover-color top-header-link max-line-height position-relative" >
                                    Salir


                                </a>
                                <% }%>
                                <%if (session.getAttribute("user") == null) {%>

                                <% } else {%>
                                <a href="../../profesor.jsp" class=" font-13 fables-third-text-color dropdown-toggle right px-3 px-md-2 px-lg-4 fables-second-hover-color top-header-link max-line-height position-relative" >

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
        <div class="fables-footer-image fables-after-overlay white-color py-4 py-lg-5 bg-rules" style="background-image: url(../../imagenes/fondo-ciencias.jpg);">
            <div class="container">
                <h2 class="fables-page-title fables-second-border-color">GU�A DE PR�CTICA 11 - ORIGEN Y EVOLUCI�N: Selecci�n natural</h2>
            </div>
        </div>
        <!-- /End Header -->

        <!-- Start Breadcrumbs -->
        <div class="fables-light-background-color">
            <div class="container">
                <nav aria-label="breadcrumb">
                    <ol class="fables-breadcrumb breadcrumb px-0 py-3">
                        <li class="breadcrumb-item"><a href="../../inicio" class="fables-second-text-color">Inicio</a></li>
                        <li class="breadcrumb-item active" aria-current="page"><a href="../../lab-biologia.jsp" class="fables-second-text-color">Laboratorio Virtual de Biolog�a</a></li>
                        <li class="breadcrumb-item active" aria-current="page">ORIGEN Y EVOLUCI�N: Selecci�n natural</li>
                    </ol>


                </nav>
            </div>
        </div>
        <!-- /End Breadcrumbs -->


        <!-- Start page content -->

        <div class="container">
            <br>
       

            <!--Pr�ctica-->
            <div class="col-12 col-lg-10 offset-lg-1 col-xl-8 offset-xl-2 mt-4 mt-xl-5" >
                <h2 class="font-30 semi-font my-3 fables-main-text-color fables-second-hover-color text-center">Pr�ctica </h2>
                <br>
                <div class="col-12 col-lg-8">   


                    <h2 class="font-20 semi-font my-3 fables-second-text-c

                        olor fables-second-hover-color">Objetivos</h2>


                    <ul class="fables-main-text-color  font-14 my-3" >


                        <li type="square">Con ayuda del simulador demostrar uno de los mecanismos de la selecci�n natural.</li> 
                        <li type="square">Comprender c�mo una caracter�stica de los organismos de una poblaci�n permite predecir su supervivencia y las variaciones que tendr�n a lo largo del tiempo.</li> 

                    </ul>
                    <br>

                    <h2 class="font-20 semi-font my-3 fables-second-text-color fables-second-hover-color">Materiales</h2>
                         <ul class="fables-main-text-color  font-14 my-3">


                        <li type="square">Gu�a de pr�ctica 11- Origen y evoluci�n: selecci�n natural. </li> 
                        <li type="square">PhET Interactive Simulation, Simulation biology, natural selection.</li> 
                        <li type="square">Microsoft Windows XP/vista/7/8.1/10 � OS X 10.9.5 o posteriores</li> 
                        <li type="square"><a href="https://get.adobe.com/es/flashplayer/">Macromedia Flash 9 o posteriores</a></li> 
                        <li type="square"><a href="https://www.java.com/es/download/">�ltima versi�n de JAVA</a></li> 


                    </ul>


                    <br>
                    <h2 class="font-20 semi-font my-3 fables-second-text-color fables-second-hover-color">Procedimiento</h2>
                    <p class="fables-main-text-color  font-14 my-3">

                        1)	A�adir mutaciones: pelaje marr�n, cola larga, dientes largos. 
                        <br>

                        2)	Modificar genes tanto dominante como recesivo del pelaje, cola y dientes.
                        <br>

                        3)	Elegir el factor de selecci�n: lobos, comida o ninguno.
                        <br>

                        4)	Elegir  el entorno: ecuador o �rtico (observar lo que sucede con la poblaci�n de acuerdo al entorno que habitan).
                        <br>

                        5)	Elegir el gr�fico: 
                        <br>
                        *Poblaci�n (observar la cantidad promedio de descendientes en cada generaci�n) 
                        <br>
                        *Genealog�a (observar y analizar los antepasados o �rbol geneal�gico del ser vivo).
                        <br>
                        <br>

                        6)	Observar e interpretar lo que sucede.


                    </p>




                    <br>
                    <h2 class="font-20 semi-font my-3 fables-second-text-color fables-second-hover-color">Conclusiones</h2>
                    <p class="fables-main-text-color  font-14 my-3" >

                       * Las caracter�sticas de los seres vivos en cualquier generaci�n tendr�n rasgos ligeramente distintos entre s�, las cuales ser�n hereditarias o pasar�n de padres a hijos.
                        <br>
                       * Ya que los organismos son capaces de generar m�s descendientes de los que su medio ambiente puede soportar, estos van a competir por los recursos limitados en cada generaci�n.
                        <br>
                       * Todos tenemos algunas mutaciones en nuestros genes, pero la mayor�a no tienen importancia. En otros casos pueden generar enfermedades o consecuencias graves. Sin embargo, no todas las mutaciones son negativas, a veces aportan ventajas sobre el resto de individuos y contribuye a la evoluci�n de la especie, especialmente si supone una ventaja en la supervivencia y la reproducci�n.

                    </p>
                    <br>
                    <h2 class="font-20 semi-font my-3 fables-second-text-color fables-second-hover-color">Fundamentos</h2>
                    <p class="fables-main-text-color  font-14 my-3" >
                        Las variaciones hereditarias, favorables o no a los organismos, se producen por un proceso conocido como mutaci�n. Las mutaciones desfavorables son eliminadas por selecci�n natural, porque sus portadores no dejan descendientes o dejan menos que los que portan mutaciones favorables. 
                        Las mutaciones favorables se acumulan a los largo de las generaciones porque los organismos en los que tienen lugar dejan un n�mero mayor de descendientes que los otros. 
                        Diferentes mutaciones son favorecidas en diversos entornos; seg�n cambien los entornos, evolucionar�n los organismos.
                        La selecci�n natural explica no s�lo conservaci�n y la mejora de la organizaci�n de los seres vivos sino tambi�n su diversidad. 

                    </p>
                    <br>
                    <h2 class="font-20 semi-font my-3 fables-second-text-color fables-second-hover-color">REFERENCIAS BIBLIOGR�FICAS</h2>
                    <p class="fables-main-text-color  font-14 my-3" >
                        Ayala, J. (2009). El origen de las especies por medio de la selecci�n natural. Recuperado de https://books.google.com.pe/books?id=t7YKR7hOORoC&printsec=frontcover&dq=seleccion+natural&hl=es-419&sa=X&ved=0ahUKEwiDjLfeq4HlAhVLT6wKHZV7BfEQ6AEILzAB#v=onepage&q=seleccion%20natural&f=false                    <h2 class="font-20 semi-font my-3 fables-second-text-color fables-second-hover-color">Simulador</h2>


                    <div style="position: relative; width: 300px; height: 197px;">
                        <a href="../../../archivos-aulavirtual/temas/biologia/natural-selection_es_PE.jar" style="text-decoration: none;">
                            <img src="g11simulador.JPG"  style="border: none;" width="300px" height="180px"/>


                        </a>

                    </div>

                    <br>
                    <br>
                    <br>
                    <br>
                    <br>



                </div>
            </div>
        </div>

        <!-- /End page content -->
        <jsp:include page="pie_pagina.jsp" />




        <script src="../../assets/vendor/jquery/jquery-3.3.1.min.js"></script>
        <script src="../../assets/vendor/loadscreen/js/ju-loading-screen.js"></script>
        <script src="../../assets/vendor/jquery-circle-progress/circle-progress.min.js"></script>
        <script src="../../assets/vendor/popper/popper.min.js"></script>
        <script src="../../assets/vendor/timeline/jquery.timelify.js"></script>
        <script src="../../assets/vendor/fancybox-master/jquery.fancybox.min.js"></script>
        <script src="../../assets/vendor/bootstrap/js/bootstrap.min.js"></script>
        <script src="../../assets/vendor/bootstrap/js/bootstrap-4-navbar.js"></script>
        <script src="../../assets/vendor/WOW-master/dist/wow.min.js"></script>
        <script src="../../assets/vendor/owlcarousel/owl.carousel.min.js"></script>
        <script src="../../assets/custom/js/custom.js"></script>


        <script src="../../js/tema.js"></script>

    </body>

</html>

