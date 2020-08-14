
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
                        <b style="color:aliceblue" class="font-17">I.E.P. "NUESTROS HÉROES DE LA GUERRA DEL PACÍFICO" </b>




                    </div>
                    <div class="col-12 col-md-2 col-lg-3 pr-md-0 ">

                        <div class="fables-header-icons">
                            <div class="dropdown"> 
                                <%if (session.getAttribute("user") == null) {%>
                                <a href="../../login.jsp" class=" font-13 fables-third-text-color dropdown-toggle right px-3 px-md-2 px-lg-4 fables-second-hover-color top-header-link max-line-height position-relative" >
                                    Iniciar sesión


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
                <h2 class="fables-page-title fables-second-border-color">GUÍA DE PRÁCTICA 02 - SOLUCIONES: Concentración</h2>
            </div>
        </div>
        <!-- /End Header -->

        <!-- Start Breadcrumbs -->
        <div class="fables-light-background-color">
            <div class="container">
                <nav aria-label="breadcrumb">
                    <ol class="fables-breadcrumb breadcrumb px-0 py-3">
                        <li class="breadcrumb-item"><a href="../../inicio" class="fables-second-text-color">Inicio</a></li>
                        <li class="breadcrumb-item active" aria-current="page"><a href="../../lab-quimica.jsp" class="fables-second-text-color">Laboratorio Virtual de química</a></li>
                        <li class="breadcrumb-item active" aria-current="page">SOLUCIONES: Concentración</li>
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
                <h2 class="font-30 semi-font my-3 fables-main-text-color fables-second-hover-color text-center">Práctica </h2>
                <br>
                <div class="col-12 col-lg-8">   


                    <h2 class="font-20 semi-font my-3 fables-second-text-color fables-second-hover-color">Objetivos</h2>


                    <label class="fables-main-text-color  font-14 my-3" >


                        <li>Describir las relaciones entre el volumen y la cantidad de soluto de la concentración de la solución.</li> 
                        <li>Predecir cómo va a cambiar la concentración de la solución para cualquier acción (o conjunto de acciones) al agregar o eliminar agua, soluto, o una solución, y explicar por qué.</li> 
                        <li>Identificar cuándo una solución está saturada.</li> 

                    </label>
                    <br>

                    <h2 class="font-20 semi-font my-3 fables-second-text-color fables-second-hover-color">Materiales</h2>

                    <ul class="fables-main-text-color  font-14 my-3">

                        <li type="square">GUÍA DE PRÁCTICA 02 - SOLUCIONES: Concentración</li> 
                        <li type="square">PhET Interactive Simulation, Simulation chemical, concentration.</li> 
                        <li type="square">Microsoft Windows XP/vista/7/8.1/10 ó OS X 10.9.5 o posteriores</li> 
                        <li type="square"><a href="https://get.adobe.com/es/flashplayer/">Macromedia Flash 9 o posteriores</a></li> 
                        <li type="square"><a href="https://www.java.com/es/download/">Última versión de JAVA</a></li> 


                    </ul>
                    <br>
                    <h2 class="font-20 semi-font my-3 fables-second-text-color fables-second-hover-color">Procedimiento</h2>
                    <label class="fables-main-text-color  font-14 my-3">

                        1) Identificar cuándo una solución está saturada.
                        <br>
                        2) Dispensar el soluto desplazándolo a los costados.
                        <br>

                        3) Añadir agua tirando de la palanca superior del vaso de precipitados.
                        <br>
                        4)	Leer molaridad arrastrando sonda hacia el vaso de precipitados.
                        <br>
                        5)	Seguir experimentando eliminando agua en la opción ?evaporación? o tirando de la palanca inferior del vaso de precipitados. 
                        <br>
                        6)	Remover soluto, para experimentar con uno diferente. 




                    </label>

                    <br>
                    <h2 class="font-20 semi-font my-3 fables-second-text-color fables-second-hover-color">Conclusiones</h2>
                    <p class="fables-main-text-color  font-14 my-3" >
                        * La preparación y el empleo de soluciones de concentración conocida constituye una práctica habitual en el laboratorio y en la industria química.
                        <br>
                        * El estudio de las soluciones es un tema de gran importancia debido a que la mayoría de las reacciones químicas ocurren en solución, particularmente en medios acuosos.

                    </p>
                    <br>
                    <h2 class="font-20 semi-font my-3 fables-second-text-color fables-second-hover-color">Fundamentos</h2>
                    <p class="fables-main-text-color  font-14 my-3" >
                        Se denomina concentración a la relación entre la cantidad de soluto y la cantidad de solución o solvente.
                        La concentración de las soluciones puede expresarse de varias maneras y cada una de ellas tiene sus ventajas para aplicaciones específicas. Las expresiones de la concentración pueden ser cualitativas y cuantitativas.

                        <br>
                        a)	Cualitativas
                        Frecuentemente se usan los términos diluida o concentrada para indicar que la cantidad relativa de soluto es pequeña o elevada con respecto a la cantidad de disolvente o de solución: Solución diluida (sto<ste), Solución concentrada (sto>ste), Solución saturada (sto>ste). 

                        <br>
                        b)	Cuantitativas 
                        Las expresiones de la concentración en forma cuantitativa puede hacerse en unidades físicas o en unidades químicas.
                        *	Unidades físicas: gramo (g), mililitro (mL).
                        *	Unidades químicas: Peso molecular gramo (PM) o Mol, Peso equivalente gramo (PEq), Peso fórmula gramo (PF), Fracción molar (X).  
                        </p>
                        <br>
                        <h2 class="font-20 semi-font my-3 fables-second-text-color fables-second-hover-color">REFERENCIAS BIBLIOGRÁFICAS</h2>
                        <p class="fables-main-text-color  font-14 my-3" >
                            Luconi, M. y Zamora, M. (). Introducción a la química.  Recuperado de http://recursos.salonesvirtuales.com/wp-content/uploads/bloques/2012/07/Mol.pdf
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

