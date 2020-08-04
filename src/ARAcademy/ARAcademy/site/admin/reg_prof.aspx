<%@ Page Title="" Language="C#" MasterPageFile="~/site/admin/Admin_home.Master" AutoEventWireup="true" CodeBehind="reg_prof.aspx.cs" Inherits="ARAcademy.site.admin.reg_prof" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">

        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="card" style="margin:5%">
                    <div class="card-body" >

                            <h3 style="font-weight:bold; text-align:center; margin-bottom:5%">Registro de profesor</h3>

                            <div class="row">
                                <div class="col-12">
                                    <div class="input-group">
                                        <input runat="server" type="text" class="form-control" name="name" id="name" placeholder="Nombre" style="background-color: #eee; border: none; padding: 27px 15px;margin: 8px 0; width: 100%;" required="required" />
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-12">
                                    <div class="input-group">
                                        <input runat="server" type="text" class="form-control" name="last_name" id="last_name" placeholder="Apellido" style="background-color: #eee; border: none; padding: 27px 15px;margin: 8px 0; width: 100%;" required="required" />
                                    </div>
                                </div>
                            </div>


                            <div class="row">
                                <div class="col-12">
                                    <div class="input-group">
                                        <input runat="server" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}" title="Ejemplo: Example@example.com" type="text" class="form-control" name="email" id="email" placeholder="Email" style="background-color: #eee; border: none; padding: 27px 15px;margin: 8px 0; width: 100%;" required="required" />
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-6">
                                    <div class="input-group">
                                        <input runat="server" type="password" class="form-control" name="password" id="password" placeholder="Contraseña" style="background-color: #eee; border: none; padding: 27px 15px;margin: 8px 0; width: 100%;" required="required" />
                                    </div>
                                </div>
                                <div class="col-6">
                                    <div class="input-group">
                                        <input runat="server" type="password" class="form-control" name="password" id="conf_pwd" placeholder="Confirmar contraseña" style="background-color: #eee; border: none; padding: 27px 15px;margin: 8px 0; width: 100%;" required="required"/>
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-4">
                                    <div class="input-group">
                                        <input runat="server" type="text" class="form-control" name="name" id="fec_nac" placeholder="Fecha de nacimiento" style="background-color: #eee; border: none; padding: 27px 15px;margin: 8px 0; width: 100%;" required="required"/>
                                    </div>
                                    <%--<div class="form-group">
                                        <div class='input-group date' id='datetimepicker1'>
                                            <input type='text' class="form-control" />
                                            <span class="input-group-addon">
                                                <span class="glyphicon glyphicon-calendar"></span>
                                            </span>
                                        </div>
                                    </div>
                                    <script type="text/javascript">
                                        $(function () {
                                            $('#datetimepicker1').datetimepicker();
                                        });
                                    </script>--%>
                                    <%--<div class="form-group">
                                    <div class='input-group date' id='datetimepicker1'>
                                        <input type='text' id="fecha_ini" runat="server" class="form-control"/>
                                        <span class="input-group-addon">
                                        <span class="glyphicon glyphicon-calendar"></span>
                                        </span>
                                    </div>--%>
<%--                                <input id="datepicker" width="276" value="02/04/2018" />                                   
                                    <script>
                                        $('#datepicker').datepicker({
                                            uiLibrary: 'bootstrap4',
                                            locale: 'es-es',
                                        });                                   

                                    </script>--%>

                                </div>

                                <div class="col-4">
                                    <div class="input-group">
                                        <input runat="server" pattern="[0-9]{20}" title="Numero telefonico invalido." type="text" class="form-control" name="telf" id="telf" placeholder="Telefono" style="background-color: #eee; border: none; padding: 27px 15px;margin: 8px 0; width: 100%;" required="required" />
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
                                <asp:button runat="server" type="button" Text="Registrar" class="btn btn-success btn-lg btn-block login-button" style="border-radius:20px; width:30%; margin:auto; border:0px" onclick="Register_Prof" required="required" /> 
                            </div>

                    </div>

                </div>
            </div>
        </div>
</asp:Content>
