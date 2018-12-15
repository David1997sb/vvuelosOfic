<%@ Page Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Airlines.aspx.cs" Inherits="Vuelos.Airlines" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <!-- start banner Area -->
    <section class="banner-area relative about-banner" id="home">
        <div class="overlay overlay-bg"></div>
        <div class="container">
            <div class="row d-flex align-items-center justify-content-center">
                <div class="about-content col-lg-12">
                    <h1 class="text-white">Aerolineas	
							</h1>
                    <p class="text-white link-nav"><a href="index">Inicio</a> <span class="lnr lnr-arrow-right"></span><a href="Airlines">Aerolineas</a></p>
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
                        <h1 class="mb-10">Explore nuestra lista de aerolineas asociadas</h1>
                        <div class="animated fadeIn">
                            <div class="row">

                                <div class="col-md-12">
                                    <div class="card">
                                        <div class="card-body">
                                            <div id="bootstrap-data-table_wrapper" class="dataTables_wrapper container-fluid dt-bootstrap4 no-footer">
                                                <div class="col-sm-12 col-md-6">
                                                    <div id="bootstrap-data-table_filter" class="dataTables_filter">
                                                        <label>
                                                            Buscar por país:				 
                                                            <input type="search" class="form-control form-control-sm" placeholder="" aria-controls="bootstrap-data-table">
                                                        </label>
                                                    </div>
													 </div>
                      <asp:GridView ID="GridView1" runat="server" Width="650px" runnat="server" AutoGenerateColumns="False" AutoGenerateSelectButton="True" DataKeyNames="consecutivo" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                          <Columns>
                              
                              <asp:BoundField DataField="consecutivo" HeaderText="consecutivo" ReadOnly="True" SortExpression="consecutivo" />
                              <asp:BoundField DataField="codigo_aerolinea" HeaderText="codigo_aerolinea" SortExpression="codigo_aerolinea" />
                              <asp:BoundField DataField="nombre_agencia" HeaderText="nombre_agencia" SortExpression="nombre_agencia" />
                              <asp:BoundField DataField="imagen_agencia" HeaderText="imagen_agencia" SortExpression="imagen_agencia" />
                              
                          </Columns>
                          <HeaderStyle BackColor="#003366" ForeColor="White" />
                      </asp:GridView>
				      <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ServiciosWebConnectionString %>" SelectCommand="sp_airlines" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
				  </div>
                                            </div>
                                            <div>
                                                <asp:Button ID="Button1" runat="server" Text="Nuevo" OnClick="Button1_Click1" />
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


