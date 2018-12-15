<%@ Page Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Errors.aspx.cs" Inherits="Vuelos.Errors" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <!-- start banner Area -->
    <section class="banner-area relative about-banner" id="home">
        <div class="overlay overlay-bg"></div>
        <div class="container">
            <div class="row d-flex align-items-center justify-content-center">
                <div class="about-content col-lg-12">
                    <h1 class="text-white">Consulta de errores	
							</h1>
                    <p class="text-white link-nav"><a href="index">Inicio</a> <span class="lnr lnr-arrow-right">Administrador<span class="lnr lnr-arrow-right"></span><a href="Errors">Errores</a></p>
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
                        <h1 class="mb-10">Búsqueda de histórico de errores de la aplicación</h1>
                        <div class="animated fadeIn">
                            <div class="row">

                                <div class="col-md-12">
                                    <div class="card">
                                        <div class="card-body">
                                            <div id="bootstrap-data-table_wrapper" class="dataTables_wrapper container-fluid dt-bootstrap4 no-footer">
                                                <div class="row">
                                                    <div class="col-sm-12 col-md-6">
                                                    </div>
                                                    <div class="col-sm-12 col-md-6">
                                                        <div id="bootstrap-data-table_filter" class="dataTables_filter">
                                                            <label>
                                                                Buscar por error:				 
                                                                <input type="search" class="form-control form-control-sm" placeholder="" aria-controls="bootstrap-data-table">
                                                            </label>
                                                        </div>
                                                    </div>
                                                </div>
                                                <asp:GridView ID="GridView1" runat="server" Width="650px">
                                                    <Columns>
                                                        <asp:ImageField>
                                                        </asp:ImageField>
                                                    </Columns>
                                                    <HeaderStyle BackColor="#003366" ForeColor="White" />
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

