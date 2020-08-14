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
                <h2 class="fables-page-title fables-second-border-color">GU�A DE PR�CTICA - CINEM�TICA II</h2>
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
                        <li class="breadcrumb-item active" aria-current="page">Cinem�tica II</li>
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
                <a href="../../../archivos-aulavirtual/temas/fisica/CINEMATICA II.pdf" ><img src="../../imagenes/pdf.jpg"  width="250px" height="240px"></a>
            </div>

            <!--Pr�ctica-->
            <div class="col-12 col-lg-10 offset-lg-1 col-xl-8 offset-xl-2 mt-4 mt-xl-5" >



                <h2 class="font-30 semi-font my-3 fables-main-text-color fables-second-hover-color text-center">Pr�ctica: EL HOMBRE EN MOVIMIENTO</h2>
                <br>
                <div class="col-12 col-lg-8">   

                    <h2 class="font-20 semi-font my-3 fables-second-text-color fables-second-hover-color">Objetivos:</h2>


                    <ul class="fables-main-text-color  font-14 my-3">


                        <li type="square">Interpretar, predecir y dibujar gr�ficos (posici�n, velocidad y aceleraci�n) para situaciones comunes.</li> 
                        <li type="square">Describa su razonamiento utilizado para dar sentido a los gr�ficos.</li> 


                    </ul>
                    <br>

                    <h2 class="font-20 semi-font my-3 fables-second-text-color fables-second-hover-color">Materiales</h2>


                    <ul class="fables-main-text-color  font-14 my-3">

                        <li type="square">GU�A DE PR�CTICA - CINEM�TICA II: Hombre en movimiento</li>
                        <li type="square">PhET Interactive Simulation, Simulation physical, Man in Motion.</li>
                        <li type="square">Microsoft Windows XP/vista/7/8.1/10 � OS X 10.9.5 o posteriores</li> 
                        <li type="square"><a href="https://get.adobe.com/es/flashplayer/">Macromedia Flash 9 o posteriores</a></li> 
                        <li type="square"><a href="https://www.java.com/es/download/">�ltima versi�n de JAVA</a></li> 


                    </ul>
                    <br>
                    <h2 class="font-20 semi-font my-3 fables-second-text-color fables-second-hover-color">Procedimiento</h2>
                    <ol class="fables-main-text-color  font-14 my-3">



                        <li>En la barra azul, elija la posici�n del hombre (entre los 10m a 10m)</li>
                        <img src="g3p1.jpg">
                        <br>
                        <li>En la barra roja, elija la velocidad del hombre. Active la casilla para ver la direcci�n del vector de velocidad</li>
                        <img src="g3p2.jpg">
                        <br>
                        <li>En la barra verde, elija la aceleraci�n. Active la casilla para ver la direcci�n del vector de aceleraci�n.</li>
                        <img src="g3p3.jpg">
                        <br>
                        <li>Haga click en el bot�n "play" y mire como el hombre se mueve a la posici�n deseada mientras transcurre los segundos</li>







                    </ol>

                    <h2 class="font-20 semi-font my-3 fables-second-text-color fables-second-hover-color">Conclusiones</h2>
                    <label class="fables-main-text-color  font-14 my-3" >
                        <li>En conclusi�n, se puede decir que entendimos mejor qu� en la f�sica la rapidez que corresponde al cociente entre la distancia recorrida y el intervalo de tiempo empleado.</li>
                        <li>La velocidad, que es el cociente entre el desplazamiento y el tiempo empleado, y la aceleraci�n que mide la variaci�n de la velocidad de un m�vil en un intervalo de tiempo.</li>

                    </label>
                    <br>
                    <h2 class="font-20 semi-font my-3 fables-second-text-color fables-second-hover-color">Fundamentos</h2>
                    <p class="fables-main-text-color  font-14 my-3" >
                        La velocidad establece la comparaci�n entre el desplazamiento seguido por una part�cula con el intervalo de tiempo empleado para dicho desplazamiento. Tambi�n puede verse como la raz�n de cambio de los diferentes lugares que ocupa una part�cula durante su recorrido hacia un lugar.

                    </p>
                    <p class="fables-main-text-color  font-14 my-3">
                        Una aceleraci�n es el cambio en velocidad por unidad de tiempo. (Una cantidad vectorial) 
                    </p>

                    <br>
                    <h2 class="font-20 semi-font my-3 fables-second-text-color fables-second-hover-color">REFERENCIAS BIBLIOGR�FICAS</h2>
                    <p class="fables-main-text-color  font-14 my-3" >
                        D�az Solorzano S. y Gonz�lez D�az L. (2010) Reflexiones sobre los conceptos velocidad y rapidez de una part�cula en f�sica.
                    </p>
                    <br>
                    <h2 class="font-20 semi-font my-3 fables-second-text-color fables-second-hover-color">Simulador</h2>

                    <div style="position: relative; width: 300px; height: 197px;">
                        <a href="../../../archivos-aulavirtual/temas/fisica/El hombre en movimiento.jar" style="text-decoration: none;">
                            <img src="El hombre en movimiento.JPG "  style="border: none;" width="300px" height="180px"/>


                        </a>

                    </div>

                </div>
                <h2 class="font-30 semi-font my-3 fables-main-text-color fables-second-hover-color text-center">Pr�ctica: MOVIMIENTO DE UN PROYECTIL</h2>
                <br>
                <div class="col-12 col-lg-8">   



                    <h2 class="font-20 semi-font my-3 fables-second-text-color fables-second-hover-color">Objetivos:</h2>


                    <ul class="fables-main-text-color  font-14 my-3">


                        <li type="square">Predecir c�mo variando las condiciones iniciales afectar�n la trayectoria de un proyectil, y proporcionar�n una explicaci�n para la predicci�n.</li> 
                        <li type="square">Estimar d�nde un objeto aterrizar�, dado sus condiciones iniciales.</li> 
                        <li type="square">Discutir el movimiento de un proyectil usando un vocabulario simple (tales como: �ngulo de lanzamiento, velocidad inicial, altura inicial, distancia, tiempo).</li> 


                    </ul>
                    <br>

                    <h2 class="font-20 semi-font my-3 fables-second-text-color fables-second-hover-color">Materiales</h2>


                    <ul class="fables-main-text-color  font-14 my-3">
                        <li type="square">Gu�a de pr�ctica - Cinem�tica II: Movimiento de un proyectil</li>
                        <li type="square">PhET Interactive Simulation, Simulation physical, Projectile Movement. </li>
                        <li type="square">Microsoft Windows XP/vista/7/8.1/10 � OS X 10.9.5 o posteriores</li> 
                        <li type="square"><a href="https://get.adobe.com/es/flashplayer/">Macromedia Flash 9 o posteriores</a></li> 
                        <li type="square"><a href="https://www.java.com/es/download/">�ltima versi�n de JAVA</a></li> 


                    </ul>
                    <br>
                     <h2 class="font-20 semi-font my-3 fables-second-text-color fables-second-hover-color">Procedimiento</h2>
                    <ol class="fables-main-text-color  font-14 my-3">



                        <li>Elegir la altura del ca��n y el �ngulo en el que estar� inclinado.</li>
                        
                        <li>Elegir el tipo de proyectil a lanzar (bala de ca��n, pelota de golf, calabaza, etc.)</li>
                        
                       
                        <li>Elegir la masa y el di�metro del proyectil</li>
                       
                        <li>Dispara</li>
                         <img src="g3p4.jpg">
                        <br>
                        <li>Mide la distancia.</li>
                         <img src="g3p5.jpg">
                        <br>
                        <li>Eval�a el tiempo y distancia en cada punto de la trayectoria</li>
                         <img src="g3p6.jpg">
                        <br>
                        <li>Vuelve a comenzar. </li>
                         <img src="g3p7.jpg">
                        


                    </ol>

                    <h2 class="font-20 semi-font my-3 fables-second-text-color fables-second-hover-color">Conclusiones</h2>
                    <label class="fables-main-text-color  font-14 my-3" >
                        <li>Concluimos que, el proyectil pierde algo de velocidad por efectos de rozamiento con el aire, pero la segunda raz�n es err�nea. Hay un principio de la naturaleza que a veces se denomina principio de inercia y que establece que los cuerpos tienden a continuar en la misma direcci�n y con la misma velocidad que llevaban mientras no haya ninguna fuerza que se lo impida. En otras palabras, no hace falta que nada mueva al proyectil.</li>
                        <li>Podemos decir que el   movimiento vertical se convierte en una simple ca�da libre de un objeto como ya hemos estudiado.</li>

                    </label>
                    <br>
                    <h2 class="font-20 semi-font my-3 fables-second-text-color fables-second-hover-color">Fundamentos</h2>
                    <p class="fables-main-text-color  font-14 my-3" >
                      Un proyectil es un objeto sobre el cual la �nica fuerza que act�a sobre �l es la gravedad. Hay una variedad de ejemplos de proyectiles: un objeto que se lanza (hacia abajo) desde un precipicio es un proyectil; un objeto que se lanza verticalmente hacia arriba es tambi�n un proyectil; y un objeto que es lanzado hacia arriba en �ngulo tambi�n es un proyectil. Todos estos ejemplos se dan con la condici�n de que la resistencia del aire se desprecia. 
                    </p>
                 

                    <br>
                    <h2 class="font-20 semi-font my-3 fables-second-text-color fables-second-hover-color">REFERENCIAS BIBLIOGR�FICAS</h2>
                    <p class="fables-main-text-color  font-14 my-3" >
                    Gonz�lez S. y D�az M. (2017). Cinem�tica en dos dimensiones ? Movimiento de proyectiles. https://www.fing.edu.uy/if/cursos/fis1/pmme/informe/sv2.pdf   
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

