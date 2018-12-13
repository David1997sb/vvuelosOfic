<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CreateConsec.aspx.cs" Inherits="Vuelos.AddConsec" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
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
                        <h2>Crear Consecutivos</h2>
                    </div>

                    <div class="card-body card-block">
                        <form method="post" enctype="multipart/form-data" class="form-horizontal">
                                
                            <div class="row form-group">
                                <div class="col col-md-3">
                                    <asp:Label ID="lbl_desc" runat="server" Text="Descripción" for="select" class=" form-control-label"></asp:Label>
                                <asp:DropDownList ID="dropdown" runat="server" TabIndex="7" CssClass="btn btn-secondary dropdown-toggle" data-toggle="dropdown"> 
                                    <asp:ListItem Selected="True" class="dropdown-item">Selccion un tipo de consecutivo</asp:ListItem>
                                    <asp:ListItem class="dropdown-item" ID="aero">aerolinea</asp:ListItem>
                                    <asp:ListItem class="dropdown-item" id="puerta">puerta</asp:ListItem>
                                    <asp:ListItem class="dropdown-item" id="pais">pais</asp:ListItem>                                                                        
                                    
                                </asp:DropDownList>
                                </div>
                            </div>

                            <div class="row form-group">
                                <div class="col col-md-3">
                                    <asp:Label ID="lbl_consecutivo" runat="server" Text="Consecutivo" for="text-input" class=" form-control-label"></asp:Label>
                                </div>
                                <div class="col-12 col-md-9">
                                    <asp:TextBox ID="txt_consecutiv" runat="server" CssClass="form-control"></asp:TextBox>                                                                  
                                </div>
                            </div>
                            <div class="row form-group">
                                <div class="col col-md-3">
                                    <asp:Label ID="lbl_prefi" runat="server" Text="Posee Prefijos" class=" form-control-label"></asp:Label>
                                </div>
                                <div class="col col-md-9">
                                    <div class="form-check">
                                        <div class="checkbox">
                                            <asp:Label ID="lbl_checkprefijo" runat="server" for="checkbox1" class="form-check-label" AutoPostBack="True">
                                            </asp:Label>
                                                <asp:CheckBox ID="checkbox1" runat="server" class="form-check-input" Text="Sí" AutoPostBack="True" OnCheckedChanged="checkbox1_CheckedChanged" />
                                            <script type="text/javascript">
                                                function foo(){
                                                         var a = document.getElementById("txtbox_prefil").checked=true;
                                                }
                                               
                                            </script>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="row form-group">
                                <div class="col col-md-3">
                                    <asp:Label ID="lbl_prefijo" runat="server" Text="Prefijo" class=" form-control-label"></asp:Label>
                                </div>
                                <div class="col-12 col-md-9">
                                    <asp:TextBox ID="txtbox_prefil" runat="server" CssClass="form-control"></asp:TextBox>                                                                  
                                </div>
                            </div>

                            <div class="row form-group">
                                <div class="col col-md-3">
                                    <asp:Label ID="lbl_poseeRango" runat="server" Text="Posee Rango" class=" form-control-label"></asp:Label>
                                </div>
                                <div class="col col-md-9">
                                    <div class="form-check">
                                        <div class="checkbox">
                                            <asp:Label ID="lbl_checkbox2" runat="server" class="form-check-label " for="checkbox2"></asp:Label>
                                                <asp:CheckBox ID="checkbox2" runat="server" class="form-check-input" Text="Sí" OnCheckedChanged="checkbox2_CheckedChanged" AutoPostBack="True"/>                                                
                                           
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="row form-group">
                                <div class="col col-md-3">
                                    <asp:Label ID="lbl_rangoInicial" runat="server" Text="Rango Inicial" class=" form-control-label"></asp:Label>
                                </div>
                                <div class="col-12 col-md-9">
                                    <asp:TextBox ID="rangoI_Inpu" runat="server" CssClass="form-control"></asp:TextBox>                                                                  
                                </div>
                            </div>

                            <div class="row form-group">
                                <div class="col col-md-3">
                                    <asp:Label ID="lbl_rangoFinal" runat="server" Text="Rango Final" class=" form-control-label"></asp:Label>
                                </div>
                                <div class="col-12 col-md-9">
                                    <asp:TextBox ID="rangoF_Inpu" runat="server" CssClass="form-control"></asp:TextBox> 
                                </div>
                            </div>

                        </form>
                    </div>
                    <div class="card-footer">
                        <asp:LinkButton ID="btn_actualizar" runat="server" class="btn btn-primary btn-sm" OnClick="btn_actualizar_Click">
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
    </form>
</body>
</html>
