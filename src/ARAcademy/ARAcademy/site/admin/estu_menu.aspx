<%@ Page Title="" Language="C#" MasterPageFile="~/site/admin/Admin_home.Master" AutoEventWireup="true" CodeBehind="estu_menu.aspx.cs" Inherits="ARAcademy.site.admin.estu_menu" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!--Grid row-->
<div class="row" style="margin:5%">

  <!--Grid column-->
  <div class="col-md-6 mb-4">

    <!-- Card -->
    <div class="card gradient-card">

        <div class="card-image" style="background-color:#00194f; height:300px !important; border-radius:3px">

          <!-- Content -->
          <a href="#!">
            <div class="text-white d-flex h-100 mask purple-gradient-rgba" style="border-radius:5px">
              <div class="first-content align-self-center p-3">
              </div>
              <div class="second-content  align-self-center mx-auto text-center">
                <i class="fas fa-chart-line fa-3x"></i>
              </div>
            </div>
          </a>

        </div>

        <!-- Data -->
        <div class="third-content  ml-auto mr-4 mb-2" style="margin: 5% !important">
          <div class="row">
            <h4 class="font-weight-bold float-left">Listado de Estudiantes</h4>
          </div>
          <div class="row">
            <p class="text-muted">Modulo para la visualización de los estudiantes en el sistema</p>
          </div>
        </div>

    </div>
    <!-- Card -->

  </div>
  <!--Grid column-->


</div>
<!--Grid row-->
</asp:Content>

