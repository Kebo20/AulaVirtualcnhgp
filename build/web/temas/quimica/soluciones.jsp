
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
                <h2 class="fables-page-title fables-second-border-color">GU�A DE PR�CTICA 02 - SOLUCIONES: Concentraci�n</h2>
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
                        <li class="breadcrumb-item active" aria-current="page">SOLUCIONES: Concentraci�n</li>
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


                    <h2 class="font-20 semi-font my-3 fables-second-text-color fables-second-hover-color">Objetivos</h2>


                    <label class="fables-main-text-color  font-14 my-3" >


                        <li>Describir las relaciones entre el volumen y la cantidad de soluto de la concentraci�n de la soluci�n.</li> 
                        <li>Predecir c�mo va a cambiar la concentraci�n de la soluci�n para cualquier acci�n (o conjunto de acciones) al agregar o eliminar agua, soluto, o una soluci�n, y explicar por qu�.</li> 
                        <li>Identificar cu�ndo una soluci�n est� saturada.</li> 

                    </label>
                    <br>

                    <h2 class="font-20 semi-font my-3 fables-second-text-color fables-second-hover-color">Materiales</h2>

                    <ul class="fables-main-text-color  font-14 my-3">

                        <li type="square">GU�A DE PR�CTICA 02 - SOLUCIONES: Concentraci�n</li> 
                        <li type="square">PhET Interactive Simulation, Simulation chemical, concentration.</li> 
                        <li type="square">Microsoft Windows XP/vista/7/8.1/10 � OS X 10.9.5 o posteriores</li> 
                        <li type="square"><a href="https://get.adobe.com/es/flashplayer/">Macromedia Flash 9 o posteriores</a></li> 
                        <li type="square"><a href="https://www.java.com/es/download/">�ltima versi�n de JAVA</a></li> 


                    </ul>
                    <br>
                    <h2 class="font-20 semi-font my-3 fables-second-text-color fables-second-hover-color">Procedimiento</h2>
                    <label class="fables-main-text-color  font-14 my-3">

                        1) Identificar cu�ndo una soluci�n est� saturada.
                        <br>
                        2) Dispensar el soluto desplaz�ndolo a los costados.
                        <br>

                        3) A�adir agua tirando de la palanca superior del vaso de precipitados.
                        <br>
                        4)	Leer molaridad arrastrando sonda hacia el vaso de precipitados.
                        <br>
                        5)	Seguir experimentando eliminando agua en la opci�n ?evaporaci�n? o tirando de la palanca inferior del vaso de precipitados. 
                        <br>
                        6)	Remover soluto, para experimentar con uno diferente. 




                    </label>

                    <br>
                    <h2 class="font-20 semi-font my-3 fables-second-text-color fables-second-hover-color">Conclusiones</h2>
                    <p class="fables-main-text-color  font-14 my-3" >
                        * La preparaci�n y el empleo de soluciones de concentraci�n conocida constituye una pr�ctica habitual en el laboratorio y en la industria qu�mica.
                        <br>
                        * El estudio de las soluciones es un tema de gran importancia debido a que la mayor�a de las reacciones qu�micas ocurren en soluci�n, particularmente en medios acuosos.

                    </p>
                    <br>
                    <h2 class="font-20 semi-font my-3 fables-second-text-color fables-second-hover-color">Fundamentos</h2>
                    <p class="fables-main-text-color  font-14 my-3" >
                        Se denomina concentraci�n a la relaci�n entre la cantidad de soluto y la cantidad de soluci�n o solvente.
                        La concentraci�n de las soluciones puede expresarse de varias maneras y cada una de ellas tiene sus ventajas para aplicaciones espec�ficas. Las expresiones de la concentraci�n pueden ser cualitativas y cuantitativas.

                        <br>
                        a)	Cualitativas
                        Frecuentemente se usan los t�rminos diluida o concentrada para indicar que la cantidad relativa de soluto es peque�a o elevada con respecto a la cantidad de disolvente o de soluci�n: Soluci�n diluida (sto<ste), Soluci�n concentrada (sto>ste), Soluci�n saturada (sto>ste). 

                        <br>
                        b)	Cuantitativas 
                        Las expresiones de la concentraci�n en forma cuantitativa puede hacerse en unidades f�sicas o en unidades qu�micas.
                        *	Unidades f�sicas: gramo (g), mililitro (mL).
                        *	Unidades qu�micas: Peso molecular gramo (PM) o Mol, Peso equivalente gramo (PEq), Peso f�rmula gramo (PF), Fracci�n molar (X).  
                        </p>
                        <br>
                        <h2 class="font-20 semi-font my-3 fables-second-text-color fables-second-hover-color">REFERENCIAS BIBLIOGR�FICAS</h2>
                        <p class="fables-main-text-color  font-14 my-3" >
                            Luconi, M. y Zamora, M. (). Introducci�n a la qu�mica.  Recuperado de http://recursos.salonesvirtuales.com/wp-content/uploads/bloques/2012/07/Mol.pdf
                        </p>
                        <br>
                        <h2 class="font-20 semi-font my-3 fables-second-text-color fables-second-hover-color">Simulador</h2>


                        <div style="position: relative; width: 300px; height: 197px;">
                            <a href="../../../archivos-aulavirtual/temas/quimica/concentration_es_PE.html" >
                                <img src="g2simulador.JPG"   width="300px" height="180px"/>


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

