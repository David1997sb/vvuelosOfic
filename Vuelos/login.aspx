﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Vuelos.login" %>
<%@ Register TagPrefix="recaptcha" Namespace="Recaptcha" Assembly="Recaptcha" %>  

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<<head>
    <script src="https://www.google.com/recaptcha/api.js" async defer></script>
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
<body runat = "server">
    <div id="fb-root"></div>

								<%-- Script Facebook --%>
								<script>(function (d, s, id) {
										var js, fjs = d.getElementsByTagName(s)[0];
										if (d.getElementById(id)) return;
										js = d.createElement(s); js.id = id;
										js.src = 'https://connect.facebook.net/es_ES/sdk.js#xfbml=1&version=v3.2&appId=317457722197948&autoLogAppEvents=1';
										fjs.parentNode.insertBefore(js, fjs);
									}(document, 'script', 'facebook-jssdk'));</script>
								<%---------------------%>
                           
	<div class="auto-style7" ">
    <div class="sufee-login d-flex align-content-center flex-wrap">
        <div class="container">
            <div class="login-content">
                <div class="login-logo">                    
                </div>
                <div class="login-form">
                    <form id="form1" runat="server">
						<div class = "register-link m-t-15 text-center"">
						<img src = "images/logo.png"></img>
						</div>
                        <div class="form-group">
                            <label>Usuario</label>
                            <asp:TextBox ID="txtUser" runat="server" CssClass ="input50" type = "text"  Width="480px" ></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <label>Contraseña</label>

                            <asp:TextBox ID="txtPassword" runat="server" CssClass ="input50" type = "password"  Width="480px" ></asp:TextBox>
                        </div>
                        <div class="checkbox">                           
                            <label class="pull-right">
                                <a href="cambiaContrasena.aspx">Olvidó su contraseña?</a>
                            </label>

                            <asp:Label ID="lblError" runat="server" ForeColor="Red"></asp:Label>
                        </div>
                        <div class="g-recaptcha" data-sitekey="6Le3gX8UAAAAAChw78Q5MdAREjlE8tJsKgjMxeLc"></div>
                        <asp:Button ID="btnLogin" runat="server" href="index.aspx" class="login100-form-btn" Text="INICIAR SESIÓN" BackColor="#009933" ForeColor="White" Height="51px" Width="480px" OnClick="btnLogin_Click"/></asp:Button>
                        <div class="social-button">
                                    <%--<asp:Button ID="btnFacebook" runat="server" href="#" class="login100-form-btn" Text="INICIAR SESIÓN CON FACEBOOK" BackColor="#003399" ForeColor="White" Height="51px" Width="480px" /></asp:Button>--%>
                                    <%-----------Boton Facebook----------%>
                                    <div class="fb-login-button" data-width="480" data-max-rows="1"  data-size="large" data-button-type="login_with" data-show-faces="false" data-auto-logout-link="true" data-use-continue-as="false" aria-orientation="horizontal"></div>
                                    <script>
                                        function checkLoginState() {
                                            FB.getLoginStatus(function (response) {
                                                statusChangeCallback(response);
                                            });
                                        }
                                    </script>
                                    <%-----------------------------------%>
                                    <asp:Button ID="btnTwitter" runat="server" href="#" class="login100-form-btn" Text="INICIAR SESIÓN CON TWITTER" BackColor="#0099FF" ForeColor="White" Height="51px" Width="480px" /></asp:Button>                         
                                </div>z
                        </div>
                        <div class="register-link m-t-15 text-center">						
                            <p>No tiene una cuenta?<a href="createAccount.aspx"> Registrese aquí</a></p>
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