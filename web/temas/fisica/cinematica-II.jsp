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
                <h2 class="fables-page-title fables-second-border-color">GUÍA DE PRÁCTICA - CINEMÁTICA II</h2>
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
                        <li class="breadcrumb-item active" aria-current="page">Cinemática II</li>
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
                <h2 class="font-30 semi-font my-3 fables-main-text-color fables-second-hover-color text-center">Teoría</h2>
                <br>
                <a href="../../../archivos-aulavirtual/temas/fisica/CINEMATICA II.pdf" ><img src="../../imagenes/pdf.jpg"  width="250px" height="240px"></a>
            </div>

            <!--Práctica-->
            <div class="col-12 col-lg-10 offset-lg-1 col-xl-8 offset-xl-2 mt-4 mt-xl-5" >



                <h2 class="font-30 semi-font my-3 fables-main-text-color fables-second-hover-color text-center">Práctica: EL HOMBRE EN MOVIMIENTO</h2>
                <br>
                <div class="col-12 col-lg-8">   

                    <h2 class="font-20 semi-font my-3 fables-second-text-color fables-second-hover-color">Objetivos:</h2>


                    <ul class="fables-main-text-color  font-14 my-3">


                        <li type="square">Interpretar, predecir y dibujar gráficos (posición, velocidad y aceleración) para situaciones comunes.</li> 
                        <li type="square">Describa su razonamiento utilizado para dar sentido a los gráficos.</li> 


                    </ul>
                    <br>

                    <h2 class="font-20 semi-font my-3 fables-second-text-color fables-second-hover-color">Materiales</h2>


                    <ul class="fables-main-text-color  font-14 my-3">

                        <li type="square">GUÍA DE PRÁCTICA - CINEMÁTICA II: Hombre en movimiento</li>
                        <li type="square">PhET Interactive Simulation, Simulation physical, Man in Motion.</li>
                        <li type="square">Microsoft Windows XP/vista/7/8.1/10 ó OS X 10.9.5 o posteriores</li> 
                        <li type="square"><a href="https://get.adobe.com/es/flashplayer/">Macromedia Flash 9 o posteriores</a></li> 
                        <li type="square"><a href="https://www.java.com/es/download/">Última versión de JAVA</a></li> 


                    </ul>
                    <br>
                    <h2 class="font-20 semi-font my-3 fables-second-text-color fables-second-hover-color">Procedimiento</h2>
                    <ol class="fables-main-text-color  font-14 my-3">



                        <li>En la barra azul, elija la posición del hombre (entre los 10m a 10m)</li>
                        <img src="g3p1.jpg">
                        <br>
                        <li>En la barra roja, elija la velocidad del hombre. Active la casilla para ver la dirección del vector de velocidad</li>
                        <img src="g3p2.jpg">
                        <br>
                        <li>En la barra verde, elija la aceleración. Active la casilla para ver la dirección del vector de aceleración.</li>
                        <img src="g3p3.jpg">
                        <br>
                        <li>Haga click en el botón "play" y mire como el hombre se mueve a la posición deseada mientras transcurre los segundos</li>







                    </ol>

                    <h2 class="font-20 semi-font my-3 fables-second-text-color fables-second-hover-color">Conclusiones</h2>
                    <label class="fables-main-text-color  font-14 my-3" >
                        <li>En conclusión, se puede decir que entendimos mejor qué en la física la rapidez que corresponde al cociente entre la distancia recorrida y el intervalo de tiempo empleado.</li>
                        <li>La velocidad, que es el cociente entre el desplazamiento y el tiempo empleado, y la aceleración que mide la variación de la velocidad de un móvil en un intervalo de tiempo.</li>

                    </label>
                    <br>
                    <h2 class="font-20 semi-font my-3 fables-second-text-color fables-second-hover-color">Fundamentos</h2>
                    <p class="fables-main-text-color  font-14 my-3" >
                        La velocidad establece la comparación entre el desplazamiento seguido por una partícula con el intervalo de tiempo empleado para dicho desplazamiento. También puede verse como la razón de cambio de los diferentes lugares que ocupa una partícula durante su recorrido hacia un lugar.

                    </p>
                    <p class="fables-main-text-color  font-14 my-3">
                        Una aceleración es el cambio en velocidad por unidad de tiempo. (Una cantidad vectorial) 
                    </p>

                    <br>
                    <h2 class="font-20 semi-font my-3 fables-second-text-color fables-second-hover-color">REFERENCIAS BIBLIOGRÁFICAS</h2>
                    <p class="fables-main-text-color  font-14 my-3" >
                        Díaz Solorzano S. y González Díaz L. (2010) Reflexiones sobre los conceptos velocidad y rapidez de una partícula en física.
                    </p>
                    <br>
                    <h2 class="font-20 semi-font my-3 fables-second-text-color fables-second-hover-color">Simulador</h2>

                    <div style="position: relative; width: 300px; height: 197px;">
                        <a href="../../../archivos-aulavirtual/temas/fisica/El hombre en movimiento.jar" style="text-decoration: none;">
                            <img src="El hombre en movimiento.JPG "  style="border: none;" width="300px" height="180px"/>


                        </a>

                    </div>

                </div>
                <h2 class="font-30 semi-font my-3 fables-main-text-color fables-second-hover-color text-center">Práctica: MOVIMIENTO DE UN PROYECTIL</h2>
                <br>
                <div class="col-12 col-lg-8">   



                    <h2 class="font-20 semi-font my-3 fables-second-text-color fables-second-hover-color">Objetivos:</h2>


                    <ul class="fables-main-text-color  font-14 my-3">


                        <li type="square">Predecir cómo variando las condiciones iniciales afectarán la trayectoria de un proyectil, y proporcionarán una explicación para la predicción.</li> 
                        <li type="square">Estimar dónde un objeto aterrizará, dado sus condiciones iniciales.</li> 
                        <li type="square">Discutir el movimiento de un proyectil usando un vocabulario simple (tales como: ángulo de lanzamiento, velocidad inicial, altura inicial, distancia, tiempo).</li> 


                    </ul>
                    <br>

                    <h2 class="font-20 semi-font my-3 fables-second-text-color fables-second-hover-color">Materiales</h2>


                    <ul class="fables-main-text-color  font-14 my-3">
                        <li type="square">Guía de práctica - Cinemática II: Movimiento de un proyectil</li>
                        <li type="square">PhET Interactive Simulation, Simulation physical, Projectile Movement. </li>
                        <li type="square">Microsoft Windows XP/vista/7/8.1/10 ó OS X 10.9.5 o posteriores</li> 
                        <li type="square"><a href="https://get.adobe.com/es/flashplayer/">Macromedia Flash 9 o posteriores</a></li> 
                        <li type="square"><a href="https://www.java.com/es/download/">Última versión de JAVA</a></li> 


                    </ul>
                    <br>
                     <h2 class="font-20 semi-font my-3 fables-second-text-color fables-second-hover-color">Procedimiento</h2>
                    <ol class="fables-main-text-color  font-14 my-3">



                        <li>Elegir la altura del cañón y el ángulo en el que estará inclinado.</li>
                        
                        <li>Elegir el tipo de proyectil a lanzar (bala de cañón, pelota de golf, calabaza, etc.)</li>
                        
                       
                        <li>Elegir la masa y el diámetro del proyectil</li>
                       
                        <li>Dispara</li>
                         <img src="g3p4.jpg">
                        <br>
                        <li>Mide la distancia.</li>
                         <img src="g3p5.jpg">
                        <br>
                        <li>Evalúa el tiempo y distancia en cada punto de la trayectoria</li>
                         <img src="g3p6.jpg">
                        <br>
                        <li>Vuelve a comenzar. </li>
                         <img src="g3p7.jpg">
                        


                    </ol>

                    <h2 class="font-20 semi-font my-3 fables-second-text-color fables-second-hover-color">Conclusiones</h2>
                    <label class="fables-main-text-color  font-14 my-3" >
                        <li>Concluimos que, el proyectil pierde algo de velocidad por efectos de rozamiento con el aire, pero la segunda razón es errónea. Hay un principio de la naturaleza que a veces se denomina principio de inercia y que establece que los cuerpos tienden a continuar en la misma dirección y con la misma velocidad que llevaban mientras no haya ninguna fuerza que se lo impida. En otras palabras, no hace falta que nada mueva al proyectil.</li>
                        <li>Podemos decir que el   movimiento vertical se convierte en una simple caída libre de un objeto como ya hemos estudiado.</li>

                    </label>
                    <br>
                    <h2 class="font-20 semi-font my-3 fables-second-text-color fables-second-hover-color">Fundamentos</h2>
                    <p class="fables-main-text-color  font-14 my-3" >
                      Un proyectil es un objeto sobre el cual la única fuerza que actúa sobre él es la gravedad. Hay una variedad de ejemplos de proyectiles: un objeto que se lanza (hacia abajo) desde un precipicio es un proyectil; un objeto que se lanza verticalmente hacia arriba es también un proyectil; y un objeto que es lanzado hacia arriba en ángulo también es un proyectil. Todos estos ejemplos se dan con la condición de que la resistencia del aire se desprecia. 
                    </p>
                 

                    <br>
                    <h2 class="font-20 semi-font my-3 fables-second-text-color fables-second-hover-color">REFERENCIAS BIBLIOGRÁFICAS</h2>
                    <p class="fables-main-text-color  font-14 my-3" >
                    González S. y Díaz M. (2017). Cinemática en dos dimensiones ? Movimiento de proyectiles. https://www.fing.edu.uy/if/cursos/fis1/pmme/informe/sv2.pdf   
                    </p>
                    <br>
                    
                    <h2 class="font-20 semi-font my-3 fables-second-text-color fables-second-hover-color">Simulador</h2>

                    <div style="position: relative; width: 300px; height: 197px;">
                        <a href="../../../archivos-aulavirtual/temas/fisica/Movimiento de un proyectil.html" style="text-decoration: none;">
                            <img src="Movimiento de un proyectil.JPG"  style="border: none;" width="300px" height="180px"/>


                        </a>

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

