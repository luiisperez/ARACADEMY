<%@ Page Title="" Language="C#" MasterPageFile="~/site/admin/Admin_home.Master" AutoEventWireup="true" CodeBehind="add_top.aspx.cs" Inherits="ARAcademy.site.admin.add_top" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>
    <script src="sweetalert2.all.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/promise-polyfill"></script>
    <script src="sweetalert2.min.js"></script>
    <link rel="stylesheet" href="sweetalert2.min.css">
    <script>
        function alertme_succ() {
            Swal.fire({
                title: 'Modulo creado exitosamente',
                width: 500,
                padding: '3em',
                background: '#fff ',
            })
        }
        function alertme()
        {
            Swal.fire({
                title: 'Ha ocurrido un error',
                width: 500,
                padding: '3em',
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

                            <h3 style="font-weight:bold; text-align:center; margin-bottom:5%">Registro del topico</h3>

                            <div class="row">
                                <div class="col-6">
	                                <select id="grade_est" runat="server" class="form-control select2" style="background-color: #eee; padding: 13px 15px;margin: 8px 0; width:100%; border:none; height:80%" required="required">
	                                   <option selected disabled>Seleccione la materia</option> 
                                       <option value="1" >Primer Grado</option> 
	                                   <option value="2" >Segundo Grado</option> 
	                                   <option value="3" >Tercer Grado</option> 
	                                   <option value="4" >Cuarto Grado</option> 
	                                   <option value="5" >Quinto Grado</option> 
                                       <option value="6" >Sexto Grado</option> 
	                                </select>
                                </div>
                                <div class="col-6">
	                                <select id="Select1" runat="server" class="form-control select2" style="background-color: #eee; padding: 13px 15px;margin: 8px 0; width:100%; border:none; height:80%" required="required">
	                                   <option selected disabled>Seleccione el modulo</option> 
                                       <option value="1" >Primer Grado</option> 
	                                   <option value="2" >Segundo Grado</option> 
	                                   <option value="3" >Tercer Grado</option> 
	                                   <option value="4" >Cuarto Grado</option> 
	                                   <option value="5" >Quinto Grado</option> 
                                       <option value="6" >Sexto Grado</option> 
	                                </select>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-12">
                                    <div class="input-group">
                                        <input runat="server" type="text" class="form-control" name="name" id="name" placeholder="Nombre del topico" style="background-color: #eee; border: none; padding: 27px 15px;margin: 8px 0; width: 100%;" required="required" />
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-12">
                                    <div class="input-group">
                                        <textarea runat="server" type="text" class="form-control" name="desc" id="desc" placeholder="Descipción del topico" style="background-color: #eee; border: none; padding: 7px 15px 40px 15px;margin: 8px 0; width: 100%; resize:none" required="required" />
                                    </div>
                                </div>
                            </div>

                            <div class="form-group" style="margin-top:7%">
                                <asp:button runat="server" type="button" Text="Registrar" class="btn btn-success btn-lg btn-block login-button" style="border-radius:20px; width:30%; margin:auto; border:0px" required="required" /> 
                            </div>

                    </div>

                </div>
            </div>
        </div>
    </div>
</asp:Content>
