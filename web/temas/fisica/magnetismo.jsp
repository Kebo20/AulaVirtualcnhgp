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
                <h2 class="fables-page-title fables-second-border-color">GU�A DE PR�CTICA - MAGNETISMO: Imanes y Electroimanes</h2>
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
                        <li class="breadcrumb-item active" aria-current="page">MAGNETISMO: Imanes y Electroimanes</li>
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
                <a href="../../../archivos-aulavirtual/temas/fisica/MAGNETISMO.pdf" ><img src="../../imagenes/pdf.jpg"  width="250px" height="240px"></a>
            </div>

            <!--Pr�ctica-->
            <div class="col-12 col-lg-10 offset-lg-1 col-xl-8 offset-xl-2 mt-4 mt-xl-5" >
                <h2 class="font-30 semi-font my-3 fables-main-text-color fables-second-hover-color text-center">Pr�ctica</h2>
                <br>
                <div class="col-12 col-lg-8">   



                    <h2 class="font-20 semi-font my-3 fables-second-text-color fables-second-hover-color">Objetivos</h2>


                    <ul class="fables-main-text-color  font-14 my-3">


                        <li type="square">Predecir la direcci�n del campo magn�tico para diferentes ubicaciones alrededor de un im�n de barra y un electroim�n.</li> 
                        <li type="square">Comparar y contrastar imanes de barra y electroimanes.</li> 
                        <li type="square">Identifique las caracter�sticas de los electroimanes que son variables y qu� efectos tiene cada variable en la fuerza y ??direcci�n del campo magn�tico.</li> 
                        <li type="square">Relacionar la fuerza del campo magn�tico a distancia cuantitativa y cualitativamente</li> 


                    </ul>
                    <br>

                    <h2 class="font-20 semi-font my-3 fables-second-text-color fables-second-hover-color">Materiales</h2>


                    <ul class="fables-main-text-color  font-14 my-3">

                        <li type="square">GU�A DE PR�CTICA - MAGNETISMO: Imanes y Electroimanes</li>
                        <li type="square">PhET Interactive Simulation, Simulation physical, Magnets and Electromagnets. </li>
                        <li type="square">Microsoft Windows XP/vista/7/8.1/10 � OS X 10.9.5 o posteriores</li> 
                        <li type="square"><a href="https://get.adobe.com/es/flashplayer/">Macromedia Flash 9 o posteriores</a></li> 
                        <li type="square"><a href="https://www.java.com/es/download/">�ltima versi�n de JAVA</a></li> 


                    </ul>
                    <br>

                    <h2 class="font-20 semi-font my-3 fables-second-text-color fables-second-hover-color">Procedimiento</h2>
                    <ol class="fables-main-text-color  font-14 my-3">

                        <dl>

                            <dt><li>Seleccionar, "Barra magn�tica", y seguir los siguientes pasos: </li></dt>
                            <dd>Arrastrar, el im�n alrededor de la barra magn�tica, o viceversa, y observar lo que pasa con el campo magn�tico.</dd>
                            <dd>Mostrar las opciones que se encuentran a la derecha de la simulaci�n (se visualizar� las medidas del campo magn�tico)</dd>


                            <dt><li>Seleccionar, "Electroim�n", y seguir los siguientes pasos:</li></dt>
                            <dd>Arrastrar, el im�n alrededor de la fuente de corriente (DC), o viceversa, y observar lo que pasa con el campo magn�tico.</dd>
                            <dd>Mostrar las opciones que se encuentran a la derecha de la simulaci�n (se visualizar� las medidas del campo magn�tico). </dd>
                        </dl>



                    </ol>

                    <h2 class="font-20 semi-font my-3 fables-second-text-color fables-second-hover-color">Conclusiones</h2>
                    <label class="fables-main-text-color  font-14 my-3" >
                        <li>La corriente que crea el campo magn�tico podr�a ser la corriente en un cable o podr�a ser la corriente creada por el movimiento de los electrones en los �tomos.</li>
                        <li>El campo magn�tico de un im�n de barra es exactamente el mismo que el campo magn�tico de un solenoide ya que las corrientes son las mismas.</li>
                        <li>La tierra es un potente im�n. El polo sur magn�tico se encuentra al norte de Canada, aproximadamente a 1300 Km del polo norte geogr�fico. Por tanto, la br�jula no apunta exactamente hacia el norte geogr�fico.</li>

                    </label>
                    <br>
                    <h2 class="font-20 semi-font my-3 fables-second-text-color fables-second-hover-color">Fundamentos</h2>
                    <p class="fables-main-text-color  font-14 my-3" >
                        El campo el�ctrico es producido por cargas el�ctricas en reposo.
                        Sin embargo, el campo magn�tico es generado por corrientes el�ctricas o por imanes permanentes. Es decir las ?fuentes? del campo el�ctrico son las cargas el�ctricas en reposo y las ?fuentes? del campo magn�tico son los polos de un im�n o las cargas el�ctricas en movimiento.


                    </p>
                    <p class="fables-main-text-color  font-14 my-3" >
                        La presencia en una regi�n del espacio de un campo magn�tico se puede determinar por medio de la fuerza que dicho campo ejerce sobre ciertos materiales llamados ferromagn�ticos o por la fuerza que ejerce sobre cargas el�ctricas en movimiento
                    </p>
                    <p class="fables-main-text-color  font-14 my-3" >
                        Si una carga el�ctrica se desplaza en una regi�n donde existe un campo magn�tico se observa que se desv�a en direcci�n transversal al vector velocidad. Es decir, si una carga el�ctrica que tiene una velocidad v G pasa por una zona del espacio donde hay un campo magn�tico experimenta una aceleraci�n a G perpendicular al vector velocidad.
                    </p>

                    <br>
                    <h2 class="font-20 semi-font my-3 fables-second-text-color fables-second-hover-color">REFERENCIAS BIBLIOGR�FICAS</h2>
                    <p class="fables-main-text-color  font-14 my-3" >
                        PROMEI. (2007). F�sica. Recuperado de http://www.frtl.utn.edu.ar/seminario_ingreso/fisica.pdf
                    </p>
                    <br>


                    <h2 class="font-20 semi-font my-3 fables-second-text-color fables-second-hover-color">Simulador</h2>

                    <div style="position: relative; width: 300px; height: 197px;">
                        <a href="../../../archivos-aulavirtual/temas/fisica/imanes y electroimanes.jar" style="text-decoration: none;">
                            <img src="imanes y electroimanes.JPG"  style="border: none;" width="300px" height="180px"/>


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

