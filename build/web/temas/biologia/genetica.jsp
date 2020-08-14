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
                                <a href="logout" class=" font-13 fables-third-text-color dropdown-toggle right px-3 px-md-2 px-lg-4 fables-second-hover-color top-header-link max-line-height position-relative" >
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
                <h2 class="fables-page-title fables-second-border-color">GUÍA DE PRÁCTICA 03 - Genética: expresión génica</h2>
            </div>
        </div>
        <!-- /End Header -->

        <!-- Start Breadcrumbs -->
        <div class="fables-light-background-color">
            <div class="container">
                <nav aria-label="breadcrumb">
                    <ol class="fables-breadcrumb breadcrumb px-0 py-3">
                        <li class="breadcrumb-item"><a href="../../inicio" class="fables-second-text-color">Inicio</a></li>
                        <li class="breadcrumb-item active" aria-current="page"><a href="../../lab-biologia.jsp" class="fables-second-text-color">Laboratorio Virtual de Biología</a></li>
                        <li class="breadcrumb-item active" aria-current="page">Genética: expresión génica</li>
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


                    <ul class="fables-main-text-color  font-14 my-3" >


                        <li type="square">Explicar la secuencia principal de eventos que ocurren dentro de una célula que conduce a la síntesis de proteínas</li> 
                        <li type="square">Predecir cómo la modificación de las concentraciones e interacciones de las biomoléculas afecta la producción de proteínas.</li> 
                        <li type="square">Explica cómo la producción de proteínas en una sola célula se relaciona con la cantidad producida por una colección de células.</li> 


                    </ul>
                    <br>

                    <h2 class="font-20 semi-font my-3 fables-second-text-color fables-second-hover-color">Materiales</h2>
                    
                    <ul class="fables-main-text-color  font-14 my-3">


                        <li type="square">Guía de práctica 03- Genética: expresión génica</li> 
                        <li type="square">PhET Interactive Simulation, Simulation biology, gene expression. </li> 
                        <li type="square">Microsoft Windows XP/vista/7/8.1/10 ó OS X 10.9.5 o posteriores</li> 
                        <li type="square"><a href="https://get.adobe.com/es/flashplayer/">Macromedia Flash 9 o posteriores</a></li> 
                        <li type="square"><a href="https://www.java.com/es/download/">Última versión de JAVA</a></li> 


                    </ul>


                    <br>
                    <h2 class="font-20 semi-font my-3 fables-second-text-color fables-second-hover-color">Procedimiento</h2>
                    <label class="fables-main-text-color  font-14 my-3">

                        Seleccionar una de las tres opciones mostradas en la pantalla:  
                        1)	Pantalla de expresión: Explora la secuencia principal de acontecimientos que ocurren dentro de una célula que conduce a la síntesis de proteínas. Generar y recoger tres tipos de proteínas. 
                         <br>
                        <li>Arrastra las biomoléculas según la indicación del simulador.</li>
                        <li>Observa la traducción</li>
                        <li>Recoge las proteínas</li>
                        
                        <li>Explora tres genes diferentes haciendo click en next gene. </li>
                        <br>
                        2)	Pantalla de ARNm: Explora los factores que afectan la transcripción, incluida la concentración y afinidad del factor de transcripción positivo y negativo, y la afinidad de la ARN polimerasa.
                         <br>
                        <li>Adjunta la concentración y afinidad.</li>
                        <li>Observa la traducción.</li>
                        <li>Muestra u oculta el factor de transcripción negativo. </li>
                        <br>
                        3)	Pantalla de celdas múltiples: Explora los factores que afectan la síntesis de proteínas en una célula, y relacionar la producción de proteínas en una sola célula a la cantidad producida por un conjunto de células.
                         <br>
                        <li>Ver células de proteína real (GFP).</li>
                        <li>Observar el nivel promedio de proteínas en tiempo real.</li>
                        <li>Ajusta el número de células.</li>
                        <li>Controlar la concentración, afinidades, y la degradación.</li>
                        <li>Pausa y avanza cuadro por cuadro. </li>




                    </label>



                    <br>
                    <h2 class="font-20 semi-font my-3 fables-second-text-color fables-second-hover-color">Conclusiones</h2>
                    <ul class="fables-main-text-color  font-14 my-3" >

                        <li type="square" >El proceso no muestra el ARNm que se mueve fuera del núcleo y, por lo tanto, muestra una célula procariota, en lugar de una célula eucariota.</li>
                        <li type="square">La ARN polimerasa y los factores de transcripción tienen un movimiento pseudoaleatorio que tiende a conducir hacia la región del gen.</li>
                        <li type="square">Los genes que se transcriben son significativamente más cortos (en términos del número de pares de bases) que los genes de la vida real.</li>
                        <li type="square">En la pantalla de Células múltiples, la producción de proteínas que se está modelando es la proteína verde fluorescente (GFP).</li>  
                    </ul>
                    <br>
                    <h2 class="font-20 semi-font my-3 fables-second-text-color fables-second-hover-color">Fundamentos</h2>
                    <label class="fables-main-text-color  font-14 my-3" >
                        La transcripción es el proceso de síntesis enzimática de un RNA con una secuencia complementaria a un segmento de DNA.
                        La información del DNA se utiliza para dirigir la síntesis de proteínas mediante un proceso que ocurre en dos etapas:
                        1)	Durante la síntesis de RNA, o transcripción, la información contenida en el DNA de un gen específico se copia en RNA, ya sea RNAm, RNAt, RNAr. 
                        2)	Durante la síntesis de proteínas, o traducción, el RNAt y el RNAr, junto con ciertas proteínas utilizan la secuencia de nucleótidos de una molécula de RNAm para sintetizar una secuencia de aminoácidos específica de una proteína. 

                    </label>
                    <br>
                    <h2 class="font-20 semi-font my-3 fables-second-text-color fables-second-hover-color">REFERENCIAS BIBLIOGRÁFICAS</h2>
                    <p class="fables-main-text-color  font-14 my-3" >
                        Rodriguez, R. (2005). Manual de prácticas de genética y cuaderno de trabajo. Recuperado de https://books.google.com.pe/books?id=N23ND-S2E7gC&pg=PA123&dq=operon+lac+regulacion+genica%7D&hl=es-419&sa=X&ved=0ahUKEwi1pKzbj4HlAhUKrVkKHXb-CZQQ6AEIUDAF#v=onepage&q=operon%20lac%20regulacion%20genica%7D&f=false
                    </p>
                    <br>
                    <h2 class="font-20 semi-font my-3 fables-second-text-color fables-second-hover-color">Simulador</h2>


                    <div style="position: relative; width: 300px; height: 197px;">
                        <a href="../../../archivos-aulavirtual/temas/biologia/gene-expression-essentials_es_PE.html" style="text-decoration: none;">
                            <img src="g3simulador.JPG"  style="border: none;" width="300px" height="180px"/>


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

