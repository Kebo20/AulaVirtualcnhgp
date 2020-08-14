
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
                <h2 class="fables-page-title fables-second-border-color">GUÍA DE PRÁCTICA 04 - MODELOS ATÓMICOS: Dispersión de Rutherford</h2>
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
                        <li class="breadcrumb-item active" aria-current="page">MODELOS ATÓMICOS: Dispersión de Rutherford</li>
                    </ol>


                </nav>
            </div>
        </div>
        <!-- /End Breadcrumbs -->


        <!-- Start page content -->

        <div class="container">
            <br>
            <!--Teoria descargar-->
         

            <!--Práctica-->
            <div class="col-12 col-lg-10 offset-lg-1 col-xl-8 offset-xl-2 mt-4 mt-xl-5" >
                <h2 class="font-30 semi-font my-3 fables-main-text-color fables-second-hover-color text-center">Práctica </h2>
                <br>
                <div class="col-12 col-lg-8">   


                    <h2 class="font-20 semi-font my-3 fables-second-text-color fables-second-hover-color">Objetivos</h2>


                    <label class="fables-main-text-color  font-14 my-3" >


                        <li>Describir la diferencia cualitativa entre la dispersión de núcleos cargados positivamente y un átomo eléctricamente neutro del pudín de ciruela.</li> 
                        <li>Para el núcleo cargado, describir cualitativamente cómo el ángulo de desviación depende de: La energía de la partícula entrante, el parámetro de impacto y la carga del objetivo.</li> 

                    </label>
                    <br>

                    <h2 class="font-20 semi-font my-3 fables-second-text-color fables-second-hover-color">Materiales</h2>
                    <ul class="fables-main-text-color  font-14 my-3">

                        <li type="square">GUÍA DE PRÁCTICA 04 - MODELOS ATÓMICOS: Dispersión de Rutherford</li> 
                        <li type="square">PhET Interactive Simulation, Simulation chemical, Rutherford dispersion.  </li> 
                        <li type="square">Microsoft Windows XP/vista/7/8.1/10 ó OS X 10.9.5 o posteriores</li> 
                        <li type="square"><a href="https://get.adobe.com/es/flashplayer/">Macromedia Flash 9 o posteriores</a></li> 
                        <li type="square"><a href="https://www.java.com/es/download/">Última versión de JAVA</a></li> 


                    </ul>
                    <br>
                    <h2 class="font-20 semi-font my-3 fables-second-text-color fables-second-hover-color">Procedimiento</h2>
                    <ol class="fables-main-text-color  font-14 my-3">

                        <dl>
                            <dt><li>	Seleccionar la opción "Átomo de Rutherford" y observar el comportamiento de las partículas alfa a medida que viajan a través de una capa delgada de átomos, de la siguiente manera: 
                            </li></dt>
                            <br>
                            <dd>Encender la fuente de partículas alfa.</dd>
                            <dd>Encender "rastros" para ver trayectorias de las partículas alfa.</dd>
                            <dd>Seleccionar ver escala atómica o escala nuclear.</dd>
                            <dd>Controlar la cantidad de electrones y protones e interpretar lo que ocurre.  </dd>
                        </dl>

                        <dl>
                            <dt><li>Seleccionar "Átomo de pudín de ciruela" y explore el comportamiento esperado de las partículas alfa basado en el modelo "Pudín de ciruelo" de un átomo, en el que se sugirió que un átomo estaba compuesto de una sustancia con una carga positiva difusa incrustada con electrones cargados negativamente. 
                            </li></dt>
                            <br>
                            <dd>Encender la fuente de partículas alfa.</dd>
                            <dd>Encender "rastros" para ver trayectorias de las partículas alfa.</dd>
                            <dd>Identificar las partes del modelo de Pudín de ciruela. </dd>


                        </dl>



                        </ol>

                        <br>
                        <h2 class="font-20 semi-font my-3 fables-second-text-color fables-second-hover-color">Conclusiones</h2>
                        <p class="fables-main-text-color  font-14 my-3" >
                            El modelo del budín de pasas de Thomson para el átomo consiste en electrones con carga negativa ("pasas") dentro de un "budín" con carga positiva.
                            <br>
                            El experimento de la lámina de oro de Rutherford mostró que el átomo es en su mayoría es un espacio vacío con un pequeño y denso núcleo con carga positiva.



                        </p>
                        <br>
                        <h2 class="font-20 semi-font my-3 fables-second-text-color fables-second-hover-color">Fundamentos</h2>
                        <p class="fables-main-text-color  font-14 my-3" >
                            Ernest Rutherford, utilizó partículas alfa para demostrar la estructura de los átomos, de lo cual efectuó una serie de experimentos utilizando láminas muy delgadas de oro y de otros metales, como blanco de partículas alfa provenientes de una fuente radiactiva. 
                            <br>
                            Logró observar que la mayoría de las partículas atravesaban la lámina sin desviarse, o bien con una ligera desviación. De vez en cuando, algunas partículas alfa eran dispersadas de su trayectoria con un gran ángulo. Y en algunos casos, las partículas alfa regresaban por la misma trayectoria hacia la fuente radiactiva. 
                            <br>
                            Este descubrimiento fue significativamente importante ya que según el modelo de Thomson, la carga positiva del átomo era tan difusa que se esperaría que las partículas alfa atravesaran las láminas sin desviarse o con una desviación mínima. 
                            <br>
                            Rutherford propuso que las cargas positivas de los átomos estaban concentradas en un denso conglomerado central dentro del átomo, al que llamó ?núcleo?. Cuando una partícula alfa pasaba cerca del núcleo en el experimento, actuaba sobre ella una gran fuerza de repulsión, lo que originaba una gran desviación.


                        </p>
                        <br>
                        <h2 class="font-20 semi-font my-3 fables-second-text-color fables-second-hover-color">REFERENCIAS BIBLIOGRÁFICAS</h2>
                        <p class="fables-main-text-color  font-14 my-3" >
                            Chang, R. (2002). Química. Recuperado de https://clea.edu.mx/biblioteca/Quimica%20General%20-%207ma%20Edicion%20-%20Raymond%20Chang.pdf
                        </p>
                        <br>
                        <h2 class="font-20 semi-font my-3 fables-second-text-color fables-second-hover-color">Simulador</h2>


                        <div style="position: relative; width: 300px; height: 197px;">
                            <a href="../../../archivos-aulavirtual/temas/quimica/rutherford-scattering_es_PE.html" >
                                <img src="g3simulador.JPG"   width="300px" height="180px"/>


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

                        </h2>
                </div>
            </div>
            <!-- /End Header -->

            <!-- Start Breadcrumbs -->
            <div class="fables-light-background-color">
                <div class="container">
                    <nav aria-label="breadcrumb">
                        <ol class="fables-breadcrumb breadcrumb px-0 py-3">
                            <li class="breadcrumb-item"><a href="../../inicio.jsp" class="fables-second-text-color">Inicio</a></li>
                            <li class="breadcrumb-item active" aria-current="page"><a href="../../lab-fisica.jsp" class="fables-second-text-color">Laboratorio Virtual de física</a></li>
                            <li class="breadcrumb-item active" aria-current="page">EL ÁTOMO</li>
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
                    <a href="#_.pdf" ><img src="../../imagenes/pdf.jpg"  width="250px" height="240px"></a>
                </div>

                <!--Práctica-->
                <div class="col-12 col-lg-10 offset-lg-1 col-xl-8 offset-xl-2 mt-4 mt-xl-5" >
                    <h2 class="font-30 semi-font my-3 fables-main-text-color fables-second-hover-color text-center">Práctica </h2>
                    <br>
                    <div class="col-12 col-lg-8">   


                        <h2 class="font-20 semi-font my-3 fables-second-text-color fables-second-hover-color">Objetivos</h2>


                        <label class="fables-main-text-color fables-single-blog font-14 my-3" >


                            <li>Utilizar el número de protones, neutrones y electrones para dibujar un modelo del átomo, identificar el elemento, y determinar la masa y carga. </li> 
                            <li>Predecir cómo la adición o sustracción de un protón, neutrón, o electrón cambiará el elemento, la carga, y la masa. </li> 
                            <li>Usar el nombre del elemento, la masa y de carga para determinar el número de protones, neutrones y electrones. </li> 
                            <li>Usar el nombre del elemento, la masa y de carga para determinar el número de protones, neutrones y electrones. </li> 

                        </label>
                        <br>

                        <h2 class="font-20 semi-font my-3 fables-second-text-color fables-second-hover-color">Materiales</h2>


                        <label class="fables-main-text-color fables-single-blog font-14 my-3">


                            <li>Microsoft Windows XP/vista/7/8.1/10 ó OS X 10.9.5 o posteriores</li> 
                            <li><a href="https://get.adobe.com/es/flashplayer/">Macromedia Flash 9 o posteriores</a></li> 
                            <li><a href="https://www.java.com/es/download/">Última versión de JAVA</a></li> 


                        </label>
                        <br>
                        <h2 class="font-20 semi-font my-3 fables-second-text-color fables-second-hover-color">Procedimiento</h2>
                        <label class="fables-main-text-color  font-14 my-3">

                            1)	Seleccionar la opción Crear Átomo y determina la identidad, la carga neta, y la masa de un átomo o ion, de la siguiente manera: 
                            <br>
                            *Arrastrar protones, neutrones y electrones hacia la órbita. 
                            *Observar a que elemento de la tabla periódica corresponde y que número de masa tiene.
                            <br>
                            2)	Seleccionar la opción símbolo. Proceder de la misma manera que la anterior e interpretar los símbolos atómicos mostrados.
                            <br>
                            3)	Seleccionar la opción Juego, luego elegir entre los tres juegos presentados: 
                            <br>
                            *Juego 1 - Identificar el elemento cuando se proporciona un modelo o número de partículas subatómicas.
                            <br>
                            *Juego 2 - Calcular el número de masa o la carga de un átomo o ion.
                            <br>
                            *juego 3 - Interpretar símbolos atómicos.
                            <br>
                            *juego 4 - Mezcla revisada entre los tres juegos anteriores.





                        </label>

                        <br>
                        <h2 class="font-20 semi-font my-3 fables-second-text-color fables-second-hover-color">Conclusiones</h2>
                        <p class="fables-main-text-color  font-14 my-3" >
                            *	En el modelo de nube, no está destinado a representar los orbitales y el tamaño de la nube no representa radios atómicos o iónico real. La nube simplemente se hace más grande y más oscuro cuando el número de electrones aumenta.
                            <br>
                            *	Los átomos están compuestos por partículas subatómicas denominadas electrones, protones y neutrones.
                            <br>
                            *	En la naturaleza no existe una partícula que tenga una carga eléctrica inferior a la del electrón, por eso se dice que es la unidad de carga eléctrica


                        </p>
                        <br>
                        <h2 class="font-20 semi-font my-3 fables-second-text-color fables-second-hover-color">Fundamentos</h2>
                        <p class="fables-main-text-color  font-14 my-3" >

                            La partícula más pequeña que puede existir de un elemento, conservando la identidad química del elemento recibe el nombre de átomo.
                            <br>
                            Los átomos tienen una estructura interna y están constituidos por partículas de menor tamaño llamadas partículas subatómicas pero solo tres de ellas tres afectan el comportamiento químico:
                            <br>
                            *	El protón (p).
                            *	El neutrón (n).
                            *	El electrón (e-).
                            <br>
                            Los protones y neutrones forman un cuerpo central, compacto, llamado núcleo del átomo (en conjunto se conocen como nucleones).
                            <br<
                                De acuerdo con este modelo del átomo, los electrones se distribuyen en el espacio como si fueran una nube alrededor del núcleo.
                                <br>
                            Los protones y neutrones tiene aproximadamente la misma masa, pero los protones tienen una unidad de carga eléctrica positiva (+), mientras que los neutrones son eléctricamente neutros.
                            <br>
                            Un electrón tiene una masa mucho menor que la de un protón tiene una unidad de carga eléctrica negativa (-).


                        </p>
                        <br>
                        <h2 class="font-20 semi-font my-3 fables-second-text-color fables-second-hover-color">REFERENCIAS BIBLIOGRÁFICAS</h2>
                        <p class="fables-main-text-color  font-14 my-3" >
                            Vera, M. (2010). Química general. Recuperado de http://exa.unne.edu.ar/quimica/quimgeneral/UnidadINocionesBasicas.pdf
                        </p>
                        <br>
                        <h2 class="font-20 semi-font my-3 fables-second-text-color fables-second-hover-color">Simulador</h2>


                        <div style="position: relative; width: 300px; height: 197px;">
                            <a href="hydrogen-atom_es_PE.jar" >
                                <img src="g3simulador.JPG"   width="300px" height="180px"/>


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


