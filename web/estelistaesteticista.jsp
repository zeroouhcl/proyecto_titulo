<%-- 
    Document   : index
    Created on : 29 may. 2022, 2:33:56
    Author     : zeroouh
--%>

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>

        <title>Tu Stetic HTML Template</title>

        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=Edge">
        <meta name="description" content="">
        <meta name="keywords" content="">
        <meta name="author" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
        <link href="css/aos.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="Controladoes/Logincontrolador">
        <!-- MAIN CSS -->
        <link rel="stylesheet" href="css/tooplate-gymso-style.css">
    </head>
    <body data-spy="scroll" data-target="#navbarNav" data-offset="50">
        <!-- MENU BAR -->
        <nav class="navbar navbar-expand-lg fixed-top">
            <div class="container">
                <img src="images/logo//logo9.png" class="img-fluid" alt="Trainer">
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false"
                        aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="collapse navbar-collapse" id="navbarNav">
                    <ul class="navbar-nav ml-lg-auto">
                        <li class="nav-item ">
                            <a href="indexesteticista.jsp" class="nav-link smoothScroll">Inicio</a>
                        </li>
                        <li class="nav-item">
                            <a href="estelistaesteticista.jsp" class="nav-link smoothScroll">Esteticistas</a>
                        </li>
                        <li class="nav-item">
                            <a href="contactoesteticista.jsp" class="nav-link smoothScroll">Contacto</a>
                        </li>
                        <li class="nav-item">
                            <a href="" class="nav-link smoothScroll">Mi Perfil</a>
                        </li>
                        <li class="nav-item">
                            <a href="suscripcionesteticista.jsp" class="nav-link smoothScroll">Suscribete</a>
                        </li>
                        <li class="nav-item ">
                            <a href="#home" class="nav-link smoothScroll"></a>
                        </li>
                        <br class="nav-item ">
                        <a href="#home" ></a>
                        </br>
                        <br class="nav-item ">
                        <a href="#home" ></a>
                        </br>
                        <br class="nav-item ">
                        <a href="#home" ></a>
                        </br>
                        <li class="nav-item dropdown">
                            <a href="#"class="nav-link dropdown-toggle" data-toggle="dropdown">Menu Usuario</a>
                            <div class="dropdown-menu text-center"><br>
                                <a>${email}</a>
                                <div class="dropdown-divider"></div>
                                <a href="Controlador?accion=Salir" class="dropdown-item">Cerrar Sesión</a>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
        <br>
        <br>
        <br>
        <section class="about section">
            <div class="container">
                <div class="row">                 
                    <nav>   
                    </nav>
                    <div class="container mt-4">
                        <div class="row">
                            <div class="col-sm-4">
                                <div class="card">
                                    <div style="text-align: center;" class="card-body">
                                        <img src="" width="200" height="180">
                                    </div>
                                    <div style="text-align: center;" class="card-header">
                                        <h3>Nombre Estesticista</h3>
                                    </div>
                                    <div style="text-align: center;">
                                        <span>Peluqueria - Masajes - Pedicure </span>
                                    </div>
                                    <div class="card-footer text-">
                                        <div>
                                            <a class="btn btn-primary" style="background-color: #55acee;" href="#!" role="button"><i class="fa fa-twitter me-2"></i> Twitter</a>
                                        </div>
                                        <br>
                                        <div>
                                            <a class="btn btn-primary" style="background-color: #3b5998;" href="#!" role="button"><i class="fa fa-facebook me-2"></i> Facebook</a>
                                        </div>
                                        <br>
                                        <div>
                                            <a class="btn btn-primary" style="background-color: #ac2bac;" href="#!" role="button"><i class="fa fa-instagram me-2"></i> Instragram</a>
                                        </div>
                                        <br>
                                        <div style="text-align: center;">
                                            <a href="" class="btn btn-outline-info"> Ver Perfil</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <br>
            <!-- FOOTER -->
            <footer class="site-footer">
                <div class="container">
                    <div class="row">

                        <div class="ml-auto col-lg-4 col-md-5">
                            <p class="copyright-text">Copyright &copy; 2022 Tu Stetic Co.


                        </div>

                        <div class="d-flex justify-content-center mx-auto col-lg-5 col-md-7 col-12">
                            <p class="mr-4">
                                <i class="fa fa-envelope-o mr-1"></i>
                                <a href="#">contacto@tustetic.cl</a>
                            </p>

                            <p><i class="fa fa-phone mr-1"></i> 22 8893 4732</p>
                        </div>
                        <ul class="social-icon ml-lg-3">
                            <li><a href="https://fb.com/tooplate" class="fa fa-facebook"></a></li>
                            <li><a href="#" class="fa fa-twitter"></a></li>                 
                            <li><a href="#" class="fa fa-instagram"></a></li>
                        </ul>
                    </div>
                </div>
            </footer>

            <!-- SCRIPTS -->
            <script src="js/jquery.min.js"></script>
            <script src="js/bootstrap.min.js"></script>
            <script src="js/aos.js"></script>
            <script src="js/smoothscroll.js"></script>
            <script src="js/custom.js"></script>

    </body>
</html>
