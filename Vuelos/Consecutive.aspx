<%@ Page Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Consecutive.aspx.cs" Inherits="Vuelos.Consecutive" %>

	<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <!-- start banner Area -->
    <section class="banner-area relative about-banner" id="home">
        <div class="overlay overlay-bg"></div>
        <div class="container">
            <div class="row d-flex align-items-center justify-content-center">
                <div class="about-content col-lg-12">
                    <h1 class="text-white">Consecutivos	</h1>
                    <p class="text-white link-nav"><a href="#">Administrador</a> <span class="lnr lnr-arrow-right"></span><a href="Consecutive">Consecutivos</a></p>
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
                        <h1 class="mb-10">Administrar códigos de consecutivos</h1>
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

                                    <div class="card">
                                        <div class="card-body">
                                            <asp:GridView ID="GridView1" runat="server" Width="532px" runnat="server" AutoGenerateColumns="False" AutoGenerateSelectButton="True" DataKeyNames="id" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" DataSourceID="SqlDataSource1">
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
                                                <asp:Button ID="Button1" runat="server" Text="Nuevo" />	
                                            </div>
                                        </div>
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

