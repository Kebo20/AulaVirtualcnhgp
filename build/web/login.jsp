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
        <link href="assets/vendor/animate.css-master/animate.min.css" rel="stylesheet">
        <!-- Load Screen -->
        <link href="assets/vendor/loadscreen/css/spinkit.css" rel="stylesheet">
        <!-- GOOGLE FONT -->
        <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i" rel="stylesheet">
        <!-- Font Awesome 5 -->
        <link href="assets/vendor/fontawesome/css/fontawesome-all.min.css" rel="stylesheet">
        <!-- Fables Icons -->
        <link href="assets/custom/css/fables-icons.css" rel="stylesheet"> 
        <!-- Bootstrap CSS -->
        <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet"> 
        <link href="assets/vendor/bootstrap/css/bootstrap-4-navbar.css" rel="stylesheet">
        <!-- FANCY BOX -->
        <link href="assets/vendor/fancybox-master/jquery.fancybox.min.css" rel="stylesheet">
        <!-- OWL CAROUSEL  -->
        <link href="assets/vendor/owlcarousel/owl.carousel.min.css" rel="stylesheet">
        <link href="assets/vendor/owlcarousel/owl.theme.default.min.css" rel="stylesheet">
        <!-- Timeline -->
        <link rel="stylesheet" href="assets/vendor/timeline/timeline.css"> 
        <!-- FABLES CUSTOM CSS FILE -->
        <link href="assets/custom/css/custom.css" rel="stylesheet">
        <!-- FABLES CUSTOM CSS RESPONSIVE FILE -->
        <link href="assets/custom/css/custom-responsive.css" rel="stylesheet"> 

        <!--toastr-->
        <link rel="stylesheet" href="css/toastr.css">

    </head>

    <body>
        <%if (session.getAttribute("user") != null) {
         response.sendRedirect("inicio.jsp");
     }%>

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
                            <img src="imagenes/logo.png" width="70px" heigth="70px" alt="Fables Template"
                                 class="fables-logo">
                        </a>
                        <b style="color:aliceblue" class="font-17">I.E.P. "NUESTROS HÉROES DE LA GUERRA DEL PACÍFICO" </b>


                    </div>
                    <div class="col-12 col-md-2 col-lg-3 pr-md-0 ">

                        <div class="fables-header-icons">
                            <div class="dropdown"> 
                                <a href="inicio" class=" font-16 fables-third-text-color dropdown-toggle right px-3 px-md-2 px-lg-4 fables-second-hover-color top-header-link max-line-height position-relative" >
                                    Aula Virtual

                                </a>



                            </div>


                        </div>
                    </div>

                </div>
            </div>

        </div>

        <!-- /End Fables Navigation -->



        <!-- Start Footer 2 Background Image  -->
        <div class="fables-footer-image fables-after-overlay white-color py-4 py-lg-5 bg-rules"
             style="background-image: url(imagenes/profesor-login.jpg);">
            <br>
            <br>
            <br>

            <div class="container">
                <div class="container">
                    <div class="row my-4 my-lg-5">
                        <div class="col-12 col-md-8 offset-md-2 col-lg-6 offset-lg-3 text-center">
                            <p class="font-20 semi-font  mt-4 mb-4 mb-lg-5 fables-ligth-text-color">Iniciar sesión</p>
                            <form id="formLogin" action="login" method="post">
                                <div class="form-group"> 
                                    <div class="input-icon">
                                        <span class="fables-iconemail fables-input-icon mt-2 font-13"></span>
                                        <input type="text" id="usuario" name="usuario" class="form-control fables-subscribe-input fables-btn-rouned py-3 pl-5" required placeholder="Usuario"> 
                                    </div>

                                </div>
                                <div class="form-group"> 
                                    <div class="input-icon">
                                        <span class="fables-iconpassword fables-input-icon font-19 mt-1"></span>
                                        <input type="password" name="password"  id="password" class="form-control fables-subscribe-input fables-btn-rouned py-3 pl-5" required placeholder="Contraseña">
                                    </div>

                                </div> 
                                <button type="submit" class="btn btn-block fables-btn-rouned white-color fables-main-hover-background-color fables-second-background-color font-16 semi-font py-3">Entrar</button>
                            </form>
                        </div>
                    </div>


                </div>

            </div>
        </div>
        <div class="fables-footer-image fables-after-overlay white-color py-4 py-lg-5 bg-rules"
             style="background-image: url(imagenes/profesor-login.jpg);">
            <div class="copyright  fables-ligth-text-color mt-0 border-0 ">

                <p class="mb-0">2019</p>

            </div>


        </div>


        <!-- /End Footer 2 Background Image -->

        <script src="https://code.jquery.com/jquery-3.3.1.js"></script>
        <script src="assets/vendor/jquery/jquery-3.3.1.min.js"></script>
        <script src="assets/vendor/loadscreen/js/ju-loading-screen.js"></script>
        <script src="assets/vendor/jquery-circle-progress/circle-progress.min.js"></script>
        <script src="assets/vendor/popper/popper.min.js"></script>
        <script src="assets/vendor/WOW-master/dist/wow.min.js"></script>
        <script src="assets/vendor/bootstrap/js/bootstrap.min.js"></script>
        <script src="assets/vendor/bootstrap/js/bootstrap-4-navbar.js"></script>
        <script src="assets/vendor/owlcarousel/owl.carousel.min.js"></script> 
        <script src="assets/vendor/timeline/jquery.timelify.js"></script>
        <script src="assets/custom/js/custom.js"></script>  

        <script src="js/toastr.js"></script>
        <script src="js/login.js"></script>  




    </body>
</html>