<%@ Page Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Countries.aspx.cs" Inherits="Vuelos.Countries" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <!-- start banner Area -->
    <section class="banner-area relative about-banner" id="home">
        <div class="overlay overlay-bg"></div>
        <div class="container">
            <div class="row d-flex align-items-center justify-content-center">
                <div class="about-content col-lg-12">
                    <h1 class="text-white">Paises	
							</h1>
                    <p class="text-white link-nav"><a href="index">Inicio</a> <span class="lnr lnr-arrow-right"></span><a href="Countries">Paises</a></p>
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
                        <h1 class="mb-10">Explore nuestra amplia lista de paises disponibles y escoja un destino.</h1>
                        <p>Sujeto a cambios.</p>
                        <div class="animated fadeIn">
                            <div class="row">

                                <div class="col-md-12">
                                    <div class="card">
                                        <div class="card-body">
                                            <div id="bootstrap-data-table_wrapper" class="dataTables_wrapper container-fluid dt-bootstrap4 no-footer">
                                                <div class="row">
                                                    <div class="col-sm-12 col-md-6">
                                                    </div>
                                                    <div class="col-sm-12 col-md-6">
                                                        <div id="bootstrap-data-table_filter" class="dataTables_filter">
                                                            <label>
                                                                Buscar por país:				 
                                                                <input type="search" class="form-control form-control-sm" placeholder="" aria-controls="bootstrap-data-table">
                                                            </label>
                                                        </div>
                                                    </div><asp:GridView ID="GridView1" runat="server" Width="532px" runnat="server" AutoGenerateColumns="False" AutoGenerateSelectButton="True" DataKeyNames="consecutivo" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" >
                         
                           <Columns>
                               <asp:BoundField DataField="consecutivo" HeaderText="consecutivo" ReadOnly="True" SortExpression="consecutivo" />
                               <asp:BoundField DataField="codigo_pais" HeaderText="codigo_pais" SortExpression="codigo_pais" />
                               <asp:BoundField DataField="nombre_pais" HeaderText="nombre_pais" SortExpression="nombre_pais" />
                               <asp:ImageField DataImageUrlField="ruta_imagen" HeaderText="Imagen">
                               </asp:ImageField>
                           </Columns>
                         
                          <HeaderStyle BackColor="#003366" ForeColor="White" />
                      </asp:GridView>
				      <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:vvuelosConnectionString %>" SelectCommand="sp_getPaises" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
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
        </div>
    </section>
    <!-- End description Area -->

</asp:Content>

