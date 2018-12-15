<%@ Page Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="ActiveDoors.aspx.cs" Inherits="Vuelos.Active_doors" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <!-- start banner Area -->
    <section class="banner-area relative about-banner" id="home">
        <div class="overlay overlay-bg"></div>
        <div class="container">
            <div class="row d-flex align-items-center justify-content-center">
                <div class="about-content col-lg-12">
                    <h1 class="text-white">Puertas de aeropuerto	
                        </h1>
                    <p class="text-white link-nav"><a href="index">Inicio </a><span class="lnr lnr-arrow-right"></span><a href="aeropuertos">Aeropuertos</a> <span class="lnr lnr-arrow-right"></span><a href="ActiveDoors">Vuelos</a></p>
                </div>
            </div>
        </div>
    </section>
    <!-- End banner Area -->

    <!-- Start description Area -->
    <section class="popular-courses-area section-gap courses-page">
        <div class="container">
            <div class="row d-flex justify-content-center">
                <div class="menu-content pb-70 col-lg-8">
                    <div class="title text-center">
                        <h1 class="mb-10">Visualice las puertas de un aeropuerto en tiempo real</h1>
                        <p>Sujeto a cambios.</p>
                        <div class="content mt-3">
                            <div class="animated fadeIn">
                                <div class="row">

                                    <div class="col-md-12">
                                        <div class="card">
                                            <div class="card-header">
                                                <strong class="card-title">Países</strong>
                                            </div>
                                            <div class="card-body">
                                                <asp:GridView ID="grid_puertasAeropuertos" runat="server" Width="650px">
                                                    <Columns>
                                                        <asp:ImageField>
                                                        </asp:ImageField>
                                                    </Columns>
                                                    <HeaderStyle
                                                        BackColor="#003366"
                                                        ForeColor="White" />
                                                </asp:GridView>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- End description Area -->

</asp:Content>

