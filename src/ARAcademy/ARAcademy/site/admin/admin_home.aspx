<%@ Page Title="" Language="C#" MasterPageFile="~/site/admin/Admin_home.Master" AutoEventWireup="true" CodeBehind="admin_home.aspx.cs" Inherits="ARAcademy.site.admin.admin_home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

<%--    <style>
    ul.navbar-nav li.active {
        background-color: red;
    }
    </style>--%>
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

        <div class="row" style="width: 100%;">
            <div class="col-4" style="text-align:center; background: #00194f; border-radius: 5px">
                <label style="color:white">Reportes Generales</label>
            </div>
        </div>

        <div class="row" style="margin:5%">

        <%--MATERIA--%>

              <!--Grid column-->
              <div class="col-md-12 mb-4">
                <!-- Card -->
                <div class="card gradient-card">
                    <!-- Data -->
                     <a href="adm_reports/ingresos.aspx">
                        <div class="third-content ml-auto mr-4 mb-2" style="margin-left: 5% !important; margin-right: 5% !important; margin-top: 2% !important">
                          <div class="row">
                            <h4 class="font-weight-bold float-left"> Reporte de Ingresos </h4>
                          </div>
                          <div class="row">
                            <p class="text-muted"> Reporte de ingresos en un período </p>
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
                     <a href="adm_reports/pago_est.aspx">
                        <div class="third-content ml-auto mr-4 mb-2" style="margin-left: 5% !important; margin-right: 5% !important; margin-top: 2% !important">
                          <div class="row">
                            <h4 class="font-weight-bold float-left"> Pago estudiantes por módulo </h4>
                          </div>
                          <div class="row">
                            <p class="text-muted"> Reporte de pago de estudiantes por módulo</p>
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
                     <a href="adm_reports/horas_prof.aspx">
                        <div class="third-content ml-auto mr-4 mb-2" style="margin-left: 5% !important; margin-right: 5% !important; margin-top: 2% !important">
                          <div class="row">
                            <h4 class="font-weight-bold float-left"> Reporte de horas por profesor </h4>
                          </div>
                          <div class="row">
                            <p class="text-muted"> Reporte de horas trabajadas por profesor </p>
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
                     <a href="adm_reports/pago_prof.aspx">
                        <div class="third-content ml-auto mr-4 mb-2" style="margin-left: 5% !important; margin-right: 5% !important; margin-top: 2% !important">
                          <div class="row">
                            <h4 class="font-weight-bold float-left"> Reporte para pago a profesores </h4>
                          </div>
                          <div class="row">
                            <p class="text-muted"> Reporte de horas para generación de pago</p>
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
                     <a href="adm_reports/cant_estu.aspx">
                        <div class="third-content ml-auto mr-4 mb-2" style="margin-left: 5% !important; margin-right: 5% !important; margin-top: 2% !important">
                          <div class="row">
                            <h4 class="font-weight-bold float-left"> Cantidad de estudiantes inscritos por módulo </h4>
                          </div>
                          <div class="row">
                            <p class="text-muted"> Reporte Cantidad de estudiantes inscritos por módulo</p>
                          </div>
                        </div>
                     </a>
                </div>
                <!-- Card -->
              </div>
              <!--Grid column-->

</div>

    <script>
        var acc = document.getElementsByClassName("accordion");
        var i;

        for (i = 0; i < acc.length; i++) {
            acc[i].addEventListener("click", function () {
                this.classList.toggle("active");
                var panel = this.nextElementSibling;
                if (panel.style.display === "block") {
                    panel.style.display = "none";
                } else {
                    panel.style.display = "block";
                }
            });
        }
    </script>
</asp:Content>
