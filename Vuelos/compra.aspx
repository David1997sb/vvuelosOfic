<%@ Page Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="compra.aspx.cs" Inherits="Vuelos.compra" %>

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
                                                <asp:Label ID="Label1" runat="server" Text="Destino"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                                            </td>
                                            <td>&nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td class="text-right" style="width: 230px">
                                                <asp:Label ID="Label2" runat="server" Text="Cantidad de boletos"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="txt_cantBol" runat="server"></asp:TextBox>
                                            </td>
                                            <td>&nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td class="text-right" style="width: 230px">
                                                <asp:Label ID="Label4" runat="server" Text="Total"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                                            </td>
                                            <td>
                                                <asp:Label ID="txt_total" runat="server" Text=""></asp:Label>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="text-right" style="width: 230px">&nbsp;</td>
                                            <td>
                                                <asp:CheckBox ID="CheckBox_TarjetasUsuario" runat="server" Text="Tarjetas actuales" AutoPostBack="true" />
                                            </td>
                                            <td>&nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td class="text-right" style="width: 230px">&nbsp;</td>
                                            <td>
                                                <asp:CheckBox ID="CheckBox1" runat="server" Text="Nueva tarjeta" AutoPostBack="true" />
                                            </td>
                                            <td>&nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td style="width: 230px">&nbsp;</td>
                                            <td>
                                                <asp:DropDownList ID="DropDownList1" runat="server" TabIndex="7" CssClass="btn btn-secondary dropdown-toggle" data-toggle="dropdown">
                                                    <asp:ListItem Selected="True" class="dropdown-item">Selccione la tarjeta</asp:ListItem>
                                                </asp:DropDownList>
                                            </td>
                                            <td>&nbsp;</td>
                                        </tr>
                                        <div id="myDIV" runat="server">
										<tr>
										
										    <td style="width: 230px">&nbsp;</td>
                                            <td>
                                                <asp:DropDownList ID="dropdown" runat="server" TabIndex="7" CssClass="btn btn-secondary dropdown-toggle" data-toggle="dropdown">
                                                    <asp:ListItem Selected="True" class="dropdown-item">Selccion el tipo de tarjeta</asp:ListItem>
                                                    <asp:ListItem class="dropdown-item">Visa</asp:ListItem>
                                                    <asp:ListItem class="dropdown-item">Mastercard</asp:ListItem>
                                                </asp:DropDownList>
												 <asp:DropDownList ID="DropDownList2" runat="server" TabIndex="7" CssClass="btn btn-secondary dropdown-toggle" data-toggle="dropdown"> 
												</asp:DropDownList>
                                            </td>
                                            <td>&nbsp;</td>
                                        </tr>
										</div>
                                        <div  id="div2" runat="server">
                                        <tr>
                                            <td class="text-right" style="width: 230px">
                                                <asp:Label ID="Label3" runat="server" Text="Numero Tarjeta"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="txt_numTarjeta" runat="server"></asp:TextBox>
                                            </td>
                                            <td>&nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td class="text-right" style="width: 230px">
                                                <asp:Label ID="Label5" runat="server" Text="CCV"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="txt_ccv" runat="server"></asp:TextBox>
                                            </td>
                                            <td>&nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td class="text-right" style="width: 230px">
                                                <asp:Label ID="Label6" runat="server" Text="Mes de expiración"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="txt_mesExp" runat="server"></asp:TextBox>
                                            </td>
                                            <td>&nbsp;</td>
                                        </tr>
                                             <tr>
                                            <td class="text-right" style="width: 230px">
                                                <asp:Label ID="Label8" runat="server" Text="Año de expiración"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="txt_anoExp" runat="server"></asp:TextBox>
                                            </td>
                                            <td>&nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td class="text-right" style="width: 230px">
                                                <asp:Label ID="Label7" runat="server" Text="Número de tarjeta"></asp:Label>
                                            </td>
                                            <td>
                                                <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                                            </td>
                                            <td>&nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td style="width: 230px">&nbsp;</td>
                                            <td>
                                                <asp:DropDownList ID="tipoTarjeta" runat="server" TabIndex="7" CssClass="btn btn-secondary dropdown-toggle" data-toggle="dropdown">
                                                    <asp:ListItem Selected="True" class="dropdown-item">Seleccione el tipo de tarjeta</asp:ListItem>
                                                    <asp:ListItem class="dropdown-item" ID="aero">Credito</asp:ListItem>
                                                    <asp:ListItem class="dropdown-item" id="puerta">Debito</asp:ListItem>
                                                </asp:DropDownList>
                                            </td>
                                            <td>&nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td style="width: 230px">&nbsp;</td>
                                            <td>
                                                <asp:CheckBox ID="CheckBox2" runat="server" Text="Desea guardar esta tarjeta?" /></td>
                                            <td>&nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td style="width: 230px">&nbsp;</td>
                                            <td>
                                                <asp:Button ID="Button1" runat="server" Text="Comprar" OnClick="Button1_Click" /></td>
                                            <td>&nbsp;</td>
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

