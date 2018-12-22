<%@ Page Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Flights.aspx.cs" Inherits="Vuelos.Flights" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <!-- start banner Area -->
    <section class="banner-area relative about-banner" id="home">
        <div class="overlay overlay-bg"></div>
        <div class="container">
            <div class="row d-flex align-items-center justify-content-center">
                <div class="about-content col-lg-12">
                    <h1 class="text-white">Vuelos	
                    </h1>
                    <p class="text-white link-nav"><a href="inicio">Inicio</a> <span class="lnr lnr-arrow-right"></span><a href="AirportDoors.aspx">Aeropuertos</a><span class="lnr lnr-arrow-right"></span><a href="Flights">Vuelos</a></p>
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
                        <h1 class="mb-10">Explore nuestra lista de aerolineas asociadas</h1>
                        <p>Sujeto a cambios.</p>
                        <div class="animated fadeIn">
                            <div class="row">

                                <div class="col-md-12">
                                    <div class="card">
                                        <div class="card-body">
                                            <div id="bootstrap-data-table_wrapper" class="dataTables_wrapper container-fluid dt-bootstrap4 no-footer">
                                                <div class="row">
                                                    <div class="col-sm-12 col-md-6">
                                                        <div id="bootstrap-data-table_filter" class="dataTables_filter"></div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="card">
                                        <div class="card-body">
                                            <div id="bootstrap-data-table_wrapper" class="dataTables_wrapper container-fluid dt-bootstrap4 no-footer">
                                                <div class="row">
                                                    <table align="center" style="width: 511px">
                                                        
                                                        <tr>
                                                            <td class="text-right" style="width: 230px">
                                                                <asp:Label ID="lblAerolinea" runat="server" Text="Aerolinea"></asp:Label>
                                                            </td>
                                                            <td>
                                                                <asp:DropDownList ID="dropDown_Aero" runat="server" TabIndex="7" CssClass="btn btn-secondary dropdown-toggle" data-toggle="dropdown" DataTextField="nombre_agencia" DataValueField="nombre_agencia" DataSourceID="SqlDataSource2">
                                                                    <asp:ListItem Selected="True" class="dropdown-item"></asp:ListItem>
                                                                </asp:DropDownList>
                                                                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:vvuelosConnectionString %>" SelectCommand="SELECT [nombre_agencia] FROM [aerolineas]"></asp:SqlDataSource>
                                                            </td>
                                                            <td>&nbsp;</td>
                                                        </tr>
                                                        <tr>
                                                            <td class="text-right" style="width: 230px; height: 25px;">
                                                                <asp:Label ID="lblProcedencia" runat="server" Text="Procedencia"></asp:Label>
                                                            </td>
                                                            <td style="height: 25px">
                                                                <asp:DropDownList ID="dropDown_Pais" runat="server" TabIndex="7" CssClass="btn btn-secondary dropdown-toggle" data-toggle="dropdown" DataTextField="nombre_pais" DataValueField="nombre_pais" DataSourceID="SqlDataSource3">
                                                                    <asp:ListItem Selected="True" class="dropdown-item"></asp:ListItem>
                                                                </asp:DropDownList>
                                                                <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:vvuelosConnectionString %>" SelectCommand="SELECT [nombre_pais] FROM [paises]"></asp:SqlDataSource>
                                                            </td>
                                                            <td style="height: 25px"></td>
                                                        </tr>
                                                        <tr>
                                                            <td class="text-right" style="width: 230px">
                                                                <asp:Label ID="lblTipoPuerta" runat="server" Text="Tipo de puerta"></asp:Label>
                                                            </td>
                                                            <td>
                                                                <asp:DropDownList ID="dropDown_tipoPuerta" runat="server" TabIndex="7" CssClass="btn btn-secondary dropdown-toggle" data-toggle="dropdown" DataTextField="codigo_aerolinea" DataValueField="codigo_aerolinea">
                                                                    <asp:ListItem Selected="True" class="dropdown-item">Seleccione el tipo de puerta</asp:ListItem>
                                                                        <asp:ListItem class="dropdown-item">Entrada</asp:ListItem>
                                                                        <asp:ListItem class="dropdown-item">Salida</asp:ListItem>
                                                                </asp:DropDownList>
                                                            </td>
                                                            <td>&nbsp;</td>
                                                        </tr>
                                                        <tr>
                                                            <td class="text-right" style="width: 230px">
                                                                <asp:Label ID="lblNumPuerta" runat="server" Text="Número de puerta"></asp:Label>
                                                            </td>
                                                            <td>
                                                                <asp:DropDownList ID="dropDown_numPuerta" runat="server" TabIndex="7" CssClass="btn btn-secondary dropdown-toggle" data-toggle="dropdown"  DataTextField="numero" DataValueField="numero" DataSourceID="SqlDataSource4">
                                                                    <asp:ListItem Selected="True" class="dropdown-item"></asp:ListItem>
                                                                </asp:DropDownList>
                                                                <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:vvuelosConnectionString %>" SelectCommand="SELECT [numero] FROM [puertas]"></asp:SqlDataSource>
                                                            </td>
                                                            <td>&nbsp;</td>
                                                        </tr>
                                                        <tr>
                                                            <td style="width: 230px" class="text-right">
                                                                <asp:Label ID="lblCantidadBoletos" runat="server" Text="Cantidad de boletos"></asp:Label>
                                                            </td>
                                                            <td>
                                                                <asp:TextBox ID="txtBox_CantBoletos" runat="server"></asp:TextBox>
                                                            </td>
                                                            <td>&nbsp;</td>
                                                        </tr>
                                                        <tr>
                                                            <td style="width: 230px" class="text-right">
                                                                <asp:Label ID="lblPrecio" runat="server" Text="Precio"></asp:Label>
                                                            </td>
                                                            <td>
                                                                <asp:TextBox ID="txt_Precio" runat="server"></asp:TextBox>
                                                            </td>
                                                            <td>&nbsp;</td>
                                                        </tr>
                                                        <tr>
                                                            <td class="text-right" style="width: 230px">
                                                                <asp:Label ID="lblFecha" runat="server" Text="Fecha"></asp:Label>
                                                            </td>
                                                            <td>
                                                                <asp:TextBox ID="txtFecha" runat="server"></asp:TextBox>
                                                            </td>
                                                            <td>&nbsp;</td>
                                                        </tr>
                                                        <tr>
                                                            <td style="width: 230px">&nbsp;</td>
                                                            <td>&nbsp;</td>
                                                            <td>&nbsp;</td>
                                                        </tr>
                                                        <tr>
                                                            <td style="width: 230px">&nbsp;</td>
                                                            <td>
                                                                <asp:LinkButton ID="btnCrearVuelo" runat="server" class="btn btn-primary btn-sm" OnClick="btnCrearVuelo_Click">Crear vuelo</asp:LinkButton>
                                                            </td>
                                                            <td>&nbsp;</td>
                                                        </tr>
                                                    </table>
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
</asp:Content>

