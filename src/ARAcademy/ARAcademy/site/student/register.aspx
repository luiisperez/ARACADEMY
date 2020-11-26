<%@ Page Title="" Language="C#" MasterPageFile="~/site/admin/adminmanagement.Master" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="ARAcademy.site.student.register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <title>Inicio de sesión estudiante</title>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@7.12.15/dist/sweetalert2.all.min.js"></script>
	<link rel="stylesheet" type="text/css" href="css/fade.css">
    <link rel='stylesheet' href='https://cdn.jsdelivr.net/npm/sweetalert2@7.12.15/dist/sweetalert2.min.css'/>
    <link rel="stylesheet" type="text/css" href="css/main.css">
    <link rel="stylesheet" type="text/css" href="css/util.css">
    <link rel="stylesheet" href="fonts/icomoon/style.css">
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>
    <script src="sweetalert2.all.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/promise-polyfill"></script>
    <script src="sweetalert2.min.js"></script>
    <link rel="stylesheet" href="sweetalert2.min.css">
    <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
    <script src="https://unpkg.com/gijgo@1.9.13/js/gijgo.min.js" type="text/javascript"></script>
    <link href="https://unpkg.com/gijgo@1.9.13/css/gijgo.min.css" rel="stylesheet" type="text/css" />
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>
    <script src="sweetalert2.all.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/promise-polyfill"></script>
    <script src="sweetalert2.min.js"></script>
    <link rel="stylesheet" href="sweetalert2.min.css">
    <style>
        .input-group-append {
            display: none;
        }
    </style>

    <script>
        function errorSweetAlert(msg) {
            swal({
                title: msg,
                timer: 2000,
                showConfirmButton: false,
                type: 'error'  
            });
        }
        function alertme_succ() {
            Swal.fire({
                title: 'Usuario registrado exitosamente',
                width: 500,
                padding: '3em',
                imageUrl: "/site/home/images/Check_Mark.png",
                imageAlt: 'Custom image',
                background: '#fff ',
            }).
                then(function (result) {
                    if (result.value) {
                        window.location = "/site/student/login.aspx";
                    }
                })
        }
        function infoSweetAlert(msg) {
            swal({
                title: msg,
                timer: 4000,
                showConfirmButton: false,
                type: 'info'
            });
        }
        function alertme()
        {
            Swal.fire({
                title: 'Usuario o Contraseña invalido',
                width: 500,
                padding: '3em',
                background: '#fff ',
            })
        }
        
        function alertme_pwd() {
            Swal.fire({
                title: 'Las contraseñas no coinciden',
                width: 500,
                padding: '3em',
                imageUrl: "/site/home/images/Check_Mark.png",
                imageAlt: 'Custom image',
                background: '#fff ',
            })
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content" runat="server">
        <div class="site-wrap">
    <header class="site-navbar py-4 js-sticky-header site-navbar-target" style="position:relative; padding-bottom: 0px !important" role="banner">

      <div class="container" style="margin-bottom: 10px">
        <div class="row align-items-center justify-content-center">

          <div class="col-2">
            <h1 class=""><a href="../home/index.html"><img src="../home/images/Logo_Design_NB_Short.png" width="100" height="100" alt="ARAcademy"></a></h1>
          </div>

          <div class="col-10">
            <nav class="site-navigation position-relative text-right" role="navigation">
              
            </nav>

            <a href="#" class="d-inline-block d-lg-none site-menu-toggle js-menu-toggle float-right"><span class="icon-menu h3"></span></a>

          </div>
       
        </div>
      </div>
      
    </header>


	<div class="limiter" runat="server">

        <div class="container-login100">


                <div class="container_LogEst" id="container">

                    <div class="overlay-container_LogEst">
		                <div class="overlay_LogEst">

			                <div class="overlay-panel_LogEst overlay-right_LogEst">
                                <h3 style="color:#ffffff;font-weight:bold">¡Bienvenido de nuevo!</h3>
				                <p style="color:#ffffff">Si ya tienes cuenta, selecciona el botón de Iniciar Sesión y accede a tu aula ARAcademy.</p>
<%--				                <asp:button runat="server" CssClass="ghost_LogEst" Style="background-color:#00194f;color:white;width:65%;border-radius: 20px;" Text="Iniciar Sesión" id="Button1" PostBackUrl="~/site/student/register.aspx"/>--%>

                                	<a Class="ghost_LogEst" style="background-color:#00194f;color:white;width:65%;border-radius: 20px; padding: 12px 15px;" href="login.aspx"> Iniciar Sesión  </a>

			                </div>
		                </div>
	                </div>

	                <div class="form-container_LogEst sign-in-container_LogEst" >

                    <form runat="server">


		                <div class="form_edit" >
			                <h3 style="font-weight:bold">Crea tu cuenta</h3>
                            <div class="row">
                                <input id="name" runat="server" type="text" placeholder="Nombre" required="required" />
                                <input id="last_name" runat="server" type="text" placeholder="Apellido" required="required" />
			                    <input id="email" runat="server" type="email" placeholder="Email" required="required"  />
                                <input id="phone" runat="server" type="text" placeholder="Numero de Telefono" required="required" />
                            </div>
                            <div class="row">
                                <div class="col -6" style="padding: 0px; margin-right: 5px">
                                    <input id="password" runat="server" type="password" placeholder="Contraseña" required="required" />
                                </div>
                                <div class="col -6" style="padding: 0px; margin-right: 5px; ">
                                    <input id="conf_pwd" runat="server" type="password" placeholder="Confirmar Contraseña" required="required" />
                                </div>
                            </div>
                            <div class="row">
                                <div class="col -6" style="padding: 0px; margin-right: 5px">
                                    <input id="fec_nac" class="datepicker" placeholder="Fecha de Nacimiento" runat="server" style="background-color: #eee; border: none; padding: 27px 15px;margin: 8px 0; width: 100%;" required="required" />
                                    <script>
                                        $('.datepicker').datepicker({
                                            uiLibrary: 'bootstrap4'
                                        });
                                    </script>
                                </div>
                                <div class="col -6" style="padding: 0px; margin-left: 5px">
                                    <select id="grade_id" runat="server" class="form-control select2" style="background-color: #eee; padding: 0px 15px;margin: 8px 0; width:100%; border:none; height:80%" required="required">
	                                   <option value="1" > Primer Grado </option> 
	                                   <option value="2" > Segundo Grado </option> 
	                                   <option value="3" > Tercer Grado </option> 
	                                   <option value="4" > Cuarto Grado </option> 
	                                   <option value="5" > Quinto Grado </option> 
                                       <option value="6" > Sexto Grado </option> 
	                                </select>
                                </div>

                            </div>
                            <asp:button runat="server" OnClick="Register_Stu" Text="Registrar Usuario" CssClass="btn_form_extra" id="signUp" style="margin-top:20px;"/>
		                </div>
                    
                        </form>

	                </div>

                </div>

            </div>

        
    </div>
            


<footer class="site-section bg-light footer">
      <div class="container">
        <div class="row mb-5">
          <div class="col-md-3">
            <h3 class="footer-title">ARAcademy - Asesores Académicos</h3>
            <p><span class="d-inline-block d-md-block"> </span> Madrid, España</p>
          </div>
          <div class="col-md-5 mx-auto">
              <h3 class="footer-title">Síguenos en:</h3>
              <a href="#" class="social-circle m-2"><span class="icon-twitter"></span></a>
              <a href="#" class="social-circle m-2"><span class="icon-facebook"></span></a>
              <a href="#" class="social-circle m-2"><span class="icon-instagram"></span></a>
              <a href="#" class="social-circle m-2"><span class="icon-dribbble"></span></a>
              <a href="#" class="social-circle m-2"><span class="icon-linkedin"></span></a>

          </div>
          <div class="col-md-3">
            


          </div>
        </div>

        <div class="row">
          <div class="col-12 text-center">
            <p>
                <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                Copyright &copy;
                <script>
                    document.write(new Date().getFullYear());
                </script> Todos los derechos reservados | ARAcademy <i class="icon-heart"
                  aria-hidden="true"></i> <a href="https://colorlib.com" target="_blank"></a>
                <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
              </p>  
          </div>
        </div>
      </div>
    </footer>

    </div>
   <%-- </div>
    <script>
        const signUpButton = document.getElementById('signUp');
        const signInButton = document.getElementById('signIn');
        const container = document.getElementById('container');

        signUpButton.addEventListener('click', () => {
            container.classList.add("right-panel-active");
        });

        signInButton.addEventListener('click', () => {
            container.classList.remove("right-panel-active");
        });
    </script>--%>
</asp:Content>
