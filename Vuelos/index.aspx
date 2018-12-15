<%@ Page Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Vuelos.index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

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
                    <asp:Button ID="btn_ofertas" runat="server" Text="Ver ofertas" class="primary-btn text-uppercase"/>
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
                    <div  class="single-feature">
                        <div class="title">
                            <h4>Paises</h4>
                        </div>
                        <div class="desc-wrap" style="background-color: #FFFFFF">
                            <p>
                                Explore nuestra amplia lista de paises disponibles y escoja un destino.
                            </p>
                            <asp:Button ID="btn_paises" runat="server" Text="Explorar" BackColor="Transparent" BorderColor="Transparent" />
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
                            <asp:Button ID="btn_aeropuertos" runat="server" Text="Explorar" BackColor="Transparent" BorderColor="Transparent" />
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
                            <asp:Button ID="btn_aerolineas" runat="server" Text="Explorar" BackColor="Transparent" BorderColor="Transparent" />
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

</asp:Content>

