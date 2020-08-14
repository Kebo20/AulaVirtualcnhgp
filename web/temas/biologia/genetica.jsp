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
                <h2 class="fables-page-title fables-second-border-color">GU�A DE PR�CTICA 03 - Gen�tica: expresi�n g�nica</h2>
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
                        <li class="breadcrumb-item active" aria-current="page">Gen�tica: expresi�n g�nica</li>
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


                    <ul class="fables-main-text-color  font-14 my-3" >


                        <li type="square">Explicar la secuencia principal de eventos que ocurren dentro de una c�lula que conduce a la s�ntesis de prote�nas</li> 
                        <li type="square">Predecir c�mo la modificaci�n de las concentraciones e interacciones de las biomol�culas afecta la producci�n de prote�nas.</li> 
                        <li type="square">Explica c�mo la producci�n de prote�nas en una sola c�lula se relaciona con la cantidad producida por una colecci�n de c�lulas.</li> 


                    </ul>
                    <br>

                    <h2 class="font-20 semi-font my-3 fables-second-text-color fables-second-hover-color">Materiales</h2>
                    
                    <ul class="fables-main-text-color  font-14 my-3">


                        <li type="square">Gu�a de pr�ctica 03- Gen�tica: expresi�n g�nica</li> 
                        <li type="square">PhET Interactive Simulation, Simulation biology, gene expression. </li> 
                        <li type="square">Microsoft Windows XP/vista/7/8.1/10 � OS X 10.9.5 o posteriores</li> 
                        <li type="square"><a href="https://get.adobe.com/es/flashplayer/">Macromedia Flash 9 o posteriores</a></li> 
                        <li type="square"><a href="https://www.java.com/es/download/">�ltima versi�n de JAVA</a></li> 


                    </ul>


                    <br>
                    <h2 class="font-20 semi-font my-3 fables-second-text-color fables-second-hover-color">Procedimiento</h2>
                    <label class="fables-main-text-color  font-14 my-3">

                        Seleccionar una de las tres opciones mostradas en la pantalla:  
                        1)	Pantalla de expresi�n: Explora la secuencia principal de acontecimientos que ocurren dentro de una c�lula que conduce a la s�ntesis de prote�nas. Generar y recoger tres tipos de prote�nas. 
                         <br>
                        <li>Arrastra las biomol�culas seg�n la indicaci�n del simulador.</li>
                        <li>Observa la traducci�n</li>
                        <li>Recoge las prote�nas</li>
                        
                        <li>Explora tres genes diferentes haciendo click en next gene. </li>
                        <br>
                        2)	Pantalla de ARNm: Explora los factores que afectan la transcripci�n, incluida la concentraci�n y afinidad del factor de transcripci�n positivo y negativo, y la afinidad de la ARN polimerasa.
                         <br>
                        <li>Adjunta la concentraci�n y afinidad.</li>
                        <li>Observa la traducci�n.</li>
                        <li>Muestra u oculta el factor de transcripci�n negativo. </li>
                        <br>
                        3)	Pantalla de celdas m�ltiples: Explora los factores que afectan la s�ntesis de prote�nas en una c�lula, y relacionar la producci�n de prote�nas en una sola c�lula a la cantidad producida por un conjunto de c�lulas.
                         <br>
                        <li>Ver c�lulas de prote�na real (GFP).</li>
                        <li>Observar el nivel promedio de prote�nas en tiempo real.</li>
                        <li>Ajusta el n�mero de c�lulas.</li>
                        <li>Controlar la concentraci�n, afinidades, y la degradaci�n.</li>
                        <li>Pausa y avanza cuadro por cuadro. </li>




                    </label>



                    <br>
                    <h2 class="font-20 semi-font my-3 fables-second-text-color fables-second-hover-color">Conclusiones</h2>
                    <ul class="fables-main-text-color  font-14 my-3" >

                        <li type="square" >El proceso no muestra el ARNm que se mueve fuera del n�cleo y, por lo tanto, muestra una c�lula procariota, en lugar de una c�lula eucariota.</li>
                        <li type="square">La ARN polimerasa y los factores de transcripci�n tienen un movimiento pseudoaleatorio que tiende a conducir hacia la regi�n del gen.</li>
                        <li type="square">Los genes que se transcriben son significativamente m�s cortos (en t�rminos del n�mero de pares de bases) que los genes de la vida real.</li>
                        <li type="square">En la pantalla de C�lulas m�ltiples, la producci�n de prote�nas que se est� modelando es la prote�na verde fluorescente (GFP).</li>  
                    </ul>
                    <br>
                    <h2 class="font-20 semi-font my-3 fables-second-text-color fables-second-hover-color">Fundamentos</h2>
                    <label class="fables-main-text-color  font-14 my-3" >
                        La transcripci�n es el proceso de s�ntesis enzim�tica de un RNA con una secuencia complementaria a un segmento de DNA.
                        La informaci�n del DNA se utiliza para dirigir la s�ntesis de prote�nas mediante un proceso que ocurre en dos etapas:
                        1)	Durante la s�ntesis de RNA, o transcripci�n, la informaci�n contenida en el DNA de un gen espec�fico se copia en RNA, ya sea RNAm, RNAt, RNAr. 
                        2)	Durante la s�ntesis de prote�nas, o traducci�n, el RNAt y el RNAr, junto con ciertas prote�nas utilizan la secuencia de nucle�tidos de una mol�cula de RNAm para sintetizar una secuencia de amino�cidos espec�fica de una prote�na. 

                    </label>
                    <br>
                    <h2 class="font-20 semi-font my-3 fables-second-text-color fables-second-hover-color">REFERENCIAS BIBLIOGR�FICAS</h2>
                    <p class="fables-main-text-color  font-14 my-3" >
                        Rodriguez, R. (2005). Manual de pr�cticas de gen�tica y cuaderno de trabajo. Recuperado de https://books.google.com.pe/books?id=N23ND-S2E7gC&pg=PA123&dq=operon+lac+regulacion+genica%7D&hl=es-419&sa=X&ved=0ahUKEwi1pKzbj4HlAhUKrVkKHXb-CZQQ6AEIUDAF#v=onepage&q=operon%20lac%20regulacion%20genica%7D&f=false
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

