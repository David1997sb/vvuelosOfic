<%@ Page Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="reserva.aspx.cs" Inherits="Vuelos.reserva" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <!-- start banner Area -->
    <section class="banner-area relative about-banner" id="home">
        <div class="overlay overlay-bg"></div>
        <div class="container">
            <div class="row d-flex align-items-center justify-content-center">
                <div class="about-content col-lg-12">
                    <h1 class="text-white">Compra de boletos</h1>
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
                        <div class="animated fadeIn">
                            <div class="row">

                                <div>
                                    <table align="center" style="width: 511px">
                                        <tr>
                                            <td class="text-right" style="width: 230px">
                                                <asp:Label ID="Label1" runat="server" Text="Numero de reservacion"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="txtBox_numReserva" runat="server"></asp:TextBox>
                                            </td>
                                            <td>&nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td class="text-right" style="width: 230px">
                                                <asp:Label ID="Label2" runat="server" Text="Booking id"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="txtBox_BookId" runat="server"></asp:TextBox>
                                            </td>
                                            <td>&nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td class="text-right" style="width: 230px">
                                                <asp:Label ID="Label4" runat="server" Text="Cantidad de boletos"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="txtMonto" runat="server"></asp:TextBox>
                                            </td>
                                            <td>
                                                <asp:Label ID="txt_total" runat="server" Text=""></asp:Label>
                                            </td>
                                        </tr>
                                         <tr>
                                            <td class="text-right" style="width: 230px">
                                               
                                            </td>
                                            <td>
                                                <asp:Button ID="Button1" runat="server" Text="Reservar" OnClick="Button1_Click" />
                                            </td>
                                            <td>
                                            </td>
                                        </tr>
                                        
									</div>
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

