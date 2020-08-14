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
                <h2 class="fables-page-title fables-second-border-color">GU�A DE PR�CTICA - CINEM�TICA I: Movimiento de la Mariquita 2D</h2>
            </div>
        </div>
        <!-- /End Header -->

        <!-- Start Breadcrumbs -->
        <div class="fables-light-background-color">
            <div class="container">
                <nav aria-label="breadcrumb">
                    <ol class="fables-breadcrumb breadcrumb px-0 py-3">
                        <li class="breadcrumb-item"><a href="../../inicio" class="fables-second-text-color">Inicio</a></li>
                        <li class="breadcrumb-item active" aria-current="page"><a href="../../lab-fisica.jsp" class="fables-second-text-color">Laboratorio Virtual de f�sica</a></li>
                        <li class="breadcrumb-item active" aria-current="page">Cinem�tica I</li>
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
                <a href="../../../archivos-aulavirtual/temas/fisica/CINEMATICA I.pdf" ><img src="../../imagenes/pdf.jpg"  width="250px" height="240px"></a>
            </div>

            <!--Pr�ctica-->
            <div class="col-12 col-lg-10 offset-lg-1 col-xl-8 offset-xl-2 mt-4 mt-xl-5" >
                <h2 class="font-30 semi-font my-3 fables-main-text-color fables-second-hover-color text-center">Pr�ctica</h2>
                <br>
                <div class="col-12 col-lg-8">   


                    <h2 class="font-20 semi-font my-3 fables-second-text-color fables-second-hover-color">Objetivos</h2>


                    <label class="fables-main-text-color fables-single-blog font-14 my-3" >


                        <li>Interpretar vectores de posici�n, velocidad y aceleraci�n para un objeto que se mueve en 2D.</li> 
                        <li>Explicar c�mo la velocidad y la aceleraci�n afecta la velocidad.</li> 
                        <li>Explicar por qu� los vectores de velocidad y aceleraci�n se comportan como lo hacen para el movimiento lineal, circular y el�ptico.</li>
                    </label>
                    <br>

                    <h2 class="font-20 semi-font my-3 fables-second-text-color fables-second-hover-color">Materiales</h2>


                    <ul class="fables-main-text-color  font-14 my-3">

                        <li type="circle">GU�A DE PR�CTICA - CINEM�TICA I: Movimiento de la Mariquita 2D</li> 
                        <li type="circle">PhET Interactive Simulation, Simulation physical, 2D Ladybug Movement.</li>
                        <li type="circle">Microsoft Windows XP/vista/7/8.1/10 � OS X 10.9.5 o posteriores</li> 

                        <li type="circle"><a href="https://get.adobe.com/es/flashplayer/">Macromedia Flash 9 o posteriores</a></li> 
                        <li type="circle"><a href="https://www.java.com/es/download/">�ltima versi�n de JAVA</a></li> 


                    </ul>
                    <br>
                    <h2 class="font-20 semi-font my-3 fables-second-text-color fables-second-hover-color">Procedimiento</h2>
                    <ol class="fables-main-text-color  font-14 my-3">



                        <li>Arrastrar la "Mariquita", a diferentes direcciones, y observar c�mo cambian los vectores. </li>
                        <li>Escoger y experimentar con cada una de las opciones mostradas en la parte izquierda de la pantalla. </li>
                        <br>
                        a)	Vectores:
                        <ul type="circle">
                            <li>	Mostrar vector velocidad</li>
                            <li>	Mostrar vector aceleraci�n</li>
                            <li>	Mostar ambos</li>
                            <li>	Ocultar vectores</li>
                        </ul>
                        <br>
                        b)	Escoger movimiento:
                        <ul type="circle">
                            <li>	Manual</li>
                            <li>	Lineal</li>
                            <li>	Circular</li>
                            <li>	Elipse</li>
                        </ul>
                        <br>
                        c)	Trazo
                        <ul type="circle">

                            <li> 	L�nea</li>
                            <li>	Puntos</li>
                            <li>	Desactivado</li>
                        </ul>




                    </ol>

                    <h2 class="font-20 semi-font my-3 fables-second-text-color fables-second-hover-color">Conclusiones</h2>
                    <label class="fables-main-text-color  font-14 my-3" >
                        <li>Podemos definir velocidad como una variaci�n de la posici�n con el tiempo.</li>
                        <li>Un cuerpo puede tener aceleraci�n a pesar de no tener velocidad</li>
                        <li>Si un m�vil est� disminuyendo su rapidez (est� frenando), entonces su aceleraci�n va en el sentido contrario al movimiento.</li>


                    </label>
                    <br>
                    <h2 class="font-20 semi-font my-3 fables-second-text-color fables-second-hover-color">Fundamentos</h2>
                    <p class="fables-main-text-color  font-14 my-3" >
                        Velocidad media,  es la distancia recorrida por un m�vil entre el tiempo empleado. Si el m�vil mantiene constante, su velocidad, entonces se dice que el movimiento es uniforme, y su trayectoria recta tendremos el Movimiento Rectil�neo Uniforme (MRU).


                    </p>
                    <p class="fables-main-text-color  font-14 my-3">
                        Aceleraci�n, es la variaci�n de la velocidad en la unidad de tiempo. Se puede definir una aceleraci�n media entre dos instantes, inicial y final
                        y, de manera an�loga a la velocidad, puede definirse una aceleraci�n instant�nea llevando estos instantes inicial y final muy cerca uno del otro, hasta tener as� que la aceleraci�n instant�nea es la derivada de la velocidad respecto al tiempo: 
                    </p>

                    <br>
                    <h2 class="font-20 semi-font my-3 fables-second-text-color fables-second-hover-color">REFERENCIAS BIBLIOGR�FICAS</h2>
                    <p class="fables-main-text-color  font-14 my-3" >
                        Bragado, I. (2003). F�sica general. Recuperado de https://fisicas.ucm.es/data/cont/media/www/pag-39686/fisica-general-libro-completo.pdf
                        <br>
                        C�rdova, L. M�dulos para la ense�anza de la pr�ctica de la f�sica experimental. Gu�as de experimentos. 
                    </p>
                    <br>
                    <h2 class="font-20 semi-font my-3 fables-second-text-color fables-second-hover-color">Simulador</h2>

                    <div style="position: relative; width: 300px; height: 197px;">
                        <a href="../../../archivos-aulavirtual/temas/fisica/Movimiento de Mariquita en 2D.jar" style="text-decoration: none;">
                            <img src="Movimiento de Mariquita en 2D.JPG"  style="border: none;" width="300px" height="180px"/>


                        </a>

                    </div>


                </div>

                

            </div>
        </div>
    </div>
    <br>
    <br>
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

