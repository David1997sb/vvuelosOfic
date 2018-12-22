<%@ Page Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="EditAirline.aspx.cs" Inherits="Vuelos.EditAirline" %>

	<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

		<!-- start banner Area -->
		<section class="banner-area relative about-banner" id="home">
			<div class="overlay overlay-bg"></div>
			<div class="container">
				<div class="row d-flex align-items-center justify-content-center">
					<div class="about-content col-lg-12">
						<h1 class="text-white">Editar Aerolineas</h1>
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
										<asp:LinkButton ID="btn_aceptar" runat="server" class="btn btn-primary btn-sm" OnClick="btn_aceptar_Click1" >
								<i class="fa fa-dot-circle-o"></i>Aceptar
							</asp:LinkButton>
										<asp:LinkButton ID="btn_borrar" runat="server" class="btn btn-primary btn-sm" OnClick="btn_borrar_Click1" >
								<i class="fa fa-dot-circle-o"></i>Borrar
							</asp:LinkButton>
										<asp:LinkButton ID="btn_cerrar" runat="server" class="btn btn-danger btn-sm" OnClick="btn_cerrar_Click">
								<i class="fa fa-ban"></i>Cerrar
							</asp:LinkButton>
										<div class="register-link m-t-15 text-center">
											<%--<a class="primary-btn " href="consecutivo.html">Volver a consecutivos</a>--%>
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

