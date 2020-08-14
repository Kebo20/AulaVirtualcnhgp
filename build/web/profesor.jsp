<%@page import="dao.CursoDAO"%>
<%@page import="model.Curso"%>
<!DOCTYPE html>
<%@page session="true" %>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="Fables">
        <meta name="author" content="Enterprise Development">
        <link rel="shortcut icon" href="imagenes/logo.ico">

        <title>Aula Virtual</title>

        <!-- animate.css-->
        <link href="assets/vendor/animate.css-master/animate.min.css" rel="stylesheet">
        <!-- Load Screen -->
        <link href="assets/vendor/loadscreen/css/spinkit.css" rel="stylesheet">
        <!-- GOOGLE FONT -->
        <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i"
              rel="stylesheet">
        <!-- Font Awesome 5 -->
        <link href="assets/vendor/fontawesome/css/fontawesome-all.min.css" rel="stylesheet">
        <!-- Fables Icons -->
        <link href="assets/custom/css/fables-icons.css" rel="stylesheet">
        <!-- Bootstrap CSS -->
        <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <link href="assets/vendor/bootstrap/css/bootstrap-4-navbar.css" rel="stylesheet">
        <!-- portfolio filter gallery -->
        <link href="assets/vendor/portfolio-filter-gallery/portfolio-filter-gallery.css" rel="stylesheet">
        <!-- FANCY BOX -->
        <link href="assets/vendor/fancybox-master/jquery.fancybox.min.css" rel="stylesheet">
        <!-- OWL CAROUSEL  -->
        <link href="assets/vendor/owlcarousel/owl.carousel.min.css" rel="stylesheet">
        <link href="assets/vendor/owlcarousel/owl.theme.default.min.css" rel="stylesheet">
        <!-- FABLES CUSTOM CSS FILE -->
        <link href="assets/custom/css/custom.css" rel="stylesheet">
        <!-- FABLES CUSTOM CSS RESPONSIVE FILE -->
        <link href="assets/custom/css/custom-responsive.css" rel="stylesheet">
        <!-- DataTable css-->
        <link href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css" rel="stylesheet">
        <link href="https://cdn.datatables.net/responsive/2.2.3/css/responsive.dataTables.min.css" rel="stylesheet">
        <link href="https://cdn.datatables.net/buttons/1.5.6/css/buttons.dataTables.min.css" rel="stylesheet">
        
        <!--toastr-->
        <link rel="stylesheet" href="css/toastr.css">








    </head>

    <body>

        <%
            if (session.getAttribute("user") == null ) {
                response.sendRedirect("login.jsp");
            }else if(session.getAttribute("tipo").equals("0")){
                response.sendRedirect("inicio.jsp");
            }
            response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // HTTP 1.1.
            response.setHeader("Pragma", "no-cache"); // HTTP 1.0.

        %>

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
                            <img src="imagenes/logo.png" width="50px" heigth="60px" alt="Fables Template"
                                 class="fables-logo">
                        </a>
                        <b style="color:aliceblue" class="font-17">I.E."NUESTROS HÉROES DE LA GUERRA DEL PACÍFICO" </b>

                    </div>
                    <div class="col-12 col-md-2 col-lg-3 pr-md-0 ">

                        <div class="fables-header-icons">
                            <div class="dropdown"> 

                                <a href="logout" class=" font-13 fables-third-text-color dropdown-toggle right px-3 px-md-2 px-lg-4 fables-second-hover-color top-header-link max-line-height position-relative" >
                                    Salir


                                </a>


                                <a href="inicio" class=" font-13 fables-third-text-color dropdown-toggle right px-3 px-md-2 px-lg-4 fables-second-hover-color top-header-link max-line-height position-relative" >


                                    Aula Virtual
                                </a>




                            </div>


                        </div>
                    </div>

                </div>
            </div>
        </div>

        <!-- /End Fables Navigation -->

        <!-- Start Header -->
        <div class="fables-footer-image fables-after-overlay white-color py-4 py-lg-5 bg-rules" style="background-image: url(imagenes/profesor-login.jpg);">
            <div class="container">
                <h2 class="fables-page-title fables-second-border-color"><%=session.getAttribute("user")%></h2>
            </div>
        </div>
        <!-- /End Header -->

        <!-- Start Breadcrumbs -->
        <div class="fables-light-background-color">
            <div class="container">
                <nav aria-label="breadcrumb">
                    <ol class="fables-breadcrumb breadcrumb px-0 py-3">
                        <li class="breadcrumb-item active" aria-current="page"></li>

                    </ol>
                </nav>
            </div>
        </div>
        <!-- /End Breadcrumbs -->

        <!-- Start page content -->

        <div class="fables-blog-slider py-4 py-lg-5 fables-light-background-color">
            <div class="container">
                <h2 class="fables-main-text-color text-center mt-lg-4 mb-4 mb-lg-5 font-26 bold-font">Contenido</h2>
                <a  class="btn fables-light-text-color fables-btn-rounded fables-fifth-background-color  font-16  " href="#ModalR"  data-toggle="modal">Añadir <i class="fa fa-plus-circle"></i></a>
                

                <br>
                <br>
                <table id="example" class="display responsive nowrap text-center" width="100%" >
                    <thead>
                        <tr>
                            <th>Curso</th>
                            <th>Nombre</th>
                            <th>Descripción</th>
                            <th>Tamaño</th>
                            <th>Archivo</th>
                          
                            <th>Eliminar</th>

                        </tr>
                    </thead>
                    <tbody>

                    </tbody>

                </table>


            </div>
        </div>

        <!-- /End page content -->

        <!-- Start Footer 2 Background Image  -->

        <div class="copyright fables-main-background-color mt-0 border-0 white-color">

            <p class="mb-0">AULA VIRTUAL</p>

        </div>


        <!-- /End Footer 2 Background Image -->

        <!--Formulario subir archivo (modal)-->
        <div id="ModalR" class="modal fade">
            <div class="modal-dialog ">
                <div class="modal-content fables-main-background-color ">

                    <form   id="formArchivo"  class="form-horizontal" enctype="multipart/form-data"> 
                        <div class="modal-header">
                            <h4 class="fables-fifth-text-color " align="center">Añadir archivo</h4>
                        </div>
                        <div class="modal-body">
                            <div class="panel-body">

                                <div class="form-group">
                                    <div class="input-group mb-md">

                                        <select  name="curso" class="btn btn-block fables-fifth-background-color" data-live-search="true" required="">
                                            <option value="">Seleccione un curso</option>
                                            <%for (Curso curso : CursoDAO.listarCurso(Integer.parseInt(session.getAttribute("id").toString()))) {%>
                                            <option value="<%=curso.getId_curso()%>"><%=curso.getNom_curso()%></option>

                                            <%}%>


                                        </select>
                                    </div>
                                </div>


                                <div class="form-group">
                                    <div class="input-group mb-md">

                                        <input type="text"  name="descripcion" placeholder="Descripción del archivo"  required class="btn btn-block fables-fifth-background-color"   />
                                    </div>
                                </div>

                                <div class="form-group">
                                    <div class="input-group mb-md">

                                        <input type="file"  name="archivo"   class="btn btn-block fables-fifth-background-color" required   />
                                    </div>
                                </div>
                                <div class="form-group ">
                                    <div   class="input-group mb-md" align='center'>
                                         <span  class='btn btn-block' id="cargandoR"></span>
                                    </div>
                                </div>
                                           






                            </div>
                        </div>
                        <div class="modal-footer">


                            <button  type="submit" class="btn fables-light-text-color fables-btn-rounded fables-fifth-background-color  font-16 " >Guardar</button>






                        </div>

                    </form>

                </div>


            </div>
        </div>

        <!--modal eliminar-->        
        <div id="ModalE" class="modal fade ">
            <div class="modal-dialog">
                <div class="modal-content fables-main-background-color fables-fifth-text-color">
                    <div class="modal-header">
                        <h4 class="modal-title" align="center" style="color:  #ffffff ">¿Está seguro de eliminar este archivo? </h4>
                    </div>
                    <div class="modal-body  ">
                        <p align="center">Recuerde que una vez eliminado no podrá recuperarlo</p>

                    </div>
                    <form id="formArchivoEliminar" >  
                        <div class="modal-footer">

                            <button type="button" class="btn fables-rounded-btn fables-second-hover-background-color" data-dismiss="modal">Cerrar</button>

                            <button  type="submit"   class="btn fables-rounded-btn fables-second-hover-background-color" >Eliminar</button>
                            <input type="hidden" name="archivo" id="btneliminar">

                        </div>
                    </form>     
                </div>
            </div>
        </div> 



        <script src="https://code.jquery.com/jquery-3.3.1.js"></script>
        <script src="assets/vendor/jquery/jquery-3.3.1.min.js"></script>
        <script src="assets/vendor/loadscreen/js/ju-loading-screen.js"></script>
        <script src="assets/vendor/jquery-circle-progress/circle-progress.min.js"></script>
        <script src="assets/vendor/popper/popper.min.js"></script>
        <script src="assets/vendor/timeline/jquery.timelify.js"></script>
        <script src="assets/vendor/fancybox-master/jquery.fancybox.min.js"></script>
        <script src="assets/vendor/bootstrap/js/bootstrap.min.js"></script>
        <script src="assets/vendor/bootstrap/js/bootstrap-4-navbar.js"></script>
        <script src="assets/vendor/WOW-master/dist/wow.min.js"></script>
        <script src="assets/vendor/owlcarousel/owl.carousel.min.js"></script>
        <script src="assets/custom/js/custom.js"></script>



        
        <script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
        <script src="https://cdn.datatables.net/buttons/1.5.6/js/dataTables.buttons.min.js"></script>
        <script src="https://cdn.datatables.net/buttons/1.5.6/js/buttons.flash.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script>
        <script src=" https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/pdfmake.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/vfs_fonts.js"></script>
        <script src="https://cdn.datatables.net/buttons/1.5.6/js/buttons.html5.min.js"></script>
        <script src="https://cdn.datatables.net/buttons/1.5.6/js/buttons.print.min.js"></script>
        <script src="https://cdn.datatables.net/responsive/2.2.3/js/dataTables.responsive.min.js"></script>
        <script src="js/toastr.js"></script>

        <script src="js/archivo.js"></script>
        













    </body>

</html>
