
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
                <h2 class="fables-page-title fables-second-border-color">GU�A DE PR�CTICA 14 - SOLUCIONES: Soluciones �cido - Base</h2>
            </div>
        </div>
        <!-- /End Header -->

        <!-- Start Breadcrumbs -->
        <div class="fables-light-background-color">
            <div class="container">
                <nav aria-label="breadcrumb">
                    <ol class="fables-breadcrumb breadcrumb px-0 py-3">
                        <li class="breadcrumb-item"><a href="../../inicio" class="fables-second-text-color">Inicio</a></li>
                        <li class="breadcrumb-item active" aria-current="page"><a href="../../lab-quimica.jsp" class="fables-second-text-color">Laboratorio Virtual de qu�mica</a></li>
                        <li class="breadcrumb-item active" aria-current="page">SOLUCIONES: Soluciones �cido - Base</li>
                    </ol>


                </nav>
            </div>
        </div>
        <!-- /End Breadcrumbs -->


        <!-- Start page content -->

        <div class="container">
            <br>
         

            <!--Práctica-->
            <div class="col-12 col-lg-10 offset-lg-1 col-xl-8 offset-xl-2 mt-4 mt-xl-5" >
                <h2 class="font-30 semi-font my-3 fables-main-text-color fables-second-hover-color text-center">Pr�ctica </h2>
                <br>
                <div class="col-12 col-lg-8">   


                    <h2 class="font-20 semi-font my-3 fables-second-text-color fables-second-hover-color">Objetivos</h2>


                    <label class="fables-main-text-color fables-single-blog font-14 my-3" >


                        <li>	Identificar todas las mol�culas e iones que est�n presentes en una determinada soluci�n de �cido o base.</li> 
                        <li>	Describir las similitudes y diferencias entre los �cidos fuertes y los �cidos d�biles o bases fuertes y bases d�biles.</li> 
                        <li>	Describir las similitudes y diferencias entre las soluciones concentradas y diluidas.</li>
                    </label>
                    <br>

                    <h2 class="font-20 semi-font my-3 fables-second-text-color fables-second-hover-color">Materiales</h2>


                    <ul class="fables-main-text-color  font-14 my-3">

                        <li type="square">GU�A DE PR�CTICA 14 - SOLUCIONES: Soluciones �cido - Base</li>
                        <li type="square">PhET Interactive Simulation, Simulation chemical, Acid Solutions - Base.</li>
                        <li type="square">Microsoft Windows XP/vista/7/8.1/10 � OS X 10.9.5 o posteriores</li> 
                        <li type="square"><a href="https://get.adobe.com/es/flashplayer/">Macromedia Flash 9 o posteriores</a></li> 
                        <li type="square"><a href="https://www.java.com/es/download/">�ltima versi�n de JAVA</a></li> 


                    </ul>
                    <br>
                    <h2 class="font-20 semi-font my-3 fables-second-text-color fables-second-hover-color">Procedimiento</h2>
                    <ol class="fables-main-text-color  font-14 my-3">
                        <dl>
                            <dt><li>Seleccionar introducci�n, explorar las propiedades de los �cidos y bases utilizando diagramas de niveles de part�culas, gr�ficos y herramientas como un medidor de pH, papel de pH y un medidor de conductividad:</li>
                            </dt>
                            <ul>
                                <dd><li type="circle">Desplazar el medidor de pH hacia el vaso de precipitados.</li></dd>
                                <dd><li type="circle">	Elegir la soluci�n a investigar.</li></dd>
                                <dd><li type="circle">	Elegir una de las "vistas", que se mostrar�n en el vaso de precipitados.</li></dd>
                                <dd><li type="circle">	Elegir una herramienta, e interpretar el pH De cada soluci�n. </li></dd>
                            </ul>

                        </dl>
                        <dl>
                            <dt><li>Seleccionar Mi soluci�n, donde se va a crear soluciones para explorar las diferencias entre soluciones �cidas o b�sicas fuertes versus d�biles y concentradas versus diluidas: </li>
                            </dt>
                            <ul>
                                <dd><li type="circle">	Desplazar el medidor de pH hacia el vaso de precipitados.</li></dd>
                                <dd><li type="circle">	Elegir el estado de soluci�n a investigar: �cido o base; fuerza d�bil o fuerte.</li></dd>
                                <dd><li type="circle">	Elegir una de las vistas, que se mostrar�n en el vaso de precipitados.</li></dd>
                                <dd><li type="circle">	Elegir una herramienta, e interpretar el pH De cada soluci�n.</li></dd>

                            </ul>


                        </dl>




                    </ol>

                    <br>
                    <h2 class="font-20 semi-font my-3 fables-second-text-color fables-second-hover-color">Conclusiones</h2>
                    <ol class="fables-main-text-color  font-14 my-3" >
                        <li>
                            Para conocer el pH de una soluci�n se utiliza un indicador �cido-base
                        </li>
                        <li>
                            Un indicador de pH es una sustancia colorida que cambia de color seg�n su forma �cida o b�sica.
                        </li>
                        <li>
                            La qu�mica de �cidos y bases es importante en los procesos industriales y es fundamental en los sistemas biol�gicos.
                        </li>




                    </ol>
                    <br>
                    <h2 class="font-20 semi-font my-3 fables-second-text-color fables-second-hover-color">Fundamentos</h2>
                    <p class="fables-main-text-color  font-14 my-3" >
                        �cido es toda aquella sustancia que al disolverse en agua aumenta la concentraci�n de iones hidr�geno. 
                    </p>
                    <p class="fables-main-text-color  font-14 my-3" >

                        Base es toda aquella sustancia que al disolverse en agua aumenta la concentraci�n de iones hidroxilo

                    </p>
                    <p class="fables-main-text-color  font-14 my-3" >

                        El salto de pH que se produce en torno al punto de equivalencia se detecta mediante el uso de un indicador �cido-base que cambie de color al producirse el salto. Un indicador acido- base tiene dos formas, una �cida y otra b�sica, de distinto color. En medio �cido predomina la forma y color �cidos, mientras en medio b�sico predomina la forma y color b�sicos.
                    </p>
                    <p class="fables-main-text-color  font-14 my-3" >
                        Sin embargo, la ecuaci�n no est� completa. Para estar de acuerdo con la ley de conservaci�n de la masa debe haber el mismo n�mero de cada tipo de �tomos en ambos lados de la flecha: 
                        2H2 +  O2  ---->   2H2O

                    </p>
                    <p class="fables-main-text-color  font-14 my-3" >
                        �cidos y bases fuertes y d�biles: son �cidos y bases fuertes aquellos para los que, en concentraciones ordinarias, todas sus mol�culas est�n disociadas. Los �cidos y bases d�biles tienen constantes de ionizaci�n peque�as, de forma que cuando se disuelven con concentraciones ordinarias en agua, gran parte de sus mol�culas se mantienen sin disociar.

                    </p>
                    <br>
                    <h2 class="font-20 semi-font my-3 fables-second-text-color fables-second-hover-color">REFERENCIAS BIBLIOGR�FICAS</h2>
                    <p class="fables-main-text-color  font-14 my-3" >
                        Chang, R. (2002). Qu�mica. Recuperado de https://clea.edu.mx/biblioteca/Quimica%20General%20-%207ma%20Edicion%20-%20Raymond%20Chang.pdf  

                    </p>
                    <br>
                    <h2 class="font-20 semi-font my-3 fables-second-text-color fables-second-hover-color">Simulador</h2>


                    <div style="position: relative; width: 300px; height: 197px;">
                        <a href="../../../archivos-aulavirtual/temas/quimica/acid-base-solutions_es_PE.html" >
                            <img src="g14simulador.JPG"   width="300px" height="180px"/>


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

