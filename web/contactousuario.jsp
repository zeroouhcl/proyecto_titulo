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
                            <a href="indexusuario.jsp" class="nav-link smoothScroll">Inicio</a>
                        </li>
                        <li class="nav-item">
                            <a href="estelistausuario.jsp" class="nav-link smoothScroll">Esteticistas</a>
                        </li>
                        <li class="nav-item">
                            <a href="contactousuario.jsp" class="nav-link smoothScroll">Contacto</a>
                        </li>
                        <li class="nav-item">
                            <a href="registrarperfil.jsp" class="nav-link smoothScroll">Publica Tu Perfil</a>
                        </li>
                        <li class="nav-item">
                            <a href="suscripcionusuario.jsp" class="nav-link smoothScroll">Suscribete</a>
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
        <br>
        <!-- CONTACT -->
        <section class="contact section" id="contact">
            <div class="container">
                <div class="row">

                    <div class="ml-auto col-lg-5 col-md-6 col-12">
                        <h2 class="mb-4 pb-2" data-aos="fade-up" data-aos-delay="200">En caso de alguna pregunta contactenos</h2>

                        <form action="#" method="post" class="contact-form webform" data-aos="fade-up" data-aos-delay="400" role="form">
                            <input type="text" class="form-control" name="cf-name" placeholder="Nombre" >

                            <input type="email" class="form-control" name="cf-email" placeholder="Correo">

                            <textarea class="form-control" rows="5" name="cf-message" placeholder="Mensaje"></textarea>

                            <button type="submit" class="form-control" id="submit-button" name="submit">Mandar mensaje</button>
                        </form>
                    </div>

                    <div class="mx-auto mt-4 mt-lg-0 mt-md-0 col-lg-5 col-md-6 col-12">
                        <h2 class="mb-4" data-aos="fade-up" data-aos-delay="600">Donde puedes <span>Encontrarnos</span></h2>
                        <p data-aos="fade-up" data-aos-delay="800"><i class=""></i> Puedes coordinar una reunion en santiago con nosotros a través de contacto</p>
                        <p data-aos="fade-up" data-aos-delay="800"><i class="fa fa-map-marker mr-1"></i>Santiago , Chile</p>
                        <!-- How to change your own map point
                                1. Go to Google Maps
                                2. Click on your location point
                                3. Click "Share" and choose "Embed map" tab
                                4. Copy only URL and paste it within the src="" field below
                        -->
                        <div class="google-map" data-aos="fade-up" data-aos-delay="900">

                            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d212999.19734741328!2d-70.76991373599695!3d-33.47242276949835!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x9662c5410425af2f%3A0x8475d53c400f0931!2sSantiago%2C%20Regi%C3%B3n%20Metropolitana!5e0!3m2!1ses-419!2scl!4v1653443887732!5m2!1ses-419!2scl" width="1920" height="250" frameborder="0" style="border:0;" allowfullscreen=""></iframe>
                        </div>
                    </div>

                </div>
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
                        <li><a href="https://fb.com/tooplate" class="fa fa-facebook me-2"></a></li>
                        <li><a href="#" class="fa fa-twitter me-2"></a></li>                 
                        <li><a href="#" class="fa fa-instagram me-2"></a></li>
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
