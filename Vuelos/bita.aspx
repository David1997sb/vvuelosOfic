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
                            <div class="col-md-12">
                                <div class="card">
                                    <div class="card-body">
                                        <div class="container">
                                            <h1 class="mb-2" style="font-size: x-large">Consulta por fecha en que se modificó <span class="auto-style1">(formato DD/MM/YYYY)</span></h1>
                                            <div class="row">
                                                <div class="col-md-3">
                                                    <ul class="nav nav-stacked">
                                                        <li><strong>Desde</strong></li>
                                                        <li>
                                                            <asp:TextBox ID="txtDesde" runat="server" Width="173px"></asp:TextBox>
                                                        </li>
                                                    </ul>
                                                </div>
                                                <div class="col-md-3">
                                                    <ul class="nav nav-stacked">
                                                        <li><strong>Hasta</strong></li>
                                                        <li>
                                                            <asp:TextBox ID="txtHasta" runat="server" Width="173px"></asp:TextBox>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <br />
                                            <br />
                                            <h1 class="mb-2" style="font-size: x-large">Consulta por usuario que modificó</h1>
                                            <div class="row">
                                                <div class="col-md-3">
                                                    <ul class="nav nav-stacked">
                                                        <li><strong>Nombre de usuario</strong></li>
                                                        <li>
                                                            <asp:TextBox ID="txtNombreUsuario" runat="server" Width="173px"></asp:TextBox>
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <br />
                                            <br />
                                            <h1 class="mb-2" style="font-size: x-large">Consulta por tipo de cambio que se realizó</h1>
                                            <div class="row">
                                                <div class="col-md-3">
                                                    <asp:DropDownList ID="DropDownList1" runat="server">
                                                        <asp:ListItem>Eliminar</asp:ListItem>
                                                        <asp:ListItem>Modificar</asp:ListItem>
                                                        <asp:ListItem>Agregar</asp:ListItem>
                                                        <asp:ListItem>Todas</asp:ListItem>
                                                    </asp:DropDownList>
                                                </div>
                                            </div>
                                            <br />
                                            <br />
                                            <table align="left" class="auto-style2">
                                                <tr>
                                                    <td>
                                                        <asp:Button ID="btnBuscar" runat="server" Text="Consultar" BackColor="#0066FF" ForeColor="White" Height="45px" Width="154px" />
                                                    </td>
                                                </tr>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div>
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

