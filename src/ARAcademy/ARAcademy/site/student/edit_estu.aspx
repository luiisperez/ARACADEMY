<%@ Page Title="" Language="C#" MasterPageFile="~/site/student/Student_home.Master" AutoEventWireup="true" CodeBehind="edit_estu.aspx.cs" Inherits="ARAcademy.site.student.edit_estu" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@7.12.15/dist/sweetalert2.all.min.js"></script>
	<link rel="stylesheet" type="text/css" href="css/fade.css">
    <link rel='stylesheet' href='https://cdn.jsdelivr.net/npm/sweetalert2@7.12.15/dist/sweetalert2.min.css'/>
    <link href="//cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/css/bootstrap.css" rel="stylesheet"/>
    <link rel="stylesheet" type="text/css" href="css/main2.css">
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
            function alertme_succ() {
                Swal.fire({
                    title: 'Estudiante actualizado exitosamente',
                    width: 400,
                    padding: '3em',
                    imageUrl: "/site/home/images/Check_Mark.png",
                    imageAlt: 'Custom image',
                    background: '#fff ',
                })
                    .then(function (result) {
                        if (result.value) {
                            window.location = "/site/student/stud_menu.aspx";
                        }
                    })
            }
            function alertme() {
                Swal.fire({
                    title: 'Ha ocurrido un error',
                    width: 400,
                    padding: '3em',
                    imageUrl: "/site/home/images/Check_Mark.png",
                    imageAlt: 'Custom image',
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

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server" >
        <div class="container">

        <div class="row justify-content-center">
            <div class="col-md-9">
                <div class="card" style="margin:5%">
                    <div class="card-body" >

                       <h3 style="font-weight:bold; text-align:center; margin-bottom:2%; margin-top:2%">Actualización del estudiante</h3>

                            <div class="row" style="padding-right: 15px; padding-left: 15px;">
                                <input id="name" runat="server" type="text" placeholder="Nombre" required="required" />
                                <input id="last_name" runat="server" type="text" placeholder="Apellido" required="required" />
			                    <input id="email" runat="server" type="email" placeholder="Email" required="required"  />
                                <input id="phone" runat="server" type="text" placeholder="Numero de Telefono" required="required" />
                            </div>
                            <div class="row" style="padding-right: 15px; padding-left: 15px;">
                                <div class="col -6" style="padding: 0px; margin-right: 5px">
                                    <input id="password_conf" runat="server" type="password" placeholder="Contraseña" required="required" />
                                </div>
                                <div class="col -6" style="padding: 0px; margin-right: 5px">
                                    <input id="password" runat="server" type="password" placeholder="Confirmar Contraseña" required="required" />
                                </div>
                            </div>
                            <div class="row" style="padding-right: 15px; padding-left: 15px;">
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
                                       <option value="1" > Primer Curso </option> 
	                                   <option value="2" > Segundo Curso </option> 
	                                   <option value="3" > Tercer Curso </option> 
	                                   <option value="4" > Cuarto Curso </option> 
	                                   <option value="5" > Quinto Curso </option> 
                                       <option value="6" > Sexto Curso </option> 
	                                </select>
                                </div>

                            </div>
                            <asp:button runat="server" Text="Actualizar  Usuario" CssClass="btn btn-success btn-lg btn-block login-button" onclick="Updt_est" id="signUp" style="background-color:#00194f; border-radius:20px; width:30%; margin:auto; border:0px; margin-top:1%"/> 
                   </div>

                </div>
            </div>
        </div>
    </div> 

</asp:Content>
