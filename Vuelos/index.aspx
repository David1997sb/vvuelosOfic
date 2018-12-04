<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Vuelos.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <!-- Mobile Specific Meta -->
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Favicon-->
    <link rel="shortcut icon" href="img/fav.png">
    <!-- Author Meta -->
    <meta name="author" content="colorlib">
    <!-- Meta Description -->
    <meta name="description" content="">
    <!-- Meta Keyword -->
    <meta name="keywords" content="">
    <!-- meta character set -
    <!-- Site Title -->
    <title>V-Vuelos</title>

    <link href="https://fonts.googleapis.com/css?family=Poppins:100,200,400,300,500,600,700" rel="stylesheet">
    <!--
			CSS
			============================================= -->
    <link rel="stylesheet" href="css/linearicons.css">
    <link rel="stylesheet" href="css/font-awesome.min.css">
    <link rel="stylesheet" href="css/bootstrap.css">
    <link rel="stylesheet" href="css/magnific-popup.css">
    <link rel="stylesheet" href="css/nice-select.css">
    <link rel="stylesheet" href="css/animate.min.css">
    <link rel="stylesheet" href="css/owl.carousel.css">
    <link rel="stylesheet" href="css/jquery-ui.css">
    <link rel="stylesheet" href="css/main.css">
</head>
<body>
    <form id="form1" runat="server">
        <header id="header" id="home">
            <div class="container main-menu">
                <div class="row align-items-center justify-content-between d-flex">
                    <div id="logo">
                        <a href="index.aspx">
                            <img src="img/logo.png" alt="" title="" /></a>
                    </div>
                    <nav id="nav-menu-container">
                        <ul class="nav-menu">
                            <li><a href="index.aspx">Inicio</a></li>
                            <li><a href="Countries.aspx">Paises</a></li>
                            <li><a href="Airlines.aspx">Aerolineas</a></li>
                            <li class="menu-has-children"><a href="Flights.aspx">Aeropuertos</a>
                                <ul>
                                    <li><a href="AirportDoors.aspx">Puertas</a></li>
                                </ul>
                            </li>
                            <li class="menu-has-children"><a href="">Administrador</a>
                                <ul>
                                    <li><a href="Countries.aspx">Paises</a></li>
                                    <li><a href="Airlines.aspx">Aerolineas</a></li>
                                    <li><a href="Errors.html">Errores</a></li>
                                    <li><a href="bita.aspx">Bitácora</a></li>
                                    <li><a href="Consecutive.aspx">Consecutivos</a></li>
                                    <li class="menu-has-children"><a href="Airlines.aspx">Aeropuertos</a>
                                        <ul>
                                            <li><a href="AirportDoors.aspx">Puertas</a></li>
                                        </ul>
                                    </li>
                                    <li class="menu-has-children"><a href="">Usuarios</a>
                                        <ul>
                                            <li><a href="#">Crear usuario</a></li>
                                            <li><a href="createAccount.aspx">Ver lista de usuarios</a></li>
                                        </ul>
                                    </li>
                                </ul>
                            </li>
                        </ul>
                    </nav>
                    <!-- #nav-menu-container -->
                </div>
            </div>
        </header>
        <!-- #header -->

        <!-- start banner Area -->
        <section class="banner-area relative" id="home">
            <div class="overlay overlay-bg"></div>
            <div class="container">
                <div class="row fullscreen d-flex align-items-center justify-content-between">
                    <div class="banner-content col-lg-9 col-md-12">
                        <h1 class="text-uppercase">¡Bienvenido a V-Vuelos!			
                        </h1>
                        <p class="pt-10 pb-10">
                            ¡Su aliado de confianza para la visualización y compra de boletos aereos por internet!
                        </p>
                        <asp:Button ID="btn_ofertas" runat="server" Text="Ver ofertas" class="primary-btn text-uppercase" />
                    </div>
                </div>
            </div>
        </section>
        <!-- End banner Area -->

        <!-- Start feature Area -->
        <section class="feature-area">
            <div class="container">
                <div class="row">
                    <div class="col-lg-4">
                        <div class="single-feature">
                            <div class="title">
                                <h4>Paises</h4>
                            </div>
                            <div class="desc-wrap" style="background-color: #FFFFFF">
                                <p>
                                    Explore nuestra amplia lista de paises disponibles y escoja destino.
                                </p>
                                <%--<a href="paises.html">Explorar</a>--%>
                                <asp:Button ID="btn_paises" runat="server" Text="Explorar" backcolor="Transparent" BorderColor="Transparent" />
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="single-feature">
                            <div class="title">
                                <h4>Aeropuertos</h4>
                            </div>
                            <div class="desc-wrap">
                                <p>
                                    Descubra cuáles son los aeropuertos disponibles en el país de su selección.
                                </p>
                                <%--<a href="aeropuertos.html">Explorar</a>--%>
                                <asp:Button ID="btn_aeropuertos" runat="server" Text="Explorar" backcolor="Transparent" BorderColor="Transparent" />
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="single-feature">
                            <div class="title">
                                <h4>Aerolineas</h4>
                            </div>
                            <div class="desc-wrap">
                                <p>
                                    Elija entre las diferentes aerolineas que ofrecen el vuelo que usted desea.
                                </p>
                                <%--<a href="aerolineas.html">Explorar</a>--%>
                                <asp:Button ID="btn_aerolineas" runat="server" Text="Explorar" backcolor="Transparent" BorderColor="Transparent"/>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- End feature Area -->

        <!-- Start popular-course Area -->
        <section class="popular-course-area section-gap">
            <div id="ofertas" class="two">
                <div class="row d-flex justify-content-center">
                    <div class="menu-content pb-70 col-lg-8">
                        <div class="title text-center">
                            <h1 class="mb-10">Ofertas del momento</h1>
                            <p>Sujetas a cambios sin previo aviso y por tiempo limitado.</p>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="active-popular-carusel">
                        <div class="single-popular-carusel">
                            <div class="thumb-wrap relative">
                                <div class="thumb relative">
                                    <div class="overlay overlay-bg"></div>
                                    <img class="img-fluid" src="img/p1.jpg" alt="">
                                </div>
                                <div class="meta d-flex justify-content-between">
                                    <p>
                                        <span class="lnr lnr-star"></span>
                                        <span class="lnr lnr-star"></span>
                                        <span class="lnr lnr-star"></span>
                                        <span class="lnr lnr-star"></span>
                                        <span class="lnr lnr-star"></span>
                                    </p>
                                    <h4>$680</h4>
                                </div>
                            </div>
                            <div class="details">
                                <a href="#">
                                    <h4>Vietnam
                                    </h4>
                                </a>
                                <p>
                                    Probablemente la has visto en el fondo de innumerables películas de guerra, sin embargo para lo que debes estar preparado es para la increíble belleza de Vietnam.								
                                </p>
                            </div>
                        </div>
                        <div class="single-popular-carusel">
                            <div class="thumb-wrap relative">
                                <div class="thumb relative">
                                    <div class="overlay overlay-bg"></div>
                                    <img class="img-fluid" src="img/p2.jpg" alt="">
                                </div>
                                <div class="meta d-flex justify-content-between">
                                    <p>
                                        <span class="lnr lnr-star"></span>
                                        <span class="lnr lnr-star"></span>
                                        <span class="lnr lnr-star"></span>
                                        <span class="lnr lnr-star"></span>
                                    </p>
                                    <h4>$920</h4>
                                </div>
                            </div>
                            <div class="details">
                                <a href="pago.html">
                                    <h4>Singapur
                                    </h4>
                                </a>
                                <p>
                                    Quizás es el destino más caro del sudeste, pero vale la pena, es como viajar al futuro. Singapur es un país cosmopolita que se ha convertido en uno de los principales centros económicos del mundo.
                                </p>
                            </div>
                        </div>
                        <div class="single-popular-carusel">
                            <div class="thumb-wrap relative">
                                <div class="thumb relative">
                                    <div class="overlay overlay-bg"></div>
                                    <img class="img-fluid" src="img/p3.jpg" alt="">
                                </div>
                                <div class="meta d-flex justify-content-between">
                                    <p>
                                        <span class="lnr lnr-star"></span>
                                        <span class="lnr lnr-star"></span>
                                        <span class="lnr lnr-star"></span>
                                        <span class="lnr lnr-star"></span>
                                        <span class="lnr lnr-star"></span>
                                    </p>
                                    <h4>$790</h4>
                                </div>
                            </div>
                            <div class="details">
                                <a href="#">
                                    <h4>Indonesia
                                    </h4>
                                </a>
                                <p>
                                    Indonesia ofece interesantes y animadas ciudades como Yogyakarta, así como pequeños pueblos en donde el ritmo de vida es más lento. Tiene playas vírgenes, aguas cristalinas e imponentes volcanes
                                </p>
                            </div>
                        </div>
                        <div class="single-popular-carusel">
                            <div class="thumb-wrap relative">
                                <div class="thumb relative">
                                    <div class="overlay overlay-bg"></div>
                                    <img class="img-fluid" src="img/p4.jpg" alt="">
                                </div>
                                <div class="meta d-flex justify-content-between">
                                    <p>
                                        <span class="lnr lnr-star"></span>
                                        <span class="lnr lnr-star"></span>
                                        <span class="lnr lnr-star"></span>
                                        <span class="lnr lnr-star"></span>
                                        <span class="lnr lnr-star"></span>
                                    </p>
                                    <h4>$530</h4>
                                </div>
                            </div>
                            <div class="details">
                                <a href="#">
                                    <h4>Italia
                                    </h4>
                                </a>
                                <p>
                                    Siendo una ciudad que se encuentra justo en la frontera de Europa, su estilo presenta una mezcla de bizantino, norteafricano y europeo, con mercados callejeros ubicados alrededor de majestuosas iglesias barrocas.
                                </p>
                            </div>
                        </div>
                        <div class="single-popular-carusel">
                            <div class="thumb-wrap relative">
                                <div class="thumb relative">
                                    <div class="overlay overlay-bg"></div>
                                    <img class="img-fluid" src="img/p5.jpg" alt="">
                                </div>
                                <div class="meta d-flex justify-content-between">
                                    <p>
                                        <span class="lnr lnr-star"></span>
                                        <span class="lnr lnr-star"></span>
                                        <span class="lnr lnr-star"></span>
                                        <span class="lnr lnr-star"></span>
                                        <span class="lnr lnr-star"></span>
                                    </p>
                                    <h4>$640</h4>
                                </div>
                            </div>
                            <div class="details">
                                <a href="#">
                                    <h4>Polonia
                                    </h4>
                                </a>
                                <p>
                                    No dejes que los casi mil años de historia te engañen. Esta es una ciudad construida para el futuro. Con alrededor de 130.000 estudiantes, es la ciudad más joven de Polonia y, como tal, una de las más animadas.
                                </p>
                            </div>
                        </div>
                        <div class="single-popular-carusel">
                            <div class="thumb-wrap relative">
                                <div class="thumb relative">
                                    <div class="overlay overlay-bg"></div>
                                    <img class="img-fluid" src="img/p6.jpg" alt="">
                                </div>
                                <div class="meta d-flex justify-content-between">
                                    <p>
                                        <span class="lnr lnr-star"></span>
                                        <span class="lnr lnr-star"></span>
                                        <span class="lnr lnr-star"></span>
                                        <span class="lnr lnr-star"></span>
                                        <span class="lnr lnr-star"></span>
                                    </p>
                                    <h4>$810</h4>
                                </div>
                            </div>
                            <div class="details">
                                <a href="#">
                                    <h4>Alemania
                                    </h4>
                                </a>
                                <p>
                                    Hay más de 3.200 objetos cotidianos que permiten ilustrar cómo era la vida bajo el régimen comunista, incluyendo los medios que utilizaban para la comunicación, libros, revistas, camisetas de fútbol, obras de arte y mucho más.
                                </p>
                            </div>
                        </div>
                        <div class="single-popular-carusel">
                            <div class="thumb-wrap relative">
                                <div class="thumb relative">
                                    <div class="overlay overlay-bg"></div>
                                    <img class="img-fluid" src="img/p7.jpg" alt="">
                                </div>
                                <div class="meta d-flex justify-content-between">
                                    <p>
                                        <span class="lnr lnr-star"></span>
                                        <span class="lnr lnr-star"></span>
                                        <span class="lnr lnr-star"></span>
                                        <span class="lnr lnr-star"></span>
                                    </p>
                                    <h4>$470</h4>
                                </div>
                            </div>
                            <div class="details">
                                <a href="#">
                                    <h4>Chile
                                    </h4>
                                </a>
                                <p>
                                    La cordillera, la costa y los paisajes de Chile se han vuelto el destino favorito para turistas de todo el mundo, y esto se vio reflejado en los reconocimientos que se llevó nuestro país en los denominados "Oscar del Turismo".
                                </p>
                            </div>
                        </div>
                        <div class="single-popular-carusel">
                            <div class="thumb-wrap relative">
                                <div class="thumb relative">
                                    <div class="overlay overlay-bg"></div>
                                    <img class="img-fluid" src="img/p8.jpg" alt="">
                                </div>
                                <div class="meta d-flex justify-content-between">
                                    <p>
                                        <span class="lnr lnr-star"></span>
                                        <span class="lnr lnr-star"></span>
                                        <span class="lnr lnr-star"></span>
                                        <span class="lnr lnr-star"></span>
                                        <span class="lnr lnr-star"></span>
                                    </p>
                                    <h4>$695</h4>
                                </div>
                            </div>
                            <div class="details">
                                <a href="#">
                                    <h4>India
                                    </h4>
                                </a>
                                <p>
                                    ¿Quieres conocer lugares para ir de vacaciones baratas? Pues aquí tienes un país muy barato y con una cultura increíble por descubrir tan alejada a lo que estamos acostumbrados que cada día puede regalarte una nueva sorpresa, es un país enorme y la diferencia de precios entre las regiones está aumentando.
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>


        <!-- Start cta-one Area -->
        <section class="cta-one-area relative section-gap">
            <div class="container">
                <div class="overlay overlay-bg"></div>
                <div class="row justify-content-center">
                    <div class="wrap">
                        <h1 class="text-white">Visualice los vuelos en tiempo real</h1>
                        <p>
                            Descubra cuáles son los horarios de los vuelos entrantes y salientes de un aeropuerto a su selección.
                        </p>
                        <asp:Button ID="btn_visPuer" runat="server" Text="Visualizar puertas" class="primary-btn wh" />
                    </div>
                </div>
            </div>
        </section>
        <!-- End cta-one Area -->

        <!-- Start cta-two Area -->
        <section class="cta-two-area">
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 cta-left">
                        <h1>Inicie sesión para descubrir nuevas funciones.</h1>
                    </div>
                    <div class="col-lg-4 cta-right">
                        <asp:Button ID="btn_login" runat="server" Text="Iniciar Sesión" class="primary-btn wh" OnClick="btn_login_Click" />
                    </div>
                </div>
            </div>
        </section>
        <!-- End cta-two Area -->

        <!-- start footer Area -->
        <footer class="footer-area section-gap">
            <div class="container">
                <div class="footer-bottom row align-items-center justify-content-between">
                    <p class="footer-text m-0 col-lg-6 col-md-12">
                        <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                        Copyright &copy;<script>document.write(new Date().getFullYear());</script>
                        Todos los derechos reservados | Hecho con <i class="fa fa-heart-o" aria-hidden="true"></i>por estudiantes de <a href="http://www.ulacit.ac.cr/" target="_blank">ULACIT</a>. Producido por <a href="" target="_blank">D.Salas, K.Araya</a> y  <a href="" target="_blank">A.Martinez.</a>
                        <div class="col-lg-6 col-sm-12 footer-social">
                            <img src="img/ulacit.png" />
                        </div>
                </div>
            </div>
        </footer>
        <!-- End footer Area -->
    </form>

    <script src="js/vendor/jquery-2.2.4.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="js/vendor/bootstrap.min.js"></script>
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBhOdIF3Y9382fqJYt5I_sswSrEw5eihAA"></script>
    <script src="js/easing.min.js"></script>
    <script src="js/hoverIntent.js"></script>
    <script src="js/superfish.min.js"></script>
    <script src="js/jquery.ajaxchimp.min.js"></script>
    <script src="js/jquery.magnific-popup.min.js"></script>
    <script src="js/jquery.tabs.min.js"></script>
    <script src="js/jquery.nice-select.min.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/mail-script.js"></script>
    <script src="js/main.js"></script>

</body>
</html>
