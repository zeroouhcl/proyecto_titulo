<%-- 
    Document   : registrarusuario
    Created on : 6 jun. 2022, 12:17:31
    Author     : zeroouh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>

        <title>Tu Stetic</title>

        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=Edge">
        <meta name="description" content="">
        <meta name="keywords" content="">
        <meta name="author" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">


        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/font-awesome.min.css">
        <link rel="stylesheet" href="css/aos.css">
        <link rel="stylesheet" href="Controladoes/Logincontrolador">

        <!-- MAIN CSS -->
        <link rel="stylesheet" href="css/tooplate-gymso-style.css">
        <!--
        Tooplate 2119 Gymso Fitness
        https://www.tooplate.com/view/2119-gymso-fitness
        -->
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
                        <li class="nav-item">
                            <a href="index.jsp" class="nav-link smoothScroll">Inicio</a>
                        </li>
                        <li class="nav-item">
                            <a href="estelista.jsp" class="nav-link smoothScroll">Esteticistas</a>
                        </li>
                        <li class="nav-item">
                            <a href="index.jsp" class="nav-link smoothScroll">Nosotros</a>
                        </li>
                        <li class="nav-item">
                            <a href="index.jsp" class="nav-link smoothScroll">Servicios</a>
                        </li>

                        <li class="nav-item">
                            <a href="index.jsp" class="nav-link smoothScroll">Calendario</a>
                        </li>

                        <li class="nav-item">
                            <a href="index.jsp" class="nav-link smoothScroll">Contacto</a>
                        </li>
                        <li class="nav-item">
                            <a href="login.jsp" class="nav-link smoothScroll">LogIn</a>
                        </li>
                        <li class="nav-item">
                            <a href="registrarusuario.jsp" class="nav-link smoothScroll">Registrarse</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <section>
            <div class="container mt-lg-auto card" align="center">
                <h2>Registrate y unete a TuStetic</h2> <br/>
                <form action="ControladorLogin" method="post">
                    <input type="hidden" name="tipo_Oculto" value="cliente"/>

                    <table width="200" id="enfasis-columna">
                        <div>
                            <label>Nombre</label>
                            <input class="form-control" type="text" name="nomUsuario" placeholder="Ingresa tu Nombre" required>
                        </div>
                        <div>
                            <label>Apellido</label>
                            <input class="form-control" type="text" name="apeUsuario"  placeholder="Ingresa tu Apellido" required>
                        </div>
                        <div>
                            <label>Correo</label>
                            <input class="form-control" type="email" name="correoUsuario"  placeholder="Ingresa tu correo" required>
                        </div>
                        <div>
                            <label>Contraseña</label>
                            <input class="form-control" type="password" name="passUsuario" onfocus="this.selected()" placeholder="Ingresa tu contraseña" required>
                        </div>
                        <input class="btn custom-btn bg-color mt-lg-auto" type="submit" value="Registrar" name="accion">
                    </table>
                </form>
            </div>
        </section>
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
        <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
        <script src="js/sweetAlert.js"></script>

    </body>
</html>