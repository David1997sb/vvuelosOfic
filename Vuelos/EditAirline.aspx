<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EditAirline.aspx.cs" Inherits="Vuelos.EditAirline" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>V-Vuelos</title>
    <meta name="description" content="Sufee Admin - HTML5 Admin Template">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="apple-touch-icon" href="apple-icon.png">
    <link rel="shortcut icon" href="favicon.ico">

    <link rel="stylesheet" href="assets/css/normalize.css">
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/font-awesome.min.css">
    <link rel="stylesheet" href="assets/css/themify-icons.css">
    <link rel="stylesheet" href="assets/css/flag-icon.min.css">
    <link rel="stylesheet" href="assets/css/cs-skin-elastic.css">
    <!-- <link rel="stylesheet" href="assets/css/bootstrap-select.less"> -->
    <link rel="stylesheet" href="assets/scss/style.css">

    <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,600,700,800' rel='stylesheet' type='text/css'>

    <!-- <script type="text/javascript" src="https://cdn.jsdelivr.net/html5shiv/3.7.3/html5shiv.min.js"></script> -->
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="col-lg-6">
                <div class="card">
                    <div class="card-header">
                        <div class="register-link m-t-15 text-center">
                            <img src="images/logo.png"></img>
                        </div>
                        <h2>Editar Aerolineas</h2>

                    </div>

                    <div class="card-body card-block">
                        <form method="post" enctype="multipart/form-data" class="form-horizontal">

                            <div class="row form-group">
                                <div class="col col-md-3">
                                    <asp:Label ID="lbl_desc" runat="server" Text="Codigo Aerolinea" for="select" class=" form-control-label"></asp:Label>
                                </div>
                                <div class="col-12 col-md-9">
                                    <asp:TextBox ID="txt_codAerolinea" class="form-control" runat="server"></asp:TextBox>
                                </div>

                                <div class="col col-md-3">
                                    <asp:Label ID="Label1" runat="server" Text="Nombre Agencia" for="select" class=" form-control-label"></asp:Label>
                                </div>
                                <div class="col-12 col-md-9">
                                    <asp:TextBox ID="txt_nombreAgencia" class="form-control" runat="server"></asp:TextBox>
                                </div>

                                <div class="col col-md-3">
                                    <asp:Label ID="Label2" runat="server" Text="Imagen Agencia" for="select" class=" form-control-label"></asp:Label>
                                </div>
                                <div class="col-12 col-md-9">
                                    <asp:FileUpload ID="fp_imagen" runat="server" />
                                </div>
                            </div>
                        </form>
                    </div>
                    <div class="card-footer">
                        <asp:LinkButton ID="btn_aceptar" runat="server" class="btn btn-primary btn-sm" OnClick="btn_aceptar_Click">
                            <i class="fa fa-dot-circle-o"></i>Aceptar
                        </asp:LinkButton>
                        <asp:LinkButton ID="btn_borrar" runat="server" class="btn btn-primary btn-sm" OnClick="btn_borrar_Click">
                            <i class="fa fa-dot-circle-o"></i>Borrar
                        </asp:LinkButton>
                        <asp:LinkButton ID="btn_cerrar" runat="server" class="btn btn-danger btn-sm">
                            <i class="fa fa-ban"></i>Cerrar
                        </asp:LinkButton>
                        <div class="register-link m-t-15 text-center">
                            <%--<a class="primary-btn " href="consecutivo.html">Volver a consecutivos</a>--%>
                            <asp:Button ID="btn_regresaPaises" runat="server" Text="Volver a Aerolineas" class="primary-btn " />
                        </div>
                    </div>
                </div>
            </div>
    </form>
</body>
</html>

