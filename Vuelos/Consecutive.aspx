<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Consecutive.aspx.cs" Inherits="Vuelos.Consecutive" %>

	<!DOCTYPE html>
	<html lang="zxx" class="no-js">
	<head>
		<!-- Mobile Specific Meta -->
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<!-- Favicon-->
		<link rel="shortcut icon" href="img/fav.png">
		<!-- Author Meta -->
		<meta name="author" content="colorlib">
		<!-- Meta Description -->
		<meta name="description" content="">
		<!-- Meta Keyword -->
		<meta name="keywords" content="">
		<!-- meta character set -->
		<meta charset="UTF-8">
		
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="description" content="Sufee Admin - HTML5 Admin Template">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		

		<!-- Site Title -->
		<title>V-Vuelos</title>
		
		<link href="https://fonts.googleapis.com/css?family=Poppins:100,200,400,300,500,600,700" rel="stylesheet"> 
			<!--
			CSS
			============================================= -->
			<link rel="stylesheet" href="assets/css/normalize.css">   
			<link rel="stylesheet" href="assets/css/normalize.css">
			<link rel="stylesheet" href="assets/css/bootstrap.min.css">
			<link rel="stylesheet" href="assets/css/font-awesome.min.css">
			<link rel="stylesheet" href="assets/css/themify-icons.css">
			<link rel="stylesheet" href="assets/css/flag-icon.min.css">
			<link rel="stylesheet" href="assets/css/cs-skin-elastic.css">
			<link rel="stylesheet" href="assets/css/lib/datatable/dataTables.bootstrap.min.css">
			<link rel="stylesheet" href="css/linearicons.css">
			<link rel="stylesheet" href="css/font-awesome.min.css">
			<link rel="stylesheet" href="css/bootstrap.css">
			<link rel="stylesheet" href="css/magnific-popup.css">
			<link rel="stylesheet" href="css/nice-select.css">							
			<link rel="stylesheet" href="css/animate.min.css">
			<link rel="stylesheet" href="css/owl.carousel.css">			
			<link rel="stylesheet" href="css/jquery-ui.css">			
			<link rel="stylesheet" href="css/main.css">
			<link rel="stylesheet" href="assets/scss/style.css">
			<link href='https://fonts.googleapis.com/css?family=Open+Sans:400,600,700,800' rel='stylesheet' type='text/css'>
		</head>
		<body>	
		  <header id="header" id="home">	  		
		    <div class="container main-menu">
		    	<div class="row align-items-center justify-content-between d-flex">
			      <div id="logo">
			        <a href="index.aspx"><img src="img/logo.png" alt="" title="" /></a>
			      </div>
			      <nav id="nav-menu-container">
			        <ul class="nav-menu">
			          <li><a href="index.aspx">Inicio</a></li>
			          <li><a href="paises.aspx">Paises</a></li>						  
			          <li><a href="aerolineas.aspx">Aerolineas</a></li>					  
					  <li class="menu-has-children"><a href="aeropuertos.aspx">Aeropuertos</a>
			            <ul>
		              		<li><a href="puertasAeropuerto.aspx">Puertas</a></li>		
			            </ul>
			          </li>						  
			          <li class="menu-has-children"><a href="">Administrador</a>
			            <ul>
		              		<li><a href="paises.aspx">Paises</a></li>		
		              		<li><a href="aerolineas.aspx">Aerolineas</a></li>									
		              		<li><a href="errores.aspx">Errores</a></li>		
		              		<li><a href="bitacora.aspx">Bitácora</a></li>		
			                <li><a href="consecutivo.aspx">Consecutivos</a></li>
							<li class="menu-has-children"><a href="">Aeropuertos</a>
					            <ul>
					              <li><a href="puertasAeropuerto.aspx">Puertas</a></li>
					            </ul>
					        </li>	
					        <li class="menu-has-children"><a href="">Usuarios</a>
					            <ul>
					              <li><a href="#">Crear usuario</a></li>
  					              <li><a href="usuarios.aspx">Ver lista de usuarios</a></li>
					            </ul>
					        </li>					                		
			            </ul>
			          </li>					          					          		          
			        </ul>
			      </nav><!-- #nav-menu-container -->		    		
		    	</div>
		    </div>
		  </header><!-- #header -->
			  
			<!-- start banner Area -->
			<section class="banner-area relative about-banner" id="home">	
				<div class="overlay overlay-bg"></div>
				<div class="container">				
					<div class="row d-flex align-items-center justify-content-center">
						<div class="about-content col-lg-12">
							<h1 class="text-white">
								Consecutivos	
							</h1>	
							<p class="text-white link-nav"><a href="#">Administrador</a> <span class="lnr lnr-arrow-right"></span>  <a href="consecutivo.aspx">Consecutivos</a></p>
						</div>	
					</div>
				</div>
			</section>
			<!-- End banner Area -->	

			<!-- Start popular-courses Area --> 
			<section class="popular-courses-area section-gap courses-page">
				<div class="container">
					<div class="row d-flex justify-content-center">
						<div class="menu-content pb-70 col-lg-8">
							<div class="title text-center">
								<h1 class="mb-10">Administrar códigos de consecutivos</h1>
								<p>Sujeto a cambios.</p>

            <div class="col-sm-8">                
                </div>
            </div>
            <div class="col-sm-8">
                <div class="page-header float-right">                  
                </div>
            </div>
			<div class="breadcrumbs">            
            <div class="content mt-3">
            <div class="animated fadeIn">
                <div class="row">

                    <form runat ="server">
                    <div class="card">                           
                        <div class="card-body">
                  				 
				      <asp:GridView ID="GridView1" runat="server" Width="532px" runnat="server" AutoGenerateColumns="False" AutoGenerateSelectButton="True" DataKeyNames="id" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                          <Columns>
                              <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" SortExpression="id" InsertVisible="False" />
                                <asp:BoundField DataField="consecutivo" HeaderText="consecutivo" SortExpression="consecutivo" />
                              <asp:BoundField DataField="prefijo" HeaderText="prefijo" SortExpression="prefijo" />
                              <asp:BoundField DataField="rango_inicial" HeaderText="rango_inicial" SortExpression="rango_inicial" />
                              <asp:BoundField DataField="rango_final" HeaderText="rango_final" SortExpression="rango_final" />
                          </Columns>
                          <HeaderStyle BackColor="#003366" ForeColor="White" />
                      </asp:GridView>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:vvuelosConnectionString %>" SelectCommand="sp_valores_consecutivo" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                       <div>
                          <asp:Button ID="Button1" runat="server" Text="Nuevo" OnClick="Button1_Click" />
                      </div>				  				 
                        </div>
                    </div>
                        </form>

                <div class="col-md-12">                    
                    


                </div>
				</div>
        </div>
		</div>				
        </div>        		
		</div>
							</div>								
						</div>		
			</section>

			<section class="cta-two-area">
				<div class="container">
					<div class="row">
						<div class="col-lg-8 cta-left">
							<h1>Inicie sesión para descubrir nuevas funciones.</h1>
						</div>
						<div class="col-lg-4 cta-right">
							<a class="primary-btn wh" href="login.aspx">Iniciar Sesión</a>
						</div>
					</div>
				</div>	
			</section>
			<!-- End cta-two Area -->
						
			<!-- start footer Area -->		
			<footer class="footer-area section-gap">
				<div class="container">					
					<div class="footer-bottom row align-items-center justify-content-between">
						<p class="footer-text m-0 col-lg-6 col-md-12"><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
							Copyright &copy;<script>document.write(new Date().getFullYear());</script> Todos los derechos reservados | Hecho con <i class="fa fa-heart-o" aria-hidden="true"></i> por estudiantes de <a href="http://www.ulacit.ac.cr/" target="_blank">ULACIT</a>. Producido por <a href="" target="_blank"> D.Salas, K.Araya</a> y  <a href="" target="_blank">A.Martinez.</a>						
							<div class="col-lg-6 col-sm-12 footer-social">
							<img src = "img/ulacit.png" 
						</div>
					</div>						
				</div>
			</footer>	
			<!-- End footer Area -->	


			<script src="js/vendor/jquery-2.2.4.min.js"></script>
			<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
			<script src="js/vendor/bootstrap.min.js"></script>			
			<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBhOdIF3Y9382fqJYt5I_sswSrEw5eihAA"></script>
  			<script src="js/easing.min.js"></script>			
			<script src="js/hoverIntent.js"></script>
			<script src="js/superfish.min.js"></script>	
			<script src="js/jquery.ajaxchimp.min.js"></script>
			<script src="js/jquery.magnific-popup.min.js"></script>	
    		<script src="js/jquery.tabs.min.js"></script>						
			<script src="js/jquery.nice-select.min.js"></script>	
			<script src="js/owl.carousel.min.js"></script>									
			<script src="js/mail-script.js"></script>	
			<script src="js/main.js"></script>	
		</body>
	</html>
