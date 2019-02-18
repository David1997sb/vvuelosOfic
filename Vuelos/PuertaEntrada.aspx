<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="PuertaEntrada.aspx.cs" Inherits="Vuelos.PuertaEntrada" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <!-- start banner Area -->
    <section class="banner-area relative about-banner" id="home">
        <div class="overlay overlay-bg"></div>
        <div class="container">
            <div class="row d-flex align-items-center justify-content-center">
                <div class="about-content col-lg-12">
                    <h1 class="text-white">Puertas de aeropuerto	
							</h1>
                    <p class="text-white link-nav"><a href="index">Inicio</a> <span class="lnr lnr-arrow-right"></span><a href="AirportDoors">Aeropuertos</a><span class="lnr lnr-arrow-right"></span><a href="Doors">Puertas</a></p>
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
                        <h1 class="mb-10">Visualice las puertas del aeropuerto en tiempo real</h1>
                        <p>Sujeto a cambios.</p>
                        <div class="animated fadeIn">
                            <div class="row">

                                <div class="col-md-12">
                                    <div class="card">
                                        <div class="card-body">
                                            <div id="bootstrap-data-table_wrapper" class="dataTables_wrapper container-fluid dt-bootstrap4 no-footer">
                                                <div class="row">
                                                   
                                                    </div>
                                                    <asp:GridView ID="GridView1" runat="server" Width="650px" AutoGenerateColumns="False" DataKeyNames="consecutivo" DataSourceID="SqlDataSource1">
                                                        <Columns>
                                                            <asp:BoundField DataField="consecutivo" HeaderText="consecutivo" InsertVisible="False" ReadOnly="True" SortExpression="consecutivo" />
                                                            <asp:BoundField DataField="aerolinea" HeaderText="aerolinea" SortExpression="aerolinea" />
                                                            <asp:BoundField DataField="procedencia" HeaderText="procedencia" SortExpression="procedencia" />
                                                            <asp:BoundField DataField="fecha" HeaderText="fecha" SortExpression="fecha" />
                                                            <asp:BoundField DataField="hora" HeaderText="hora" SortExpression="hora" />
                                                            <asp:BoundField DataField="estado" HeaderText="estado" SortExpression="estado" />
                                                            <asp:BoundField DataField="puerta" HeaderText="puerta" SortExpression="puerta" />
                                                        </Columns>
                                                        <HeaderStyle BackColor="#003366" ForeColor="White" />
                                                    </asp:GridView>
                                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:vvuelosConnectionString %>" SelectCommand="sp_getVuelos" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                                                </div>
                                                <div>
                                                    <asp:Button ID="btnBuscar" runat="server" Text="Buscar" />
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
        </div>
    </section>
    <!-- End description Area -->

</asp:Content>

