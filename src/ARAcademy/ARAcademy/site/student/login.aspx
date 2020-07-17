<%@ Page Title="" Language="C#" MasterPageFile="~/site/admin/adminmanagement.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="ARAcademy.site.student.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
	<title>Inicio de sesión profesor</title>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@7.12.15/dist/sweetalert2.all.min.js"></script>
	<link rel="stylesheet" type="text/css" href="css/fade.css">
    <link rel='stylesheet' href='https://cdn.jsdelivr.net/npm/sweetalert2@7.12.15/dist/sweetalert2.min.css'/>
    <link rel="stylesheet" type="text/css" href="css/main.css">
    <link rel="stylesheet" type="text/css" href="css/util.css">
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

          <div class="col-4">
            <h1 class=""><a href="../home/index.html"><img src="../home/images/Logo_Design_NB_Short.png" width="100" height="100" alt="ARAcademy"></a></h1>
          </div>

          <div class="col-8">
            <nav class="site-navigation position-relative text-right" role="navigation">
              <ul class="site-menu main-menu js-clone-nav mr-auto d-none d-lg-block">
                <li><a href="#home-section" class="nav-link" style="color:black !important">Inicio</a></li>
                <li><a href="../admin/login.aspx" class="nav-link" style="color:black !important">Iniciar Sesión</a></li>
                <li><a href="#blog-section" class="nav-link" style="color:black !important">Registrarse</a></li>
              </ul>
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
			                <h1>Create Account</h1>
			                <div class="social-container_LogEst">
				                <a href="#" class="social"><i class="fab fa-facebook-f"></i></a>
				                <a href="#" class="social"><i class="fab fa-google-plus-g"></i></a>
				                <a href="#" class="social"><i class="fab fa-linkedin-in"></i></a>
			                </div>
			                <span>or use your email for registration</span>
			                <input type="text" placeholder="Name" />
			                <input type="email" placeholder="Email" />
			                <input type="password" placeholder="Password" />
			                <button>Sign Up</button>
		                </form>
	                </div>
	                <div class="form-container_LogEst sign-in-container_LogEst">
		                <form action="#">
			                <h1>Sign in</h1>
			                <div class="social-container_LogEst">
				                <a href="#" class="social"><i class="fab fa-facebook-f"></i></a>
				                <a href="#" class="social"><i class="fab fa-google-plus-g"></i></a>
				                <a href="#" class="social"><i class="fab fa-linkedin-in"></i></a>
			                </div>
			                <span>or use your account</span>
			                <input type="email" placeholder="Email" />
			                <input type="password" placeholder="Password" />
			                <a href="#">Forgot your password?</a>
			                <button>Sign In</button>
		                </form>
	                </div>
	                <div class="overlay-container_LogEst">
		                <div class="overlay_LogEst">
			                <div class="overlay-panel_LogEst overlay-left_LogEst">
				                <h1>Welcome Back!</h1>
				                <p>To keep connected with us please login with your personal info</p>
				                <button class="ghost_LogEst" id="signIn">Sign In</button>
			                </div>
			                <div class="overlay-panel_LogEst overlay-right_LogEst">
				                <h1>Hello, Friend!</h1>
				                <p>Enter your personal details and start journey with us</p>
				                <button class="ghost_LogEst" id="signUp">Sign Up</button>
			                </div>
		                </div>
	                </div>
                </div>
            </div>


    <footer class="site-section bg-light footer">
      <div class="container">
        <div class="row mb-5">
          <div class="col-md-3">
            <h3 class="footer-title">Services</h3>
            <p><span class="d-inline-block d-md-block">203 Fake St. Mountain View,</span> San Francisco, California, USA</p>
          </div>
          <div class="col-md-5 mx-auto">
            <div class="row">
              <div class="col-lg-4">
                <h3 class="footer-title">Services</h3>
                <ul class="list-unstyled">
                  <li><a href="#">Content Marketing</a></li>
                  <li><a href="#">Brand & Logo</a></li>
                  <li><a href="#">Social Advertising</a></li>
                </ul>
              </div>
              <div class="col-lg-4">
                <h3 class="footer-title">Resources</h3>
                <ul class="list-unstyled">
                  <li><a href="#">Social Marketing</a></li>
                  <li><a href="#">Web Design</a></li>
                  <li><a href="#">Web Development</a></li>
                </ul>
              </div>
              <div class="col-lg-4">
                <h3 class="footer-title">Templates</h3>
                <ul class="list-unstyled">
                  <li><a href="#">Illustration</a></li>
                  <li><a href="#">Video Editing</a></li>
                  <li><a href="#">Copywriting</a></li>
                </ul>
              </div>
            </div>
          </div>
          <div class="col-md-3">
            <h3 class="footer-title">Follow Me</h3>
            <a href="#" class="social-circle m-2"><span class="icon-twitter"></span></a>
            <a href="#" class="social-circle m-2"><span class="icon-facebook"></span></a>
            <a href="#" class="social-circle m-2"><span class="icon-instagram"></span></a>
            <a href="#" class="social-circle m-2"><span class="icon-dribbble"></span></a>
            <a href="#" class="social-circle m-2"><span class="icon-linkedin"></span></a>
          </div>
        </div>

        <div class="row">
          <div class="col-12 text-center">
            <p>
                <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                Copyright &copy;
                <script>
                    document.write(new Date().getFullYear());
                </script> All rights reserved | This template is made with <i class="icon-heart"
                  aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
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
