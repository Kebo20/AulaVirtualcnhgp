
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
                <h2 class="fables-page-title fables-second-border-color">GU�A DE PR�CTICA 03 - EL �TOMO</h2>
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
                        <li class="breadcrumb-item active" aria-current="page">EL �TOMO</li>
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


                    <label class="fables-main-text-color  font-14 my-3" >


                        <li>Utilizar el n�mero de protones, neutrones y electrones para dibujar un modelo del �tomo, identificar el elemento, y determinar la masa y carga. </li> 
                        <li>Predecir c�mo la adici�n o sustracci�n de un prot�n, neutr�n, o electr�n cambiar� el elemento, la carga, y la masa. </li> 
                        <li>Usar el nombre del elemento, la masa y de carga para determinar el n�mero de protones, neutrones y electrones. </li> 
                        <li>Usar el nombre del elemento, la masa y de carga para determinar el n�mero de protones, neutrones y electrones. </li> 

                    </label>
                    <br>

                    <h2 class="font-20 semi-font my-3 fables-second-text-color fables-second-hover-color">Materiales</h2>

                    <ul class="fables-main-text-color  font-14 my-3">

                         <li type="square">GU�A DE PR�CTICA 03 ? EL �TOMO</li> 
                        <li type="square">PhET Interactive Simulation, Simulation chemical, create an atom. </li> 
                        <li type="square">Microsoft Windows XP/vista/7/8.1/10 � OS X 10.9.5 o posteriores</li> 
                        <li type="square"><a href="https://get.adobe.com/es/flashplayer/">Macromedia Flash 9 o posteriores</a></li> 
                        <li type="square"><a href="https://www.java.com/es/download/">�ltima versi�n de JAVA</a></li> 


                    </ul>
                    <br>
                    <h2 class="font-20 semi-font my-3 fables-second-text-color fables-second-hover-color">Procedimiento</h2>
                    <label class="fables-main-text-color  font-14 my-3">

                        1)	Seleccionar la opci�n Crear �tomo y determina la identidad, la carga neta, y la masa de un �tomo o ion, de la siguiente manera: 
                        <br>
                        *Arrastrar protones, neutrones y electrones hacia la �rbita. 
                        *Observar a que elemento de la tabla peri�dica corresponde y que n�mero de masa tiene.
                        <br>
                        2)	Seleccionar la opci�n s�mbolo. Proceder de la misma manera que la anterior e interpretar los s�mbolos at�micos mostrados.
                        <br>
                        3)	Seleccionar la opci�n Juego, luego elegir entre los tres juegos presentados: 
                        <br>
                        *Juego 1 - Identificar el elemento cuando se proporciona un modelo o n�mero de part�culas subat�micas.
                        <br>
                        *Juego 2 - Calcular el n�mero de masa o la carga de un �tomo o ion.
                        <br>
                        *juego 3 - Interpretar s�mbolos at�micos.
                        <br>
                        *juego 4 - Mezcla revisada entre los tres juegos anteriores.





                    </label>

                    <br>
                    <h2 class="font-20 semi-font my-3 fables-second-text-color fables-second-hover-color">Conclusiones</h2>
                    <p class="fables-main-text-color  font-14 my-3" >
                        *	En el modelo de nube, no est� destinado a representar los orbitales y el tama�o de la nube no representa radios at�micos o i�nico real. La nube simplemente se hace m�s grande y m�s oscuro cuando el n�mero de electrones aumenta.
                        <br>
                        *	Los �tomos est�n compuestos por part�culas subat�micas denominadas electrones, protones y neutrones.
                        <br>
                        *	En la naturaleza no existe una part�cula que tenga una carga el�ctrica inferior a la del electr�n, por eso se dice que es la unidad de carga el�ctrica


                    </p>
                    <br>
                    <h2 class="font-20 semi-font my-3 fables-second-text-color fables-second-hover-color">Fundamentos</h2>
                    <p class="fables-main-text-color  font-14 my-3" >

                        Ernest Rutherford, utiliz� part�culas alfa para demostrar la estructura de los �tomos, de lo cual efectu� una serie de experimentos utilizando l�minas muy delgadas de oro y de otros metales, como blanco de part�culas alfa provenientes de una fuente radiactiva. 
                        <br>
                        Logr� observar que la mayor�a de las part�culas atravesaban la l�mina sin desviarse, o bien con una ligera desviaci�n. De vez en cuando, algunas part�culas alfa eran dispersadas de su trayectoria con un gran �ngulo. Y en algunos casos, las part�culas alfa regresaban por la misma trayectoria hacia la fuente radiactiva. 
                        <br>
                        Este descubrimiento fue significativamente importante ya que seg�n el modelo de Thomson, la carga positiva del �tomo era tan difusa que se esperar�a que las part�culas alfa atravesaran las l�minas sin desviarse o con una desviaci�n m�nima. 
                        <br>
                        Rutherford propuso que las cargas positivas de los �tomos estaban concentradas en un denso conglomerado central dentro del �tomo, al que llam� �n�cleo�. Cuando una part�cula alfa pasaba cerca del n�cleo en el experimento, actuaba sobre ella una gran fuerza de repulsi�n, lo que originaba una gran desviaci�n.


                    </p>
                    <br>
                    <h2 class="font-20 semi-font my-3 fables-second-text-color fables-second-hover-color">REFERENCIAS BIBLIOGR�FICAS</h2>
                    <p class="fables-main-text-color  font-14 my-3" >
                        Chang, R. (2002). Qu�mica. Recuperado de https://clea.edu.mx/biblioteca/Quimica%20General%20-%207ma%20Edicion%20-%20Raymond%20Chang.pdf
                    </p>
                    <br>
                    <h2 class="font-20 semi-font my-3 fables-second-text-color fables-second-hover-color">Simulador</h2>


                    <div style="position: relative; width: 300px; height: 197px;">
                        <a href="../../../archivos-aulavirtual/temas/quimica/build-an-atom_es_PE.html" >
                            <img src="g4simulador.JPG"   width="300px" height="180px"/>


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

