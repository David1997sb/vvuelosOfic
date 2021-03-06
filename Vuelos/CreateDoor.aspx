﻿<%@ Page Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="CreateDoor.aspx.cs" Inherits="Vuelos.CreateDoor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <!-- start banner Area -->
    <section class="banner-area relative about-banner" id="home">
        <div class="overlay overlay-bg"></div>
        <div class="container">
            <div class="row d-flex align-items-center justify-content-center">
                <div class="about-content col-lg-12">
                    <h1 class="text-white">Crear Aerolineas</h1>
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
                        <h1 class="mb-10">Llene cada espacio para crear una nueva aerolinea</h1>
                        <div class="animated fadeIn">
                            <div class="row">

                                <div class="card-body card-block">
                                    <form method="post" enctype="multipart/form-data" class="form-horizontal">
                                        <div class="row form-group">
                                            <div class="col col-md-3">
                                                <asp:Label ID="Label3" runat="server" Text="Cófigo Puerta" for="select" class=" form-control-label"></asp:Label>
                                            </div>
                                            <div class="col-12 col-md-9">
                                                <asp:TextBox ID="txt_consecutivo" class="form-control" runat="server"></asp:TextBox>
                                            </div>
                                            <div class="col col-md-3">
                                                <asp:Label ID="lbl_desc" runat="server" Text="Numero Puerta" for="select" class=" form-control-label"></asp:Label>
                                            </div>
                                            <div class="col-12 col-md-9">
                                                <asp:TextBox ID="txt_codPuerta" class="form-control" runat="server"></asp:TextBox>
                                            </div>
                                            <div class="col col-md-3">
                                                <asp:Label ID="Label1" runat="server" Text="Detalle" for="select" class=" form-control-label"></asp:Label>
                                            </div>
                                            <div class="col-12 col-md-9">
                                                <asp:TextBox ID="txt_detalle" class="form-control" runat="server"></asp:TextBox>
                                            </div>
                                            <div class="col col-md-3">
                                                <asp:Label ID="Label2" runat="server" Text="Tipo" for="select" class=" form-control-label"></asp:Label>
                                            </div>
                                            <div class="col-12 col-md-9">
                                                <asp:DropDownList ID="dropdown" runat="server" TabIndex="7" CssClass="btn btn-secondary dropdown-toggle" data-toggle="dropdown">
                                                    <asp:ListItem Selected="True" class="dropdown-item">Seleccione el tipo de puerta</asp:ListItem>
                                                    <asp:ListItem class="dropdown-item" ID="aero">Entrada</asp:ListItem>
                                                    <asp:ListItem class="dropdown-item" id="puerta">Salida</asp:ListItem>
                                                </asp:DropDownList>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                                <div class="card-footer">
                                    <asp:LinkButton ID="btn_aceptar" runat="server" class="btn btn-primary btn-sm" >
                            <i class="fa fa-dot-circle-o"></i>Aceptar
                        </asp:LinkButton>
                                    <asp:LinkButton ID="btn_borrar" runat="server" class="btn btn-primary btn-sm" OnClick="btn_borrar_Click" >
                            <i class="fa fa-dot-circle-o"></i>Borrar
                        </asp:LinkButton>
                                    <asp:LinkButton ID="btn_cerrar" runat="server" class="btn btn-danger btn-sm" OnClick="btn_cerrar_Click" >
                            <i class="fa fa-ban"></i>Cerrar
                        </asp:LinkButton>
                                    <div class="register-link m-t-15 text-center">
                                        <%--<a class="primary-btn " href="consecutivo.html">Volver a consecutivos</a>--%>
                                        <asp:Button ID="btn_regresaPaises" runat="server" Text="Volver a Aerolineas" class="primary-btn " />
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

