<%@ Page Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="bita.aspx.cs" Inherits="Vuelos.bita" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <!-- start banner Area -->
    <section class="banner-area relative about-banner" id="home">
        <div class="overlay overlay-bg"></div>
        <div class="container">
            <div class="row d-flex align-items-center justify-content-center">
                <div class="about-content col-lg-12">
                    <h1 class="text-white">Bitácora de cambios</h1>
                    <p class="text-white link-nav"><a href="#">Administrador</a> <span class="lnr lnr-arrow-right"></span><a href="bitacora.aspx">Bitácora</a></p>
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
                        <h1 class="mb-10">Consulte los cambios que se han hecho en el sistema</h1>
                        <div class="col-sm-4">
                        </div>
                    </div>
                    <div class="col-sm-8">
                        <div class="page-header float-right">
                        </div>
                    </div>
                </div>
                <div class="content mt-3">
                    <div class="animated fadeIn">
                        <div class="row">
                            <div class="content mt-3">
                                <div class="animated fadeIn">
                                    <div class="row">
                                        <div class="col-md-12" runat="server">
                                            <div class="card">
                                                <div class="card-body">
                                                    <div class="container">
                                                        <table class="auto-style2" align="center">
                                                            <tr>
                                                                <asp:GridView ID="GridView1" runat="server" Width="532px">
                                                                    <Columns>
                                                                        <asp:ImageField>
                                                                        </asp:ImageField>
                                                                    </Columns>
                                                                    <HeaderStyle BackColor="#003366" ForeColor="White" />
                                                                </asp:GridView>
                                                            </tr>
                                                        </table>
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

