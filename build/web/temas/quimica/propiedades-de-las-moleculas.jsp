
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
                <h2 class="fables-page-title fables-second-border-color">GU�A DE PR�CTICA 12 - PROPIEDADES DE LAS MOL�CULAS: Polaridad de la mol�cula</h2>
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
                        <li class="breadcrumb-item active" aria-current="page">PROPIEDADES DE LAS MOL�CULAS: Polaridad de la mol�cula</li>
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


                        <li>Predecir la polaridad del enlace usando valores de electronegatividad</li> 
                        <li>Indicar la polaridad con una flecha polar o cargas parciales.</li> 
                        <li>Clasificar los enlaces en orden de polaridad.</li>
                        <li>Predecir la polaridad molecular usando la polaridad de enlace y la forma molecular</li>
                    </label>
                    <br>

                    <h2 class="font-20 semi-font my-3 fables-second-text-color fables-second-hover-color">Materiales</h2>


                    <ul class="fables-main-text-color  font-14 my-3">

                        <li type="square">GU�A DE PR�CTICA 12 -PROPIEDADES DE LAS MOL�CULAS: Polaridad de la mol�cula</li>
                        <li type="square">PhET Interactive Simulation, Simulation chemical,Polarity of the molecule.</li>
                        <li type="square">Microsoft Windows XP/vista/7/8.1/10 � OS X 10.9.5 o posteriores</li> 
                        <li type="square"><a href="https://get.adobe.com/es/flashplayer/">Macromedia Flash 9 o posteriores</a></li> 
                        <li type="square"><a href="https://www.java.com/es/download/">�ltima versi�n de JAVA</a></li> 


                    </ul>
                    <br>
                    <h2 class="font-20 semi-font my-3 fables-second-text-color fables-second-hover-color">Procedimiento</h2>
                    <ol class="fables-main-text-color  font-14 my-3">
                        <dl>
                            <dt><li>Seleccionar Dos �tomos, y cambie la electronegatividad de los �tomos, vea el potencial electrost�tico resultante o la densidad de electrones, y prediga la polaridad del enlace:  </li>
                            </dt>
                            <ul>
                                <dd><li type="circle">Explorar diferentes superficies</li></dd>
                                <dd><li type="circle">Explorar diferentes superficies</li></dd>
                                <dd><li type="circle">Determinar si el enlace es m�s covalente o m�s i�nica</li></dd>
                                <dd><li type="circle">Observar cargas parciales.</li></dd>
                            </ul>

                        </dl>
                        <dl>
                            <dt><li>Seleccionar Tres �tomos, y explore la relaci�n entre los dipolos de enlace y el dipolo molecular, y observe la mol�cula en un campo el�ctrico: </li>
                            </dt>
                            <ul>
                                <dd><li type="circle">Arrastrar �tomos de A O para ajustar el �ngulo de enlace.</li></dd>
                                <dd><li type="circle">Relacionar los dipolos de enlace al dipolo molecular.</li></dd>
                                <dd><li type="circle">Observar los �tomos en un campo el�ctrico (Activar).</li></dd>

                            </ul>


                        </dl>







                    </ol>

                    <br>
                    <h2 class="font-20 semi-font my-3 fables-second-text-color fables-second-hover-color">Conclusiones</h2>
                    <ol class="fables-main-text-color  font-14 my-3" >
                        <li>El dipolo molecular es la suma vectorial de los dipolos de enlace. En la pantalla de dos �tomos, no se muestra el dipolo molecular, ya que es equivalente al dipolo de enlace.</li>
                        <li>Si un �tomo tiene una electronegatividad m�s alta que el �tomo en el otro extremo del enlace, entonces el signo de la carga parcial es negativo; de lo contrario es positivo.</li>
                        <li>La pantalla de tres �tomos permite cambiar el �ngulo de enlace entre los �tomos externos (A y C).</li>



                    </ol>
                    <br>
                    <h2 class="font-20 semi-font my-3 fables-second-text-color fables-second-hover-color">Fundamentos</h2>
                    <p class="fables-main-text-color  font-14 my-3" >
                        La polaridad consiste en la capacidad de una mol�cula para ejercer interacciones intermoleculares de naturaleza electrost�tica, debido a una distribuci�n asim�trica de las cargas el�ctricas entre sus �tomos. El origen de la polaridad est� en la diferencia de electronegatividad de sus �tomos. La electronegatividad (x) es una propiedad per�dica que consiste en la capacidad de los �tomos de un elemento para atraer hacia s� a los electrones de los enlaces en que participa. Existen escalas para medir la electronegativad, pero la m�s conocida y usada es la de Pauling

                    </p>
                    <p class="fables-main-text-color  font-14 my-3" >

                        La polaridad de una mol�cula se mide a trav�s del momento dipolar. Las mol�culas polares son aquellas que adem�s de tener enlaces polares no son sim�tricas. Por lo que la polaridad de una mol�cula depende tanto de que tenga uniones polares como de su geometr�a.
                    </p>
                    <p class="fables-main-text-color  font-14 my-3" >
                        Cada mol�cula tiene una serie de estados excitados (o bandas) que la distingue del resto de mol�culas. Como consecuencia, la absorci�n que a distintas longitudes de onda presenta una mol�cula, su espectro de absorci�n constituye una se�a de identidad de la misma. Por lo tanto, la mol�cula en forma excitada libera la energ�a absorbida hasta el estado energ�tico fundamental.
                    </p>
                    <p class="fables-main-text-color  font-14 my-3" >
                        Por ejemplo, el H2O es una mol�cula con geometr�a angular, cada uni�n O-H posee una polaridad por la diferencia de electronegatividades entre O y H. Debido a la geometr�a molecular, los dipolos de enlace no se compensan y el agua es una mol�cula polar.   

                    </p>
                    <br>
                    <h2 class="font-20 semi-font my-3 fables-second-text-color fables-second-hover-color">REFERENCIAS BIBLIOGR�FICAS</h2>
                    <p class="fables-main-text-color  font-14 my-3" >
                        Aldable, S y Aramendia, P. (2004). Qu�mica 2. Qu�mica en acci�n. Recuperado de https://books.google.com.pe/books?id=nsTjBmyABXsC&printsec=frontcover&source=gbs_ge_summary_r&cad=0#v=onepage&q&f=false

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

