<%-- 
    Document   : index
    Created on : 29 may. 2022, 2:33:56
    Author     : zeroouh
--%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
                            <a href="#home" class="nav-link smoothScroll">Inicio</a>
                        </li>
                        <li class="nav-item">
                            <a href="estelista.jsp" class="nav-link smoothScroll">Esteticistas</a>
                        </li>
                        <li class="nav-item">
                            <a href="#about" class="nav-link smoothScroll">Nosotros</a>
                        </li>
                        <li class="nav-item">
                            <a href="#class" class="nav-link smoothScroll">Servicios</a>
                        </li>

                        <li class="nav-item">
                            <a href="#schedule" class="nav-link smoothScroll">Calendario</a>
                        </li>

                        <li class="nav-item">
                            <a href="#contact" class="nav-link smoothScroll">Contacto</a>
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

        <!-- HERO -->
        <section class="hero d-flex flex-column justify-content-center align-items-center" id="home">

            <div class="bg-overlay"></div>

            <div class="container">
                <div class="row">

                    <div class="col-lg-8 col-md-10 mx-auto col-12">
                        <div class="hero-text mt-5 text-center">

                            <h6 data-aos="fade-up" data-aos-delay="300">Encuentra los servicios que necesites en nuestra lista de profesionales</h6>

                            <h1 class="text-white" data-aos="fade-up" data-aos-delay="500">Mejora tu difusión de servicios de Esteticistas en TuStetic </h1>

                            <a href="#feature" class="btn custom-btn mt-3" data-aos="fade-up" data-aos-delay="600">Únetenos</a>

                            <a href="#about" class="btn custom-btn bordered mt-3" data-aos="fade-up" data-aos-delay="700">Averigua mas</a>

                        </div>
                    </div>

                </div>
            </div>
        </section>
        <section class="feature" id="feature">
            <div class="container">
                <div class="row">

                    <div class="d-flex flex-column justify-content-center ml-lg-auto mr-lg-5 col-lg-5 col-md-6 col-12">
                        <h2 class="mb-3 text-white" data-aos="fade-up">¿Nuevo en Tu Stetic?</h2>

                        <h6 class="mb-4 text-white" data-aos="fade-up">Su membresía mensual tiene el valor de $5.000</h6>

                        <p data-aos="fade-up" data-aos-delay="200">Publica tu perfil de manera gratuita, mejora tus redes y amplia tu red de trabajo. Ademas amplia tus herramientas suscribiendote <a rel="nofollow" href="https://www.tooplate.com" target="_parent"></a></p>

                        <a href="#" class="btn custom-btn bg-color mt-3" data-aos="fade-up" data-aos-delay="300" data-toggle="modal" data-target="#membershipForm">Hazte miembro hoy</a>
                    </div>

                    <div class="mr-lg-auto mt-3 col-lg-4 col-md-6 col-12">
                        <div class="about-working-hours">
                            <div>

                                <h2 class="mb-4 text-white" data-aos="fade-up" data-aos-delay="500">Suscripción Detalles </h2>

                                <strong class="d-block" data-aos="fade-up" data-aos-delay="600">Toma de hora integrada a tu perfil</strong>
                                <p data-aos="fade-up" data-aos-delay="800">Horarios de lunes y a domingo 24 horas</p>

                                <strong class="mt-3 d-block" data-aos="fade-up" data-aos-delay="700">Mayor cantidad de fotos disponibles para subir a tu perfil</strong>
                                <p data-aos="fade-up" data-aos-delay="800">4 o mas fotos</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>


        <!-- ABOUT -->
        <section class="about section" id="about">
            <div class="container">
                <div class="row">

                    <div class="mt-lg-5 mb-lg-0 mb-4 col-lg-5 col-md-10 mx-auto col-12">
                        <h2 class="mb-4" data-aos="fade-up" data-aos-delay="300">Hola, Nosotros somos Tu Stetic</h2>

                        <p data-aos="fade-up" data-aos-delay="400">En nuestra plataforma encontraras perfiles de los mejores esteticistas del mercado que ofrecen variados servicios de manera particular.</p>

                        <p data-aos="fade-up" data-aos-delay="500">En donde podrás encontrar sus redes de contactos y en algunos casos podrán tener acceso a una toma de hora.<a rel="nofollow" href="https://www.tooplate.com/view/2119-gymso-fitness" target="_parent"></a><a rel="nofollow" href="https://www.tooplate.com/contact" target="_parent"></a></p>

                    </div>

                    <div class="ml-lg-auto col-lg-3 col-md-6 col-12" data-aos="fade-up" data-aos-delay="700">
                        <div class="team-thumb">
                            <img src="images/team/esteti2.jpg" class="img-fluid" alt="Trainer">

                            <div class="team-info d-flex flex-column">

                                <h3>Mary Yan</h3>
                                <span>Manicure</span>

                                <ul class="social-icon mt-3">
                                    <li><a href="#" class="fa fa-twitter"></a></li>
                                    <li><a href="#" class="fa fa-instagram"></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>

                    <div class="mr-lg-auto mt-5 mt-lg-0 mt-md-0 col-lg-3 col-md-6 col-12" data-aos="fade-up" data-aos-delay="800">
                        <div class="team-thumb">
                            <img src="images/team/esteti1.jpg" class="img-fluid" alt="Trainer">

                            <div class="team-info d-flex flex-column">

                                <h3>Catherina</h3>
                                <span>Tratamiento Facial</span>

                                <ul class="social-icon mt-3">
                                    <li><a href="#" class="fa fa-instagram"></a></li>
                                    <li><a href="#" class="fa fa-facebook"></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <a href="esteticista.jsp" class="btn custom-btn bg-color mt-3">Ver más perfiles de Estesticistas</a>
                </div>
            </div>
        </section>
        <!-- CLASS -->
        <section class="class section" id="class">
            <div class="container">
                <div class="row">

                    <div class="col-lg-12 col-12 text-center mb-5">
                        <h6 data-aos="fade-up">Consigue tu servicio perfecto</h6>

                        <h2 data-aos="fade-up" data-aos-delay="200">Encuentra variados servicios</h2>
                    </div>

                    <div class="col-lg-4 col-md-6 col-12" data-aos="fade-up" data-aos-delay="400">
                        <div class="class-thumb">
                            <img src="images/class/masaje-class.jpg" class="img-fluid" alt="Class">

                            <div class="class-info">
                                <h3 class="mb-1">Masajes</h3>
                                <p class="mt-3">Tratamiento  aplicado en dolencias o posibles dolencias con objetivo de mejorar y reducir el dolor</p>
                            </div>
                        </div>
                    </div>

                    <div class="mt-5 mt-lg-0 mt-md-0 col-lg-4 col-md-6 col-12" data-aos="fade-up" data-aos-delay="500">
                        <div class="class-thumb">
                            <img src="images/class/tratamiento-class.jpg" class="img-fluid" alt="Class">

                            <div class="class-info">
                                <h3 class="mb-1">Tratamiento Faciales</h3>
                                <p class="mt-3">Tratamiento empliados para la mejora del cuidado de piel del rostro. </p>
                            </div>
                        </div>
                    </div>

                    <div class="mt-5 mt-lg-0 col-lg-4 col-md-6 col-12" data-aos="fade-up" data-aos-delay="600">
                        <div class="class-thumb">
                            <img src="images/class/manicura-class.jpg" class="img-fluid" alt="Class">

                            <div class="class-info">
                                <h3 class="mb-1">Manicure</h3>
                                <p class="mt-3">Tratamiento empliado para el cuidado y embeleccimiento de las manos. </p>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </section>
        <!-- SCHEDULE -->
        <section class="schedule section" id="schedule">
            <div class="container">
                <div class="row">

                    <div class="col-lg-12 col-12 text-center">
                        <h6 data-aos="fade-up">Controla tu horario y desempéñate  de mejor manera</h6>

                        <h2 class="text-white" data-aos="fade-up" data-aos-delay="200">Calendario de reserva de hora</h2>
                    </div>

                    <div class="col-lg-12 py-5 col-md-12 col-12">
                        <table class="table table-bordered table-responsive schedule-table" data-aos="fade-up" data-aos-delay="300">

                            <thead class="thead-light">
                            <th><i class="fa fa-calendar"></i></th>
                            <th>Lunes</th>
                            <th>Martes</th>
                            <th>Miercoles</th>
                            <th>Jueves</th>
                            <th>Viernes</th>
                            <th>Sabado</th>
                            <th>Domingo</th>
                            </thead>
                            <tbody>
                                <tr>
                                    <td><small>8:00 am</small></td>
                                    <td>
                                        <strong>Cupo Reservado</strong>
                                        <span>8:00 am - 10:00 am</span>
                                    </td>
                                    <td>
                                        <strong>Cupo Disponible</strong>
                                        <span>8:00 am - 10:00 am</span>
                                    </td>
                                    <td></td>
                                    <td></td>
                                    <td>
                                        <strong>Cupo Reservado</strong>
                                        <span>8:00 am - 9:00 am</span>
                                    </td>
                                    <td></td>
                                    <td>
                                        <strong>Cupo Disponible</strong>
                                        <span>8:00 am - 9:00 am</span>
                                    </td>
                                </tr>
                                <tr>
                                    <td><small>10:00 pm</small></td>
                                    <td></td>
                                    <td></td>
                                    <td>
                                        <strong>Cupo Disponible</strong>
                                        <span>10:00 am - 12:00 pm</span>
                                    </td>
                                    <td>
                                        <strong>Cupo Reservado</strong>
                                        <span>10:00 am - 12:00 pm</span>
                                    </td>
                                    <td></td>
                                    <td>
                                        <strong>Cupo Disponible</strong>
                                        <span>10:00 am - 12:00 pm</span>
                                    </td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <td><small>12:00 pm</small></td>
                                    <td></td>
                                    <td>
                                        <strong>Cupo Reservado</strong>
                                        <span>12:00 pm - 2:00 pm</span>
                                    </td>
                                    <td>
                                        <strong>Cupo Reservado</strong>
                                        <span>12:00 pm - 2:00 pm</span>
                                    </td>
                                    <td></td>
                                    <td>
                                        <strong>Cupo Disponible</strong>
                                        <span>12:00 pm - 2:00 pm</span>
                                    </td>
                                    <td></td>
                                    <td></td>
                                </tr>

                                <tr>
                                    <td><small>2:00 pm</small></td>
                                    <td>
                                        <strong>Cupo Disponible</strong>
                                        <span>2:00 pm - 4:00 pm</span>
                                    </td>
                                    <td>
                                        <strong>Cupo Disponible</strong>
                                        <span>2:00 pm - 4:00 pm</span>
                                    </td>
                                    <td></td>
                                    <td>
                                        <strong>Cupo Reservado</strong>
                                        <span>2:00 pm - 4:00 pm</span>
                                    </td>
                                    <td></td>
                                    <td></td>
                                    <td>
                                        <strong>Cupo Reservado</strong>
                                        <span>2:00 pm - 4:00 pm</span>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>

                </div>
            </div>
        </section>


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
