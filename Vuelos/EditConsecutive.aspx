<%@ Page Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="EditConsecutive.aspx.cs" Inherits="Vuelos.EditConsecutive" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <!-- start banner Area -->
    <section class="banner-area relative about-banner" id="home">
        <div class="overlay overlay-bg"></div>
        <div class="container">
            <div class="row d-flex align-items-center justify-content-center">
                <div class="about-content col-lg-12">
                    <h1 class="text-white">Editar Consecutivos</h1>
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
                        <h1 class="mb-10">Llene cada uno de los campos que desee editar</h1>
                        <div class="animated fadeIn">
                            <div class="row">

                                <div class="card-body card-block">
                                    <form method="post" enctype="multipart/form-data" class="form-horizontal">
                                        <div class="row form-group">
                                            <div class="col col-md-3">
                                                <asp:Label ID="lbl_consecutivo" runat="server" Text="Consecutivo" for="text-input" class=" form-control-label"></asp:Label>
                                            </div>
                                            <div class="col-12 col-md-9">
                                                <asp:TextBox type="text" ID="txt_consecutivo" class="form-control" runat="server"></asp:TextBox>
                                                <small class="form-text text-muted">Texto de ayuda</small>
                                            </div>
                                        </div>
                                        <div class="row form-group">
                                            <div class="col col-md-3">
                                                <asp:Label ID="lbl_prefi" runat="server" Text="Posee Prefijos" class=" form-control-label"></asp:Label>
                                            </div>
                                            <div class="col col-md-9">
                                                <div class="form-check">
                                                    <div class="checkbox">
                                                        <asp:Label ID="lbl_checkprefijo" runat="server" for="checkbox1" class="form-check-label ">
                                                            <input type="checkbox" id="checkbox1" name="checkbox1" value="option1" class="form-check-input" runat="server" />Si
                                            </asp:Label>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row form-group">
                                            <div class="col col-md-3">
                                                <asp:Label ID="lbl_prefijo" runat="server" Text="Prefijo" class=" form-control-label"></asp:Label>
                                            </div>
                                            <div class="col-12 col-md-9">
                                                <asp:TextBox ID="txtbox_prefiInput" runat="server" class="form-control"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="row form-group">
                                            <div class="col col-md-3">
                                                <asp:Label ID="lbl_poseeRango" runat="server" Text="Posee Rango" class=" form-control-label"></asp:Label>
                                            </div>
                                            <div class="col col-md-9">
                                                <div class="form-check">
                                                    <div class="checkbox">
                                                        <asp:Label ID="lbl_checkbox2" runat="server" class="form-check-label " for="checkbox2">
                                                            <input type="checkbox" id="checkbox2" name="checkbox2" value="option1" class="form-check-input" runat="server" />Si
                                            </asp:Label>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row form-group">
                                            <div class="col col-md-3">
                                                <asp:Label ID="lbl_rangoInicial" runat="server" Text="Rango Inicial" class=" form-control-label" runat="server"></asp:Label>
                                            </div>
                                            <div class="col-12 col-md-9">
                                                <asp:TextBox type="text" ID="rangoI_Input" class="form-control" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="row form-group">
                                            <div class="col col-md-3">
                                                <asp:Label ID="lbl_rangoFinal" runat="server" Text="Rango Final" class=" form-control-label"></asp:Label>
                                            </div>
                                            <div class="col-12 col-md-9">
                                                <asp:TextBox ID="rangoF_Input" runat="server" class="form-control"></asp:TextBox>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                                <div class="card-footer">
                                    <asp:LinkButton ID="btn_actualizar" runat="server" class="btn btn-primary btn-sm"> <!--OnClick="btn_actualizar_Click"-->
                            <i class="fa fa-dot-circle-o"></i>Actualizar
                        </asp:LinkButton>
                                    <asp:LinkButton ID="btn_cancelar" runat="server" class="btn btn-danger btn-sm">
                            <i class="fa fa-ban"></i>Cancelar
                        </asp:LinkButton>
                                    <div class="register-link m-t-15 text-center">
                                        <%--<a class="primary-btn " href="consecutivo.html">Volver a consecutivos</a>--%>
                                        <asp:Button ID="btn_regresaConsec" runat="server" Text="Volver a consecutivos" class="primary-btn " />
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

