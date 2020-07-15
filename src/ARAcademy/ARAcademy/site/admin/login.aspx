<%@ Page Language="C#" MasterPageFile="~/site/admin/adminmanagement.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="ARAcademy.site.admin.login" %>

<asp:Content ID="ContentIndex" ContentPlaceHolderID="head" runat="server">
	<title>Inicio de sesión</title>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@7.12.15/dist/sweetalert2.all.min.js"></script>
	<link rel="stylesheet" type="text/css" href="css/fade.css">
    <link rel='stylesheet' href='https://cdn.jsdelivr.net/npm/sweetalert2@7.12.15/dist/sweetalert2.min.css'/>
    <link rel="stylesheet" type="text/css" href="css/main.css">
    <link rel="stylesheet" type="text/css" href="css/util.css">
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
    </script>
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="content" runat="server">
    
    <div class="site-wrap">
    <header class="site-navbar py-4 js-sticky-header site-navbar-target" style="position:relative; padding-bottom: 0px !important" role="banner">

      <div class="container" style="margin-bottom: 10px">
        <div class="row align-items-center justify-content-center">

          <div class="col-4">
            <h1 class=""><a href="../home/index.html"><img src="images/Logo_Design_NB_Short.png" width="100" height="100" alt="ARAcademy"></a></h1>
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
           <form id="btn_sendForm" method="post" runat="server">               
            <div class="row_log">
                <div class="col-6" style="border-radius: 5px 0px 0px 5px; background:#00194f; vertical-align: middle !important;">
                    <img class="img_mid" src="images/Marca_Archivos_NB_Short.png" alt="IMG">
                </div>
                <div class="col-6" style="border-radius: 0px 5px 5px 0px;">
                    <span class="login100-form-title">
						Iniciar Sesión
					</span>

					<div class="wrap-input100 validate-input" data-validate = "Valid email is required: ex@abc.xyz">
                        <input runat="server" class="input100" id="adm_email" type="email" name="adm_email" placeholder="Email" >
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-envelope" aria-hidden="true"></i>
						</span>
					</div>

					<div class="wrap-input100 validate-input" data-validate = "Password is required">
						<input runat="server" class="input100" id="adm_pwd" type="password" name="adm_pwd" placeholder="Password" >
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<i class="fa fa-lock" aria-hidden="true"></i>
						</span>
					</div>
					
					<div class="container-login100-form-btn" >
                        <asp:button type="submit" Text="Iniciar" runat="server" class="login100-form-btn" onclick="valid_login"/>                              
					</div>

					<div class="text-center p-t-12">
						<span class="txt1">
							Olvido su 
						</span>
						<a class="txt2" href="#">
							contraseña?
						</a>
					</div>

					<div class="text-center p-t-136">
					    <a class="txt2" href="#">
						    Registrese aqui
					    </a>
                    </div>
                </div>
		    </div>
       </form>
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

</asp:Content>
