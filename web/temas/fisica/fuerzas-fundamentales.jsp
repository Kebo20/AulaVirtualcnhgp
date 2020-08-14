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
                <h2 class="fables-page-title fables-second-border-color">GUÍA DE PRÁCTICA - FUERZAS FUNDAMENTALES: Fuerzas y movimiento.</h2>
            </div>
        </div>    
        <!-- /End Header -->

        <!-- Start Breadcrumbs -->
        <div class="fables-light-background-color">        

            <div class="container">
                <nav aria-label="breadcrumb">
                    <ol class="fables-breadcrumb breadcrumb px-0 py-3">
                        <li class="breadcrumb-item"><a href="../../inicio" class="fables-second-text-color">Inicio</a></li>
                        <li class="breadcrumb-item active" aria-current="page"><a href="../../lab-fisica.jsp" class="fables-second-text-color">Laboratorio Virtual de física</a></li>
                        <li class="breadcrumb-item active" aria-current="page">FUERZAS FUNDAMENTALES: Fuerzas y movimiento.</li>
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
                <h2 class="font-30 semi-font my-3 fables-main-text-color fables-second-hover-color text-center">Práctica</h2>
                <br>
                <div class="col-12 col-lg-8">   



                    <h2 class="font-20 semi-font my-3 fables-second-text-color fables-second-hover-color">Objetivos</h2>


                    <ul class="fables-main-text-color fables-single-blog font-14 my-3">


                        <li type="disc">Predecir, cualitativamente, cómo una fuerza externa afectará la velocidad y dirección del movimiento de un objeto.</li> 
                        <li type="disc">Explicar los efectos con la ayuda de un diagrama de cuerpo libre.</li> 
                        <li type="disc">Utilice diagramas de cuerpo libre para dibujar gráficos de posición, velocidad, aceleración y fuerza, y viceversa.</li> 
                        <li type="disc">Explicar cómo las gráficas se relacionan entre sí.</li> 


                    </ul>
                    <br>

                    <h2 class="font-20 semi-font my-3 fables-second-text-color fables-second-hover-color">Materiales</h2>



                    <ul class="fables-main-text-color  font-14 my-3">

                        <li type="square">GUÍA DE PRÁCTICA - FUERZAS FUNDAMENTALES: Fuerzas y movimiento.</li>
                        <li type="square">PhET Interactive Simulation, Simulation physical, forces and movement.</li>
                        <li type="square">Microsoft Windows XP/vista/7/8.1/10 ó OS X 10.9.5 o posteriores</li> 
                        <li type="square"><a href="https://get.adobe.com/es/flashplayer/">Macromedia Flash 9 o posteriores</a></li> 
                        <li type="square"><a href="https://www.java.com/es/download/">Última versión de JAVA</a></li> 



                    </ul>
                    <br>

                    <br>
                    <h2 class="font-20 semi-font my-3 fables-second-text-color fables-second-hover-color">Procedimiento</h2>
                    <ol class="fables-main-text-color  font-14 my-3">

                        <dl>

                            <dt><li>Seleccionar, "Introducción":</li></dt>
                            <dd>*Aplicar fuerza, hacia ambos lados, manteniendo el cursor en movimiento sobre la barra de fuerza. </dd>
                            <dd>*Aplicar las diferentes opciones de la parte derecha del simulador y observar lo que sucede.</dd>
                            <dt><li>Seleccionar, "Fricción":</li></dt>
                            <dd>*A la fuerza, aplicar fricción estática, cinética, masa del objeto y gravedad; observar e interpretar lo que sucede.</dd>
                            <dd>*Marcar las fuerzas paralelas y aplicar fuerza sobre el objeto hacia la izquierda o derecha. </dd>
                            <dt><li>Seleccionar, "Compañía robot de mudanza":</li></dt>
                            <dd>*Aplicar fuerza sobre lo indicado según la simulación, con ayuda de las fechas derecha o izquierda hasta que ingrese en la casa.</dd>

                        </dl>



                    </ol>

                    <h2 class="font-20 semi-font my-3 fables-second-text-color fables-second-hover-color">Conclusiones</h2>
                    <label class="fables-main-text-color  font-14 my-3" >
                        <li>Tanto empujar como tirar son ejemplos de fuerzas.</li>
                        <li>Se necesita una fuerza para mover un objeto, o para que cambie su movimiento o dirección.</li>
                        <li>El movimiento se manifiesta acelerando, disminuyendo la velocidad, cambiando la dirección de los objetos.</li>
                        <li>Cuanto mayor es la fuerza, mayor es el movimiento o el cambio de dirección.</li>
                        <li>La fricción es una fuerza que se opone al movimiento</li>

                    </label>
                    <br>
                    <h2 class="font-20 semi-font my-3 fables-second-text-color fables-second-hover-color">Fundamentos</h2>
                    <p class="fables-main-text-color  font-14 my-3" >
                    El movimiento de un cuerpo es algo que no adquiere pleno sentido en sí mismo, sino que debe describirse necesariamente en relación con otros cuerpos. 
                    </p>
                    <p class="fables-main-text-color  font-14 my-3" >
                    En física diremos que un cuerpo se mueve cuando cambia de posición. La posición de un cuerpo se define con respecto a otros cuerpos, o con respecto a un sistema de referencia.  
                    </p>
                    <p class="fables-main-text-color  font-14 my-3">
                        El sistema de referencia puede ser un conjunto de cuerpos de referencia, o una construcción abstracta definida con respecto a algún conjunto determinado de cuerpos.
                    </p>
                  

                    <br>
                    <h2 class="font-20 semi-font my-3 fables-second-text-color fables-second-hover-color">REFERENCIAS BIBLIOGRÁFICAS</h2>
                    <p class="fables-main-text-color  font-14 my-3" >
                    Iparraguirre, L. (2009). Mecánica básica. Recuperado de http://www.bnm.me.gov.ar/giga1/documentos/EL001845.pdf  
                    </p>
                    <br>
                    <h2 class="font-20 semi-font my-3 fables-second-text-color fables-second-hover-color">Simulador</h2>

                    <div style="position: relative; width: 300px; height: 197px;">
                        <a href="../../../archivos-aulavirtual/temas/fisica/forces-and-motion_es_PE.jar" style="text-decoration: none;">
                            <img src="g5simulador.JPG"  style="border: none;" width="300px" height="180px"/>


                        </a>

                    </div>





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

