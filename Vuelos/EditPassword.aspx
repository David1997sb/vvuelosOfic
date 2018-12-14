<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EditPassword.aspx.cs" Inherits="Vuelos.EditPassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="apple-touch-icon" href="apple-icon.png">
    <link rel="shortcut icon" href="favicon.ico">

    <link rel="stylesheet" href="assets/css/normalize.css">
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/font-awesome.min.css">
    <link rel="stylesheet" href="assets/css/themify-icons.css">
    <link rel="stylesheet" href="assets/css/flag-icon.min.css">
    <link rel="stylesheet" href="assets/css/cs-skin-elastic.css">
    <link rel="stylesheet" href="assets/scss/style.css">

    <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,600,700,800' rel='stylesheet' type='text/css'>

    <!-- <script type="text/javascript" src="https://cdn.jsdelivr.net/html5shiv/3.7.3/html5shiv.min.js"></script> -->

</head>
<body runat ="server">

    <div class="sufee-login d-flex align-content-center flex-wrap">
       
        <script>
        function setInter(){
            setInterval(function(){ alert("Hello"); }, 3000);
        }
        </script>
        <div class="container">
            <div class="login-content">
                <div class="login-form">
                    <form runat ="server">
						<div class = "register-link m-t-15 text-center"">
						<img src = "images/logo.png"></img>
						</div> 
                        <div class="form-group">
                            <label>Usuario</label>
                            <asp:TextBox ID="txtUsuario" runat="server" CssClass ="input50" type = "text"  Width="480px"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label>Nueva contraseña</label>
                            <asp:TextBox ID="txtPass" runat="server" CssClass ="input50" type = "text"  Width="480px"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label>Confirmar contraseña</label>
                            <asp:TextBox ID="txtConfirmarPass" runat="server" CssClass ="input50" type = "text"  Width="480px"></asp:TextBox>
                        </div>
                        <asp:Button ID="btnCambiaPass" runat="server" href="index.aspx" class="login100-form-btn" Text="CAMBIAR CONTRAEÑA" BackColor="#009933" ForeColor="White" Height="51px" Width="480px" OnClick="btnCambiaPass_Click" /></asp:Button>
                       <br/>
                       <br/>
						<div class = "register-link m-t-15 text-center"">
						<a class="primary-btn " href="login.aspx">Volver a Inicio de sesión</a>
						</div>   
                        </form>
						</div>
            </div>
        </div>
    </div>
</body>
</html>