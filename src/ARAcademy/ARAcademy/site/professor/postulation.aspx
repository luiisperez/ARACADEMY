<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="postulation.aspx.cs" Inherits="ARAcademy.site.professor.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>ARAcademy</title>
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>

    <link href="https://fonts.googleapis.com/css2?family=Jost:wght@400;700;900&display=swap" rel="stylesheet"/>
    <link rel="stylesheet" href="../home/fonts/icomoon/style.css"/>

    <link rel="stylesheet" href="../home/css/bootstrap/bootstrap.css"/>
    <link rel="stylesheet" href="../home/css/jquery-ui.css"/>
    <link rel="stylesheet" href="../home/css/owl.carousel.min.css"/>
    <link rel="stylesheet" href="../home/css/owl.theme.default.min.css"/>
    <link rel="stylesheet" href="../home/css/owl.theme.default.min.css"/>
    <link rel="stylesheet" href="../home/css/jquery.fancybox.min.css"/>
    <link rel="stylesheet" href="../home/css/bootstrap-datepicker.css"/>
    <link rel="stylesheet" href="../home/fonts/flaticon/font/flaticon.css"/>
    <link rel="stylesheet" href="../home/css/aos.css"/>
    <link rel="stylesheet" href="../home/css/style.css"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>

</head>
<body data-spy="scroll" data-target=".site-navbar-target" data-offset="300">

    <div class="site-wrap">

        <div class="site-mobile-menu site-navbar-target">
            <div class="site-mobile-menu-header">
                <div class="site-mobile-menu-close mt-3">
                    <span class="icon-close2 js-menu-toggle"></span>
                </div>
            </div>
            <div class="site-mobile-menu-body"></div>
        </div>

        <header class="site-navbar py-4 js-sticky-header site-navbar-target" style="position:relative" role="banner">

            <div class="container">
                <div class="row align-items-center justify-content-center">

                    <div class="col-2">
                        <h1 class=""><a href="../home/index.html"><img src="../home/images/Logo_Design_NB_Short.png" width="100" height="100" alt="ARAcademy"/></a></h1>
                    </div>

                    <div class="col-10">
                        <nav class="site-navigation text-right" style="padding-bottom: 0px !important" role="navigation">
                            <ul class="site-menu main-menu js-clone-nav mr-auto d-none d-lg-block">
                                <li><a href="../home/index.html" class="nav-link">Inicio</a></li>
                                <li><a href="#" onclick="alertme()" class="nav-link">Acceder</a></li>
                            </ul>
                        </nav>

                        <a href="#" class="d-inline-block d-lg-none site-menu-toggle js-menu-toggle float-right"><span class="icon-menu h3"></span></a>

                    </div>

                </div>
            </div>

        </header>            

        <div class="container">

            <form class="form" id="postulation_Form" runat="server">

                            <div class="section-title text-center" style="font-size:xx-large;color:black">FORMULARIO DE POSTULACIÓN</div>

                            <div class="row">
                                <p style="margin:5%;text-align:center">
                                    Queremos generar espacios y oportunidades para que grandes profesores puedan acceder de manera sencilla a quellos alumnos que le necesitan.
                                    ARA pone a tu disposición una gran plataforma en la que puedas conectar con muchos estudiantes, aprovechando cada momento para potenciar a otros y crecer en tu desempeño profesional.
                                    <br /><br />Queremos saber quién eres, llena este pequeño formulario y te contactaremos para que formes parte de ARAcademy.
                                </p>
                            </div>

                            <div class="row">
                                <div class="col-6">
                                        <asp:textbox id="txtName" runat="server" CssClass="asp-form" placeholder="Nombre"></asp:textbox>
                                </div>
                                <div class="col-6">
                                        <asp:textbox id="txtLastName" runat="server" CssClass="asp-form" placeholder="Apellido"></asp:textbox>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-12">
                                    <div class="input-group">
                                        <asp:textbox id="txtEmail" runat="server" CssClass="asp-form" placeholder="Email"></asp:textbox>
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-6">
                                    <div class="input-group">
                                        <asp:textbox id="txtCountry" runat="server" CssClass="asp-form" placeholder="Pais"></asp:textbox>
                                    </div>
                                </div>
                                <div class="col-6">
                                    <div class="input-group">
                                        <asp:textbox id="txtTelf" runat="server" CssClass="asp-form" placeholder="Teléfono" pattern="[0-9]{12,20}"></asp:textbox>
                                    </div>
                                </div>
                            </div>


                            <div class="row">
                                <div class="col-12">
                                    <div class="input-group" style="padding-top:15px">
                                        <label>Adjunta tu resumen curricular en formato PDF: </label>
                                        <%--<input type="file" name="ResumenAdjunto" accept=".pdf"/>--%>
                                        <asp:FileUpload ID="ResumenAdjunto" runat="server" /><br />
                                    </div>
                                </div>
                            </div>

                            <div class="form-group" style="margin-top:7%;text-align:center">
                                    <asp:Button id="btn_Send" runat="server" CssClass="btn btn-danger btn_log btn-3"  text="Enviar Información" OnClick="btn_SendMessage"/>
                            </div>
                <asp:label id="Label1" runat="server" text="" />

                </form>

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
                        <a href="#" class="social-circle m-2"><span class="icon-linkedin"></span></a>
                    </div>
                    <div class="col-md-3">



                    </div>
                </div>

                <div class="row">
                    <div class="col-12 text-center">
                        <p>
                            Copyright &copy;
                            <script>
                                document.write(new Date().getFullYear());
                            </script> Todos los derechos reservados | ARAcademy <i class="icon-heart"
                                                                                   aria-hidden="true"></i> <a href="https://colorlib.com" target="_blank"></a>
                        </p>
                    </div>
                </div>
            </div>
        </footer>




        <script src="https://cdn.jsdelivr.net/npm/sweetalert2@7.12.15/dist/sweetalert2.all.min.js"></script>
        <link rel='stylesheet' href='https://cdn.jsdelivr.net/npm/sweetalert2@7.12.15/dist/sweetalert2.min.css' />
        <script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>
        <script src="sweetalert2.all.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/promise-polyfill"></script>
        <script src="sweetalert2.min.js"></script>
        <link rel="stylesheet" href="sweetalert2.min.css"/>
        <script>
            function alertme() {

                const swalWithBootstrapButtons = Swal.mixin({
                    customClass: {
                        confirmButton: 'btn btn-success',
                        cancelButton: 'btn btn-danger'
                    },
                    buttonsStyling: false
                })

                swalWithBootstrapButtons.fire({
                    title: false,
                    text: false,
                    icon: false,
                    imageUrl: '../home/images/Question_Mark.png',
                    showCancelButton: true,
                    confirmButtonText: 'Profesor',
                    confirmButtonClass: 'btn_log btn-3',
                    cancelButtonText: 'Estudiante',
                    cancelButtonClass: 'btn_log btn-3',
                    reverseButtons: true
                }).then((result) => {
                    if (result.value) {
                        window.location = "login.aspx";
                    } else if (
                        /* Read more about handling dismissals below */
                        result.dismiss === Swal.DismissReason.cancel
                    ) {
                        window.location = "../student/login.aspx";
                    }
                })
            }
        </script>
        <script src="js/jquery-3.3.1.min.js"></script>
        <script src="js/jquery-ui.js"></script>
        <script src="js/popper.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/owl.carousel.min.js"></script>
        <script src="js/jquery.easing.1.3.js"></script>
        <script src="js/aos.js"></script>
        <script src="js/jquery.fancybox.min.js"></script>
        <script src="js/jquery.sticky.js"></script>
        <script src="js/isotope.pkgd.min.js"></script>


        <script src="js/main.js"></script>


</body>
</html>
