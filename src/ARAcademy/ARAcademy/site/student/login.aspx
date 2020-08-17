<%@ Page Title="" Language="C#" MasterPageFile="~/site/admin/adminmanagement.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="ARAcademy.site.student.login" %>
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

    <script>
        function errorSweetAlert(msg) {
            swal({
                title: msg,
                timer: 2000,
                showConfirmButton: false,
                type: 'error'  
            });
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
              <%--<ul class="site-menu main-menu js-clone-nav mr-auto d-none d-lg-block">
                <li><a href="../home/index.html" class="nav-link" style="color:black !important">Inicio</a></li>
                <li><a href="" class="nav-link" style="color:black !important">Precios</a></li>
                <li><a href="" class="nav-link" style="color:black !important">Contacto</a></li>--%>
               
            </nav>

            <a href="#" class="d-inline-block d-lg-none site-menu-toggle js-menu-toggle float-right"><span class="icon-menu h3"></span></a>

          </div>
       
        </div>
      </div>
      
    </header>


	<div class="limiter" runat="server">
		
        <div class="container-login100">
                <div class="container_LogEst" id="container">
	                <div class="form-container_LogEst sign-up-container_LogEst">
		                <form action="#">
			                <h3 style="font-weight:bold">Crea tu cuenta</h3>
<%--			                <div class="social-container_LogEst">
				                <a href="#" class="social"><i class="fab fa-facebook-f"></i></a>
				                <a href="#" class="social"><i class="fab fa-google-plus-g"></i></a>
				                <a href="#" class="social"><i class="fab fa-linkedin-in"></i></a>
			                </div>
			                <span>or use your email for registration</span>--%>
                            <div class="row">
                            <input type="text" placeholder="Nombre" />
                            <input type="text" placeholder="Apellido" />
			                <input type="email" placeholder="Email" />
                            <input type="password" placeholder="Contraseña" />
                            <input type="password" placeholder="Confirmar Contraseña" />
                            </div>
                            <div class="row">
                                <div class="col -6" style="padding: 0px; margin-right: 5px">
                                    <input type="text" placeholder="Fecha de nacimiento" />
                                </div>
                                <div class="col -6" style="padding: 0px; margin-left: 5px">
                                    <input type="text" placeholder="Grado" />
                                </div>
<%--                            <input type="text" placeholder="Telefono" />
                            <input type="text" placeholder="Pais" />--%>
                            </div>
			                <button style="margin-top:10px;">Registrarse</button>
		                </form>
	                </div>
	                <div class="form-container_LogEst sign-in-container_LogEst">
		                <form action="#">
			                <h3 style="font-weight:bold">Inicia sesión</h3>
			                <%--<div class="social-container_LogEst">
				                <a href="#" class="social"><i class="fab fa-facebook-f"></i></a>
				                <a href="#" class="social"><i class="fab fa-google-plus-g"></i></a>
				                <a href="#" class="social"><i class="fab fa-linkedin-in"></i></a>
			                </div>
			                <span>Utiliza tu cuenta</span>--%>
			                <input type="email" placeholder="Email" />
			                <input type="password" placeholder="Contraseña" />
			                <a href="#">¿Olvidaste tu contraseña?<br />Pincha aquí para recuperar</a>
			                <button>Iniciar</button>
		                </form>
	                </div>
	                <div class="overlay-container_LogEst">
		                <div class="overlay_LogEst">
			                <div class="overlay-panel_LogEst overlay-left_LogEst">
				                <h3 style="color:#ffffff;font-weight:bold">¡Bienvenido de nuevo!</h3>
				                <p style="color:#ffffff">Si ya tienes cuenta, selecciona el botón de Iniciar Sesión y accede a tu aula ARAcademy.</p>
				                <button class="ghost_LogEst" id="signIn">Iniciar Sesión</button>
			                </div>
			                <div class="overlay-panel_LogEst overlay-right_LogEst">
                                <h3 style="color:#ffffff;font-weight:bold">¡Hola amigo! Bienvenido</h3>
				                <p style="color:#ffffff">Si aún no tiene cuenta, selecciona el botón Registrar Usuario y coloca tus datos para comenzar la aventura ARAcademy.</p>
				                <button class="ghost_LogEst" id="signUp">Registrar Usuario</button>
			                </div>
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
    </div>

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
    </script>
</asp:Content>
