<%@ Page Title="" Language="C#" MasterPageFile="~/site/admin/Admin_home.Master" AutoEventWireup="true" CodeBehind="mod_menu.aspx.cs" Inherits="ARAcademy.site.admin.mod_menu" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="row" style="margin:5%">

        <%--MATERIA--%>

              <!--Grid column-->

              <div class="col-md-6 mb-4">
      

                <!-- Card -->
                <div class="card gradient-card">

                    <div class="card-image" style="background-color:#00194f; height:300px !important; border-radius:3px;background-image: url('../home/images/Subject_add.png'); background-repeat: no-repeat; background-position:center;">

                      <!-- Content -->
                      <a href="/site/admin/adm_course/add_mat.aspx">
                        <div class="text-white d-flex h-100 mask blue-gradient-rgba">
                          <div class="first-content align-self-center p-3">
                          </div>
                          <div class="second-content align-self-center mx-auto text-center">
                            <i class="far fa-money-bill-alt fa-3x"></i>
                          </div>
                        </div>
                      </a>

                    </div>

                    <!-- Data -->
                    <div class="third-content ml-auto mr-4 mb-2" style="margin: 5% !important">
                      <div class="row">
                        <h4 class="font-weight-bold float-left"> Crear Curso </h4>
                      </div>
                      <div class="row">
                        <p class="text-muted">Creación de cursos en el sistema</p>
                      </div>
                    </div>

                </div>
                <!-- Card -->

              </div>
              <!--Grid column-->

                      <!--Grid column-->
              <div class="col-md-6 mb-4">

                <!-- Card -->
                <div class="card gradient-card">

                    <div class="card-image" style="background-color:#00194f; height:300px !important; border-radius:3px;background-image: url('../home/images/List_Prof.png'); background-repeat: no-repeat; background-position:center;">

                      <!-- Content -->
                      <a href="/site/admin/adm_course/list_mat.aspx">
                        <div class="text-white d-flex h-100 mask blue-gradient-rgba">
                          <div class="first-content align-self-center p-3">
                          </div>
                          <div class="second-content align-self-center mx-auto text-center">
                            <i class="far fa-money-bill-alt fa-3x"></i>
                          </div>
                        </div>
                      </a>

                    </div>

                    <!-- Data -->
                    <div class="third-content ml-auto mr-4 mb-2" style="margin: 5% !important">
                      <div class="row">
                        <h4 class="font-weight-bold float-left"> Listado de Cursos </h4>
                      </div>
                      <div class="row">
                        <p class="text-muted">Visualización de listado de cursos.</p>
                      </div>
                    </div>

                </div>
                <!-- Card -->

              </div>
              <!--Grid column-->
        
            <%--MÓDULO--%>

              <!--Grid column-->
              <div class="col-md-6 mb-4">

                <!-- Card -->
                <div class="card gradient-card">

                    <div class="card-image" style="background-color:#00194f; height:300px !important; border-radius:3px; background-image: url('../home/images/Module_Add.png'); background-repeat: no-repeat; background-position:center;">

                      <!-- Content -->
                      <a href="/site/admin/adm_module/add_mod.aspx">
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
                        <h4 class="font-weight-bold float-left"> Crear Módulo </h4>
                      </div>
                      <div class="row">
                        <p class="text-muted">Creación de módulos en el sistema.</p>
                      </div>
                    </div>

                </div>
                <!-- Card -->

              </div>
              <!--Grid column-->

               <!--Grid column-->
              <div class="col-md-6 mb-4">

                <!-- Card -->
                <div class="card gradient-card">

                    <div class="card-image" style="background-color:#00194f; height:300px !important; border-radius:3px; background-image: url('../home/images/List_Prof.png'); background-repeat: no-repeat; background-position:center;">

                      <!-- Content -->
                      <a href="/site/admin/adm_module/list_mod.aspx">
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
                        <h4 class="font-weight-bold float-left"> Lista de Módulos </h4>
                      </div>
                      <div class="row">
                        <p class="text-muted">Visualización de listado de módulos.</p>
                      </div>
                    </div>

                </div>
                <!-- Card -->

              </div>
              <!--Grid column-->



        <%--TOPICO--%>

              <!--Grid column-->
              <div class="col-md-6 mb-4">

                <!-- Card -->
                <div class="card gradient-card">

                    <div class="card-image" style="background-color:#00194f; height:300px !important; border-radius:3px;background-image: url('../home/images/Topic_add.png'); background-repeat: no-repeat; background-position:center;">

                      <!-- Content -->
                      <a href="/site/admin/adm_topic/add_top.aspx">
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
                        <h4 class="font-weight-bold float-left"> Topicos </h4>
                      </div>
                      <div class="row">
                        <p class="text-muted">Creación de tópicos en el sistema.</p>
                      </div>
                    </div>

                </div>
                <!-- Card -->

              </div>
              <!--Grid column-->
              

            <!--Grid column-->
              <div class="col-md-6 mb-4">

                <!-- Card -->
                <div class="card gradient-card">

                    <div class="card-image" style="background-color:#00194f; height:300px !important; border-radius:3px;background-image: url('../home/images/List_Prof.png'); background-repeat: no-repeat; background-position:center;">

                      <!-- Content -->
                      <a href="/site/admin/adm_topic/list_top.aspx">
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
                        <h4 class="font-weight-bold float-left"> Lista de Tópicos </h4>
                      </div>
                      <div class="row">
                        <p class="text-muted">Visualización de listado de tópicos.</p>
                      </div>
                    </div>

                </div>
                <!-- Card -->

              </div>
              <!--Grid column-->





        <!--Grid column-->
  <div class="col-md-6 mb-4">

    <!-- Card -->
    <div class="card gradient-card">

        <div class="card-image" style="background-color:#00194f; height:300px !important; border-radius:3px;background-image: url('../home/images/Material_add.png'); background-repeat: no-repeat; background-position:center;">

          <!-- Content -->
          <a href="/site/admin/adm_content/add_content.aspx">
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
            <h4 class="font-weight-bold float-left">Creación de material academico </h4>
          </div>
          <div class="row">
            <p class="text-muted">Gestión del material asociado a tópicos, esta sección permitirá cargar el material propio de cada clase.</p>
          </div>
        </div>

    </div>
    <!-- Card -->

  </div>
  <!--Grid column-->

        
        <!--Grid column-->
  <div class="col-md-6 mb-4">

    <!-- Card -->
    <div class="card gradient-card">

        <div class="card-image" style="background-color:#00194f; height:300px !important; border-radius:3px;background-image: url('../home/images/Material_add.png'); background-repeat: no-repeat; background-position:center;">

          <!-- Content -->
          <a href="/site/admin/adm_content/list_content.aspx">
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
            <h4 class="font-weight-bold float-left">Visualización de material academico </h4>
          </div>
          <div class="row">
            <p class="text-muted">Gestión del material asociado a tópicos, esta sección permitirá cargar el material propio de cada clase.</p>
          </div>
        </div>

    </div>
    <!-- Card -->

  </div>
  <!--Grid column-->
</div>

    <script>
var acc = document.getElementsByClassName("accordion");
var i;

for (i = 0; i < acc.length; i++) {
  acc[i].addEventListener("click", function() {
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
