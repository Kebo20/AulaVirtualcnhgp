
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
                        <b style="color:aliceblue" class="font-17">I.E.P. "NUESTROS H�ROES DE LA GUERRA DEL PAC�FICO"  </b>




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
                <h2 class="fables-page-title fables-second-border-color">GU�A DE PR�CTICA 09 - LEY DE BEER: Laboratorio de la Ley de Beer</h2>
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
                        <li class="breadcrumb-item active" aria-current="page">LEY DE BEER</li>
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


                    <label class="fables-main-text-color  font-14 my-3" >


                        <li>Describe las relaciones entre volumen y la cantidad de soluto de la concentraci�n de soluci�n.</li> 
                        <li>Predecir y explicar c�mo la concentraci�n de la soluci�n va a cambiar al a�adir o retirar: agua, soluto, y/o soluci�n.</li> 
                        <li>Calcular la concentraci�n de las soluciones en unidades de molaridad (mol /L).</li>
                        <li>Describir la relaci�n entre la absorbancia, absortividad molar, longitud de trayectoria, y concentraci�n en la Ley de Beer</li> 
                    </label>
                    <br>

                    <h2 class="font-20 semi-font my-3 fables-second-text-color fables-second-hover-color">Materiales</h2>


                    <ul class="fables-main-text-color  font-14 my-3">

                        <li type="square">GU�A DE PR�CTICA 09 - LEY DE BEER: Laboratorio de la Ley de Beer</li> 
                        <li type="square">PhET Interactive Simulation, Simulation chemical,Beer Law laboratory.</li> 
                        <li type="square">Microsoft Windows XP/vista/7/8.1/10 � OS X 10.9.5 o posteriores</li> 
                        <li type="square"><a href="https://get.adobe.com/es/flashplayer/">Macromedia Flash 9 o posteriores</a></li> 
                        <li type="square"><a href="https://www.java.com/es/download/">�ltima versi�n de JAVA</a></li> 


                    </ul>
                    <br>
                    <h2 class="font-20 semi-font my-3 fables-second-text-color fables-second-hover-color">Procedimiento</h2>
                    <label class="fables-main-text-color  font-14 my-3">
                        A)	Seleccionar la opci�n Concentraci�n, y proceder de la siguiente manera: 
                        <br>
                        <ol>
                            <li>Escoger y experimentar con varios solutos (productos qu�micos diferentes) en forma de soluci�n s�lida y concentrada. </li>
                            <li>Dispensar el soluto desplaz�ndolo a los costados.</li>
                            <li>Leer molaridad arrastrando sonda hacia el vaso de precipitados</li>
                            <li>Seguir experimentando eliminando agua en la opci�n evaporaci�n o tirando de la palanca inferior del vaso de precipitados. </li>
                            <li>Remover soluto, para experimentar con uno diferente.</li>

                        </ol>
                        <br><br>

                        B)Seleccionar la opci�n Ley de Beer, en donde  se investigar� c�mo la intensidad de la luz absorbida o transmitida por una soluci�n cambia de color con el tipo de soluci�n, concentraci�n de la soluci�n, la anchura del recipiente (longitud de trayectoria), o fuente de luz.
                        <br>
                        <ol>
                            <li>Encender la fuente de luz (bot�n rojo).</li>
                            <li>Seleccionar la soluci�n de trabajo.</li>
                            <li>Medir la transmitancia o absorbancia, arrastrando el medidor.</li>
                            <li>Medir la longitud de la trayectoria, arrastrando la regla amarilla hacia la parte inferior del contenedor.</li>
                        </ol>







                    </label>

                    <br>
                    <h2 class="font-20 semi-font my-3 fables-second-text-color fables-second-hover-color">Conclusiones</h2>
                    <ol class="fables-main-text-color  font-14 my-3" >
                        <li>El volumen de soluto disuelto tiene s�lo un peque�o efecto sobre el volumen.</li>
                        <li>La cantidad m�xima de soluto que se puede a�adir es de 7 moles</li>
                        <li>La cantidad m�xima de soluto que se puede a�adir es de 7 moles</li>
                        <li>El cloruro de sodio no est� incluido en la pantalla de la Ley de Beer como la soluci�n es transparente e incolora y no absorbe la luz.</li>


                    </ol>
                    <br>
                    <h2 class="font-20 semi-font my-3 fables-second-text-color fables-second-hover-color">Fundamentos</h2>
                    <p class="fables-main-text-color  font-14 my-3" >
                        La cantidad de radiaci�n electromagn�tica absorbida por un analito se puede relacionar cuantitativamente con la concentraci�n de dichas sustancias en soluci�n. La transmitancia (T) se define como la fracci�n de radiaci�n incidente trasmitida por la disoluci�n. Si la potencia radiante que incide sobre la disoluci�n es Po y P la potencia radiante que sale, entonces: T= P/P0
                        <br>
                        Adem�s la potencia de la energ�a trasmitida disminuye geom�tricamente con la concentraci�n C y con la distancia b recorrida a trav�s de la disoluci�n.
                        <br>
                        Cuando se usan unidades molares se llama absortividad molar  y se expresa en L/mol*cm.
                        <br>
                        La probabilidad de absorci�n en una longitud de onda est� caracterizada por el coeficiente de absorci�n molar a esa longitud de onda. Si la luz de intensidad I0 pasa a trav�s de una sustancia de espesor d (en cm) y concentraci�n molar c, la intensidad de la luz transmitida obedece la Ley de Lambert-Beer.



                    </p>
                    <br>
                    <h2 class="font-20 semi-font my-3 fables-second-text-color fables-second-hover-color">REFERENCIAS BIBLIOGR�FICAS</h2>
                    <p class="fables-main-text-color  font-14 my-3" >
                        L�pez, J. y Arenas, I. (2004). Curso: M�todos de laboratorio. Recuperado de http://www.ibt.unam.mx/computo/pdfs/met/espectrometria_de_absorcion.pdf
                    </p>
                    <br>
                    <h2 class="font-20 semi-font my-3 fables-second-text-color fables-second-hover-color">Simulador</h2>


                    <div style="position: relative; width: 300px; height: 197px;">
                        <a href="../../../archivos-aulavirtual/temas/quimica/beers-law-lab_es_PE.html" >
                            <img src="g9simulador.JPG"   width="300px" height="180px"/>


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

