<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="createAccount.aspx.cs" Inherits="Vuelos.createAccount" %>

<!DOCTYPE html>

<!--[if gt IE 8]><!--> <html class="no-js" lang=""> <!--<![endif]-->
<head>
    <meta charset="utf-8">
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
	<div class="auto-style7" ">
    <div class="sufee-login d-flex align-content-center flex-wrap">
        <div class="container">
            <div class="login-content">
                <div class="login-logo">                    
                </div>
                <div class="login-form">
                    <form runat ="server">					
						<div class = "register-link m-t-15 text-center"">
						<img src = "images/logo.png"></img>
						</div>
                        <div class="form-group">
                            <label>Nombre</label>
                            <asp:TextBox ID="txtNombre" runat="server" CssClass ="input50" type = "text"  Width="480px" ></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label>Primer Apellido</label>
                            <asp:TextBox ID="txtApellido1" runat="server" CssClass ="input50" type = "text"  Width="480px" ></asp:TextBox>
                        </div>
						<div class="form-group">
                            <label>Segundo Apellido</label>
                            <asp:TextBox ID="txtApellido2" runat="server" CssClass ="input50" type = "text"  Width="480px" ></asp:TextBox>
                        </div>
						<div class="form-group">
                            <label>Correo electrónico</label>
                            <asp:TextBox ID="txtCorreo" runat="server" CssClass ="input50" type = "text"  Width="480px" ></asp:TextBox>
                        </div>
						<div class="form-group">
                            <label>Nombre de usuario</label>
                            <asp:TextBox ID="txtNombreUsuario" runat="server" CssClass ="input50" type = "text"  Width="480px" ></asp:TextBox>
							<div class="checkbox">                           
                            <label class="pull-right">

                            <asp:Button ID="btnVerificar" runat="server" Text="Verificar Usuario" BackColor="White" ForeColor="#0066FF" Height="29px" Width="133px" />
							</label>
                        </div>
                        </div>
						<div class="form-group">
                            <label>Contraseña</label>
                            <asp:TextBox ID="txtPassword" runat="server" CssClass ="input50" type = "password"  Width="480px" ></asp:TextBox>
                        </div>                        
                        <asp:Button ID="btnCrear" runat="server" href="#" class="login100-form-btn" Text="CREAR CUENTA" BackColor="#009933" ForeColor="White" Height="51px" Width="480px" OnClick="btnCrear_Click" /></asp:Button>
                        <div class="social-login-content">                            
                        </div>                       
						<div class = "register-link m-t-15 text-center"">
						<a class="primary-btn " href="index.aspx">Volver a inicio</a>
						</div>
                    </form>
                </div>		
            </div>
        </div>
    </div>
	</div>


    <script src="assets/js/vendor/jquery-2.1.4.min.js"></script>
    <script src="assets/js/popper.min.js"></script>
    <script src="assets/js/plugins.js"></script>
    <script src="assets/js/main.js"></script>


</body>
</html>
