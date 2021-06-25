<%@ Page Title="" Language="C#" MasterPageFile="~/site/professor/Prof_home.Master" AutoEventWireup="true" CodeBehind="prof_edit.aspx.cs" Inherits="ARAcademy.site.professor.prof_edit.prof_edit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <link href="//cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/css/bootstrap.css" rel="stylesheet"/>
    <link href="//cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/4.17.37/css/bootstrap-datetimepicker.css" rel="stylesheet"/>
    <link href="css/util.css" rel="stylesheet"/>
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
                title: 'Profesor actualizado exitosamente',
                width: 400,
                padding: '3em',
                imageUrl: "/site/home/images/Check_Mark.png",
                imageAlt: 'Custom image',
                background: '#fff ',
            })
                .then(function (result) {
                    if (result.value) {
                        window.location = "/site/professor/prof_menu.aspx";
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
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class="container">

        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="card" style="margin:5%">
                    <div class="card-body" >

                            <h3 style="font-weight:bold; text-align:center; margin-bottom:5%">Actualización del profesor</h3>

                            <div class="row">
                                <div class="col-12">
                                    <div class="input-group">
                                        <input runat="server" type="text" class="form-control" name="name" id="name" placeholder="Nombre" style="background-color: #eee; border: none; padding: 27px 15px;margin: 8px 0; width: 100%;" required="required" disabled />
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-12">
                                    <div class="input-group">
                                        <input runat="server" type="text" class="form-control" name="last_name" id="last_name" placeholder="Apellido" style="background-color: #eee; border: none; padding: 27px 15px;margin: 8px 0; width: 100%;" required="required" disabled />
                                    </div>
                                </div>
                            </div>


                            <div class="row">
                                <div class="col-12">
                                    <div class="input-group">
                                        <input runat="server" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}" title="Ejemplo: Example@example.com" type="text" class="form-control" name="email" id="email" placeholder="Email" style="background-color: #eee; border: none; padding: 27px 15px;margin: 8px 0; width: 100%;" required="required" readonly="readonly" disabled />
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-6">
                                    <div class="input-group">
                                        <asp:TextBox runat="server" TextMode="Password" CssClass="form-control" name="password"  id="password" placeholder="Contraseña" style="background-color: #eee; border: none; padding: 27px 15px;margin: 8px 0; width: 100%;" required="required" />
                                    </div>
                                </div>
                                <div class="col-6">
                                    <div class="input-group">
                                        <asp:TextBox runat="server" TextMode="Password" CssClass="form-control" name="password_conf" id="conf_pwd" placeholder="Confirmar contraseña" style="background-color: #eee; border: none; padding: 27px 15px;margin: 8px 0; width: 100%;" required="required"/>
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-4">
                                    <input id="fec_nac" class="datepicker" placeholder="Fecha de Nacimiento" runat="server" style="background-color: #eee; border: none; padding: 27px 15px;margin: 8px 0; width: 100%;" required="required" disabled/>
                                    <script>
                                        $('.datepicker').datepicker({
                                            uiLibrary: 'bootstrap4'
                                        });
                                    </script>
                                </div>

                                <div class="col-4">
                                    <div class="input-group">
                                        <input runat="server" pattern="[0-9]{10,20}" title="Numero telefonico invalido." type="text" class="form-control" name="telf" id="telf" placeholder="Telefono" style="background-color: #eee; border: none; padding: 27px 15px;margin: 8px 0; width: 100%;" required="required" />
                                    </div>
                                </div>
                                <div class="col-4">
	                                <select id="country" runat="server" class="form-control select2" style="background-color: #eee; padding: 0px 15px;margin: 8px 0; width:100%; border:none; height:80%" required="required">
	                                   <option>Armenia</option> 
	                                   <option>Venezuela</option> 
	                                   <option>Francia</option> 
	                                   <option>Cycle</option> 
	                                   <option>Queseyo</option> 
	                                </select>
                                </div>
                            </div>

                            <div class="form-group" style="margin-top:7%">
                                <asp:button runat="server" type="button" Text="Actualizar" class="btn btn-success btn-lg btn-block login-button" style="border-radius:20px; width:30%; margin:auto; border:0px" onclick="Register_Prof" required="required" /> 
                            </div>

                    </div>

                </div>
            </div>
        </div>
    </div>
</asp:Content>
