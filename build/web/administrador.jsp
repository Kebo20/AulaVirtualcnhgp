<%@page import="dao.ProfesorDAO"%>
<%@page import="model.Profesor"%>
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
            if (session.getAttribute("user") == null) {
                //request.getRequestDispatcher("login.jsp").forward(request, response);
                response.sendRedirect("login.jsp");
            } else if (session.getAttribute("tipo").equals("1")) {
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



        <!-- Start page content -->
        <div class="fables-blog-slider py-4 py-lg-5 fables-light-background-color">
            <div class="container">
                <h2 class="fables-main-text-color text-center mt-lg-4 mb-4 mb-lg-5 font-26 bold-font">Profesores</h2>
                <a  class="btn fables-light-text-color fables-btn-rounded fables-fifth-background-color  font-16  " href="#ModalRP"  data-toggle="modal">Asignar <i class="fa fa-plus-circle"></i></a>

                <br>
                <br>
                <table id="tableProfesor" class="display responsive nowrap text-center" width="100%" >
                    <thead>
                        <tr>
                            <th>Nombre</th>

                            <th>Editar</th>
                            <th>Eliminar</th>

                        </tr>
                    </thead>
                    <tbody>

                    </tbody>

                </table>


            </div>
        </div




        <div class="fables-blog-slider py-4 py-lg-5 fables-light-background-color">

            <div class="fables-blog-slider py-4 py-lg-5 fables-light-background-color">
                <div class="container">
                    <h2 class="fables-main-text-color text-center mt-lg-4 mb-4 mb-lg-5 font-26 bold-font">Usuarios</h2>
                    <a  class="btn fables-light-text-color fables-btn-rounded fables-fifth-background-color  font-16  " href="#ModalRU"  data-toggle="modal">Asignar <i class="fa fa-plus-circle"></i></a>

                    <br>
                    <br>
                    <table id="tableUsuario" class="display responsive nowrap text-center" width="100%" >
                        <thead>
                            <tr>

                                <th>Usuario</th>
                                <th>Contraseña</th>

                                <th>Profesor</th>


                                <th>Editar</th>
                                <th>Eliminar</th>

                            </tr>
                        </thead>
                        <tbody>

                        </tbody>

                    </table>


                </div>
            </div




            <div class="fables-blog-slider py-4 py-lg-5 fables-light-background-color">
                <div class="container">
                    <h2 class="fables-main-text-color text-center mt-lg-4 mb-4 mb-lg-5 font-26 bold-font">Cursos</h2>

                    <br>
                    <br>
                    <table id="tableCurso" class="display responsive nowrap text-center " width="100%"  >
                        <thead>
                            <tr>

                                <th>Curso</th>
                                <th>Profesor</th>
                                <th>Editar</th>




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

            <!--Formulario registrar Profesor-->
            <div id="ModalRP" class="modal fade">
                <div class="modal-dialog ">
                    <div class="modal-content fables-main-background-color " align="center">

                        <form   id="formRP"  class="form-horizontal" > 
                            <div class="modal-header"  >
                                <h4 class="fables-fifth-text-color text-center ">Registrar profesor</h4>
                            </div>
                            <div class="modal-body">
                                <div class="panel-body">



                                    <div class="form-group">
                                        <div class="input-group mb-md">

                                            <input type="text" id="nombreRP" name="nombre" placeholder="Nombres y apellidos"  require class="btn btn-block fables-fifth-background-color"   />
                                        </div>
                                    </div>









                                </div>
                            </div>
                            <div class="modal-footer">


                                <button  type="submit" class="btn fables-light-text-color fables-btn-rounded fables-fifth-background-color  font-16 " >Registrar</button>






                            </div>

                        </form>

                    </div>


                </div>
            </div>
            <!--Formulario editar Profesor-->
            <div id="ModalEP" class="modal fade">
                <div class="modal-dialog ">
                    <div class="modal-content fables-main-background-color text-center ">

                        <form   id="formEP"  class="form-horizontal" > 
                            <div class="modal-header">
                                <h4 class="fables-fifth-text-color text-center" align="center">Editar profesor</h4>
                            </div>
                            <div class="modal-body">
                                <div class="panel-body">



                                    <div class="form-group">
                                        <div class="input-group mb-md">

                                            <input type="text" id="nombreEP" name="nombre" placeholder="Nombres y apellidos"  required class="btn btn-block fables-fifth-background-color"   />
                                            <input type="hidden" id="id_profesorEP">
                                        </div>
                                    </div>









                                </div>
                            </div>
                            <div class="modal-footer">


                                <button  type="submit" class="btn fables-light-text-color fables-btn-rounded fables-fifth-background-color  font-16 " >Actualizar</button>






                            </div>

                        </form>

                    </div>


                </div>
            </div>
            <!--modal eliminar profesor-->        
            <div id="ModalELP" class="modal fade ">
                <div class="modal-dialog">
                    <div class="modal-content fables-main-background-color fables-fifth-text-color">
                        <div class="modal-header">
                            <h4 class="modal-title text-center" align="center" style="color:  #ffffff ">¿Está seguro de eliminar este profesor? </h4>
                        </div>
                        <div class="modal-body  ">
                            <p align="center">Recuerde que una vez eliminado no podrá recuperarlo</p>

                        </div>
                        <form id="formELP" >  
                            <div class="modal-footer">

                                <button type="button" class="btn fables-rounded-btn fables-second-hover-background-color" data-dismiss="modal">Cerrar</button>

                                <button  type="submit"   class="btn fables-rounded-btn fables-second-hover-background-color" >Eliminar</button>
                                <input type="hidden"  id="id_profesorELP">

                            </div>
                        </form>     
                    </div>
                </div>
            </div>   

            <!--Formulario registrar usuario-->
            <div id="ModalRU" class="modal fade">
                <div class="modal-dialog ">
                    <div class="modal-content fables-main-background-color " align="center">

                        <form   id="formRU"  class="form-horizontal" > 
                            <div class="modal-header"  >
                                <h4 class="fables-fifth-text-color text-center ">Registrar usuario</h4>
                            </div>
                            <div class="modal-body">
                                <div class="panel-body">



                                    <div class="form-group">
                                        <div class="input-group mb-md">

                                            <input type="text" id="loginRU"  placeholder="Usuario"  required class="btn btn-block fables-fifth-background-color"   />
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="input-group mb-md">

                                            <input type="text" id="passRU"  placeholder="Contraseña"  required class="btn btn-block fables-fifth-background-color"   />
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="input-group mb-md">

                                            <select id="id_profesorRU"  class="btn btn-block fables-fifth-background-color" data-live-search="true" required="">
                                                <option value="">Seleccione un Profesor</option>
                                                <%for (Profesor p : ProfesorDAO.listarProfesorSinUsuario()) {%>
                                                <option value="<%=p.getId_profesor()%>"><%=p.getNom_profesor()%></option>

                                                <%}%>


                                            </select>
                                        </div>
                                    </div>



                                </div>
                            </div>
                            <div class="modal-footer">


                                <button  type="submit" class="btn fables-light-text-color fables-btn-rounded fables-fifth-background-color  font-16 " >Registrar</button>






                            </div>

                        </form>

                    </div>


                </div>
            </div>
            <!--Formulario editar usuario-->
            <div id="ModalEU" class="modal fade">
                <div class="modal-dialog ">
                    <div class="modal-content fables-main-background-color ">

                        <form   id="formEU"  class="form-horizontal" > 
                            <div class="modal-header">
                                <h4 class="fables-fifth-text-color " align="center">Editar usuario</h4>
                            </div>
                            <div class="modal-body">
                                <div class="panel-body">




                                    <div class="form-group">
                                        <div class="input-group mb-md">

                                            <input type="text" id="loginEU"  placeholder="Usuario"  require class="btn btn-block fables-fifth-background-color"   />
                                            <input type="hidden" id="id_usuarioEU">
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="input-group mb-md">

                                            <input type="text" id="passEU"  placeholder="Contraseña"  require class="btn btn-block fables-fifth-background-color"   />
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="input-group mb-md">

                                            <select id="id_profesorEU"  class="btn btn-block fables-fifth-background-color" data-live-search="true" >
                                                <option value="">Seleccione un Profesor</option>
                                                <%for (Profesor p : ProfesorDAO.listarProfesor()) {%>
                                                <option value="<%=p.getId_profesor()%>"><%=p.getNom_profesor()%></option>

                                                <%}%>


                                            </select>
                                        </div>
                                    </div>





                                </div>
                            </div>
                            <div class="modal-footer">


                                <button  type="submit" class="btn fables-light-text-color fables-btn-rounded fables-fifth-background-color  font-16 " >Actualizar</button>






                            </div>

                        </form>

                    </div>


                </div>
            </div>
            <!--modal eliminar usuario-->        
            <div id="ModalELU" class="modal fade ">
                <div class="modal-dialog">
                    <div class="modal-content fables-main-background-color fables-fifth-text-color">
                        <div class="modal-header">
                            <h4 class="modal-title text-center" align="center" style="color:  #ffffff ">¿Está seguro de eliminar este usuario? </h4>
                        </div>
                        <div class="modal-body  ">
                            <p align="center">Recuerde que una vez eliminado no podrá recuperarlo</p>

                        </div>
                        <form id="formELU" >  
                            <div class="modal-footer">

                                <button type="button" class="btn fables-rounded-btn fables-second-hover-background-color" data-dismiss="modal">Cerrar</button>

                                <button  type="submit"   class="btn fables-rounded-btn fables-second-hover-background-color" >Eliminar</button>
                                <input type="hidden"  id="id_usuarioELU">

                            </div>
                        </form>     
                    </div>
                </div>
            </div>   


            <!--Formulario editar Profesor-->
            <div id="ModalEC" class="modal fade">
                <div class="modal-dialog ">
                    <div class="modal-content fables-main-background-color ">

                        <form   id="formEC"  class="form-horizontal" > 
                            <div class="modal-header">
                                <h4 class="fables-fifth-text-color " align="center">Editar Curso</h4>
                            </div>
                            <div class="modal-body">
                                <div class="panel-body">


                                    <div class="form-group">
                                        <div class="input-group mb-md">
                                            <input type="hidden" id="id_cursoEC">   
                                            <select id="id_profesorEC" required class="btn btn-block fables-fifth-background-color" data-live-search="true" >
                                                <option value="0">Sin asignar</option>
                                                <%for (Profesor p : ProfesorDAO.listarProfesor()) {%>
                                                <option value="<%=p.getId_profesor()%>"><%=p.getNom_profesor()%></option>

                                                <%}%>


                                            </select>
                                        </div>
                                    </div>








                                </div>
                            </div>
                            <div class="modal-footer">


                                <button  type="submit" class="btn fables-light-text-color fables-btn-rounded fables-fifth-background-color  font-16 " >Actualizar</button>






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

            <script src="js/administrador.js"></script>














    </body>

</html>

