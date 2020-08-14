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
                <h2 class="fables-page-title fables-second-border-color">GU�A DE PR�CTICA - ELECTROMAGNETISMO: Laboratorio Electromagn�tico de Faraday</h2>
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
                        <li class="breadcrumb-item active" aria-current="page">ELECTROMAGNETISMO: Laboratorio Electromagn�tico de Faraday</li>
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
                <a href="../../../archivos-aulavirtual/temas/fisica/ELECTROMAGNETISMO.pdf" ><img src="../../imagenes/pdf.jpg"  width="250px" height="240px"></a>
            </div>

            <!--Pr�ctica-->
            <div class="col-12 col-lg-10 offset-lg-1 col-xl-8 offset-xl-2 mt-4 mt-xl-5" >

                <h2 class="font-30 semi-font my-3 fables-main-text-color fables-second-hover-color text-center">Pr�ctica </h2>


                <div class="col-12 col-lg-8">   



                    <h2 class="font-20 semi-font my-3 fables-second-text-color fables-second-hover-color">Objetivos</h2>


                    <ul class="fables-main-text-color  font-14 my-3">


                        <li type="square">Predecir la direcci�n del campo magn�tico para diferentes lugares alrededor de un im�n y un electroim�n.</li> 
                        <li type="square">Compare y contraste las barras de imanes y electroimanes.</li> 
                        <li type="square">Identificar las caracter�sticas de los electroimanes que son variables y qu� efectos tiene cada variable sobre la fuerza del campo magn�tico y direcci�n.</li> 
                        <li type="square">Relacionar la fuerza del campo magn�tico a la distancia cuantitativa y cualitativamente.</li> 
                        <li type="square">Identificar los equipos y las condiciones que producen la inducci�n.</li> 
                        <li type="square">Comparar y contrastar c�mo una bombilla y un volt�metro pueden ser utilizados para mostrar las caracter�sticas de la corriente inducida.</li> 
                        <li type="square">Predecir c�mo la corriente cambiar� cuando las condiciones son variadas.</li> 


                    </ul>
                    <br>

                    <h2 class="font-20 semi-font my-3 fables-second-text-color fables-second-hover-color">Materiales</h2>


                    <ul class="fables-main-text-color  font-14 my-3">


                        <li type="square">GU�A DE PR�CTICA - ELECTROMAGNETISMO: Laboratorio Electromagn�tico de Faraday</li>
                        <li type="square">PhET Interactive Simulation, Simulation physical, Faraday Electromagnetic Laboratory. </li>
                        <li type="square">Microsoft Windows XP/vista/7/8.1/10 � OS X 10.9.5 o posteriores</li> 
                        <li type="square"><a href="https://get.adobe.com/es/flashplayer/">Macromedia Flash 9 o posteriores</a></li> 
                        <li type="square"><a href="https://www.java.com/es/download/">�ltima versi�n de JAVA</a></li> 



                    </ul>
                    <br>
                     <h2 class="font-20 semi-font my-3 fables-second-text-color fables-second-hover-color">Procedimiento</h2>
                    <ol class="fables-main-text-color  font-14 my-3">

                        <dl>

                            <dt><li>Seleccionar,  "Barra magn�tica", y seguir los siguientes pasos:</li></dt>
                        
                            <dd>*Arrastrar, el im�n alrededor de la barra magn�tica, o viceversa, y observar lo que pasa con el campo magn�tico.</dd>
                            <dd>*Mostrar las opciones que se encuentran a la derecha de la simulaci�n (se visualizar� las medidas del campo magn�tico).</dd>
                         
                        </dl>
                        <dl>

                            <dt><li>Seleccionar, "Bobinado", y arrastrar  la barra magn�tica alrededor del bobinado o por dentro de ella y observar el cambio de voltaje producido.</li></dt>
                       
                         
                        </dl>
                        <dl>

                            <dt><li>Seleccionar, "Electroim�n", y seguir los siguientes pasos:</li></dt>
                        
                            <dd>*Arrastrar, el im�n alrededor de la fuente de corriente (DC), o viceversa, y observar lo que pasa con el campo magn�tico.</dd>
                            <dd>*Mostrar las opciones que se encuentran a la derecha de la simulaci�n (se visualizar� las medidas del campo magn�tico). </dd>
                         
                        </dl>
                        <dl>

                            <dt><li>Seleccionar, "Transformador", y arrastrar, la fuente de corriente (DC), sobre el bobinado en�rgicamente, cambiando el rango de voltaje de la pila. </li></dt>
                        
                           
                         
                        </dl>
                        <dl>

                            <dt><li>Seleccionar, "Generador", y abrir el grifo, n�tese la intensidad de voltaje producido, as� como tambi�n la direcci�n de la barra magn�tica.</li></dt>
                        
                        </dl>
                        
                        





                    </ol>

                    <h2 class="font-20 semi-font my-3 fables-second-text-color fables-second-hover-color">Conclusiones</h2>
                    <label class="fables-main-text-color  font-14 my-3" >
                        <li>Para comprender la direcci�n del campo en el im�n: la corriente el�ctrica es la carga en movimiento. </li>
                        <li>Los campos magn�ticos son creados por corrientes el�ctricas.</li>
                        <li>El efecto neto de todas las corrientes microsc�picas de electrones es hacer una corriente macrosc�pica que es exactamente como la corriente en un solenoide. Por lo tanto, un im�n de barra como un solenoide de corriente en forma de barra.</li>

                    </label>
                    <br>
                    <h2 class="font-20 semi-font my-3 fables-second-text-color fables-second-hover-color">Fundamentos</h2>
                    <ol class="fables-main-text-color  font-14 my-3" >
                        <dl>
                            <dt><li>Faraday, observ� la aparici�n de corrientes transitorias en circuitos en las tres situaciones siguientes: </li></dt>
                            <dd>Cuando se establec�a o se suspend�a una corriente estacionaria en otro circuito pr�ximo; </dd>
                            <dd>Si un circuito cercano por el que circulaba una corriente estacionaria se mov�a respecto del primero</dd>
                            <dd>Si se introduc�a o retiraba del circuito un im�n permanente.</dd>
                        </dl>
                    </ol>
                    <p class="fables-main-text-color  font-14 my-3" >
                        Faraday, comprendi� las caracter�sticas comunes de estos tres experimentos y atribuy� el origen de las corrientes transitorias a las variaciones del flujo magn�tico que atravesaba el circuito. El cambio com�n en los tres experimentos citados es la variaci�n del n�mero de l�neas de campo magn�tico que atraviesa el circuito donde se producen las corrientes transitorias. En la interpretaci�n de Faraday, la variaci�n del flujo magn�tico1 a trav�s del circuito origina una fuerza electromotriz (f.e.m.) inducida responsable de la aparici�n de la corriente transitoria.
                    </p>

                    <br>
                    <h2 class="font-20 semi-font my-3 fables-second-text-color fables-second-hover-color">REFERENCIAS BIBLIOGR�FICAS</h2>
                    <p class="fables-main-text-color  font-14 my-3" >
                    Barbero, J. Inducci�n electromagn�tica. Recuperado de https://previa.uclm.es/profesorado/ajbarbero/Teoria/Leccion_Induccion_Electromagnetica.pdf 
                    </p>
                    <br>
                    
                    <h2 class="font-20 semi-font my-3 fables-second-text-color fables-second-hover-color">Simulador</h2>

                    <div style="position: relative; width: 300px; height: 197px;">
                        <a href="../../../archivos-aulavirtual/temas/fisica/Laboratorio Electromagnetico de Faraday.jar" style="text-decoration: none;">
                            <img src="Laboratorio Electromagnetico de Faraday.JPG"  style="border: none;" width="300px" height="180px"/>


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

