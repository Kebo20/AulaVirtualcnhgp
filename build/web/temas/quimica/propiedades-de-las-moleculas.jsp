
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
                <h2 class="fables-page-title fables-second-border-color">GUÍA DE PRÁCTICA 12 - PROPIEDADES DE LAS MOLÉCULAS: Polaridad de la molécula</h2>
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
                        <li class="breadcrumb-item active" aria-current="page">PROPIEDADES DE LAS MOLÉCULAS: Polaridad de la molécula</li>
                    </ol>


                </nav>
            </div>
        </div>
        <!-- /End Breadcrumbs -->


        <!-- Start page content -->

        <div class="container">
            <br>
     

            <!--PrÃ¡ctica-->
            <div class="col-12 col-lg-10 offset-lg-1 col-xl-8 offset-xl-2 mt-4 mt-xl-5" >
                <h2 class="font-30 semi-font my-3 fables-main-text-color fables-second-hover-color text-center">Práctica </h2>
                <br>
                <div class="col-12 col-lg-8">   


                    <h2 class="font-20 semi-font my-3 fables-second-text-color fables-second-hover-color">Objetivos</h2>


                    <label class="fables-main-text-color fables-single-blog font-14 my-3" >


                        <li>Predecir la polaridad del enlace usando valores de electronegatividad</li> 
                        <li>Indicar la polaridad con una flecha polar o cargas parciales.</li> 
                        <li>Clasificar los enlaces en orden de polaridad.</li>
                        <li>Predecir la polaridad molecular usando la polaridad de enlace y la forma molecular</li>
                    </label>
                    <br>

                    <h2 class="font-20 semi-font my-3 fables-second-text-color fables-second-hover-color">Materiales</h2>


                    <ul class="fables-main-text-color  font-14 my-3">

                        <li type="square">GUÍA DE PRÁCTICA 12 -PROPIEDADES DE LAS MOLÉCULAS: Polaridad de la molécula</li>
                        <li type="square">PhET Interactive Simulation, Simulation chemical,Polarity of the molecule.</li>
                        <li type="square">Microsoft Windows XP/vista/7/8.1/10 ó OS X 10.9.5 o posteriores</li> 
                        <li type="square"><a href="https://get.adobe.com/es/flashplayer/">Macromedia Flash 9 o posteriores</a></li> 
                        <li type="square"><a href="https://www.java.com/es/download/">Última versión de JAVA</a></li> 


                    </ul>
                    <br>
                    <h2 class="font-20 semi-font my-3 fables-second-text-color fables-second-hover-color">Procedimiento</h2>
                    <ol class="fables-main-text-color  font-14 my-3">
                        <dl>
                            <dt><li>Seleccionar Dos átomos, y cambie la electronegatividad de los átomos, vea el potencial electrostático resultante o la densidad de electrones, y prediga la polaridad del enlace:  </li>
                            </dt>
                            <ul>
                                <dd><li type="circle">Explorar diferentes superficies</li></dd>
                                <dd><li type="circle">Explorar diferentes superficies</li></dd>
                                <dd><li type="circle">Determinar si el enlace es más covalente o más iónica</li></dd>
                                <dd><li type="circle">Observar cargas parciales.</li></dd>
                            </ul>

                        </dl>
                        <dl>
                            <dt><li>Seleccionar Tres átomos, y explore la relación entre los dipolos de enlace y el dipolo molecular, y observe la molécula en un campo eléctrico: </li>
                            </dt>
                            <ul>
                                <dd><li type="circle">Arrastrar átomos de A O para ajustar el ángulo de enlace.</li></dd>
                                <dd><li type="circle">Relacionar los dipolos de enlace al dipolo molecular.</li></dd>
                                <dd><li type="circle">Observar los átomos en un campo eléctrico (Activar).</li></dd>

                            </ul>


                        </dl>







                    </ol>

                    <br>
                    <h2 class="font-20 semi-font my-3 fables-second-text-color fables-second-hover-color">Conclusiones</h2>
                    <ol class="fables-main-text-color  font-14 my-3" >
                        <li>El dipolo molecular es la suma vectorial de los dipolos de enlace. En la pantalla de dos átomos, no se muestra el dipolo molecular, ya que es equivalente al dipolo de enlace.</li>
                        <li>Si un átomo tiene una electronegatividad más alta que el átomo en el otro extremo del enlace, entonces el signo de la carga parcial es negativo; de lo contrario es positivo.</li>
                        <li>La pantalla de tres átomos permite cambiar el ángulo de enlace entre los átomos externos (A y C).</li>



                    </ol>
                    <br>
                    <h2 class="font-20 semi-font my-3 fables-second-text-color fables-second-hover-color">Fundamentos</h2>
                    <p class="fables-main-text-color  font-14 my-3" >
                        La polaridad consiste en la capacidad de una molécula para ejercer interacciones intermoleculares de naturaleza electrostática, debido a una distribución asimétrica de las cargas eléctricas entre sus átomos. El origen de la polaridad está en la diferencia de electronegatividad de sus átomos. La electronegatividad (x) es una propiedad peródica que consiste en la capacidad de los átomos de un elemento para atraer hacia sí a los electrones de los enlaces en que participa. Existen escalas para medir la electronegativad, pero la más conocida y usada es la de Pauling

                    </p>
                    <p class="fables-main-text-color  font-14 my-3" >

                        La polaridad de una molécula se mide a través del momento dipolar. Las moléculas polares son aquellas que además de tener enlaces polares no son simétricas. Por lo que la polaridad de una molécula depende tanto de que tenga uniones polares como de su geometría.
                    </p>
                    <p class="fables-main-text-color  font-14 my-3" >
                        Cada molécula tiene una serie de estados excitados (o bandas) que la distingue del resto de moléculas. Como consecuencia, la absorción que a distintas longitudes de onda presenta una molécula, su espectro de absorción constituye una seña de identidad de la misma. Por lo tanto, la molécula en forma excitada libera la energía absorbida hasta el estado energético fundamental.
                    </p>
                    <p class="fables-main-text-color  font-14 my-3" >
                        Por ejemplo, el H2O es una molécula con geometría angular, cada unión O-H posee una polaridad por la diferencia de electronegatividades entre O y H. Debido a la geometría molecular, los dipolos de enlace no se compensan y el agua es una molécula polar.   

                    </p>
                    <br>
                    <h2 class="font-20 semi-font my-3 fables-second-text-color fables-second-hover-color">REFERENCIAS BIBLIOGRÁFICAS</h2>
                    <p class="fables-main-text-color  font-14 my-3" >
                        Aldable, S y Aramendia, P. (2004). Química 2. Química en acción. Recuperado de https://books.google.com.pe/books?id=nsTjBmyABXsC&printsec=frontcover&source=gbs_ge_summary_r&cad=0#v=onepage&q&f=false

                    </p>
                    <br>
                    <h2 class="font-20 semi-font my-3 fables-second-text-color fables-second-hover-color">Simulador</h2>


                    <div style="position: relative; width: 300px; height: 197px;">
                        <a href="../../../archivos-aulavirtual/temas/quimica/molecule-polarity_es_PE.html" >
                            <img src="g12simulador.JPG"   width="300px" height="180px"/>


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

