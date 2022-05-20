<%@ Page Title="" Language="C#" MasterPageFile="~/site/admin/Admin_home.Master" AutoEventWireup="true" CodeBehind="adm_offerts.aspx.cs" Inherits="ARAcademy.site.admin.adm_offert.adm_offerts" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

        <div class="row" style="width: 100%;">
            <div class="col-4" style="text-align:center; background: #00194f; border-radius: 5px">
                <label style="color:white">Ofertas</label>
            </div>
        </div>

        <div class="row" style="margin:5%">

        <%--OFERTAS--%>

              <!--Grid column-->
              <div class="col-md-12 mb-4">
                <!-- Card -->
                <div class="card gradient-card">
                    <!-- Data -->
                     <a href="Create_offert.aspx">
                        <div class="third-content ml-auto mr-4 mb-2" style="margin-left: 5% !important; margin-right: 5% !important; margin-top: 2% !important">
                          <div class="row">
                            <h4 class="font-weight-bold float-left"> Creación de Ofertas </h4>
                          </div>
                          <div class="row">
                            <p class="text-muted"> Crear las multiples ofertas de la plataforma. </p>
                          </div>
                        </div>
                     </a>
                </div>
                <!-- Card -->
              </div>
              <!--Grid column-->

              <!--Grid column-->
              <div class="col-md-12 mb-4">
                <!-- Card -->
                <div class="card gradient-card">
                    <!-- Data -->
                     <a href="List_offert.aspx">
                        <div class="third-content ml-auto mr-4 mb-2" style="margin-left: 5% !important; margin-right: 5% !important; margin-top: 2% !important">
                          <div class="row">
                            <h4 class="font-weight-bold float-left"> Listado de ofertas </h4>
                          </div>
                          <div class="row">
                            <p class="text-muted"> Listado de ofertas creados en la plataforma.</p>
                          </div>
                        </div>
                     </a>
                </div>
                <!-- Card -->
              </div>
              <!--Grid column-->

</div>
</asp:Content>
