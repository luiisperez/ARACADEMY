<%@ Page Title="" Language="C#" MasterPageFile="~/site/admin/Admin_home.Master" AutoEventWireup="true" CodeBehind="reg_prof.aspx.cs" Inherits="ARAcademy.site.admin.reg_prof" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="card" style="margin:5%">
                    <div class="card-body" >

                        <form class="form-horizontal" method="post" action="#">

                            <h3 style="font-weight:bold; text-align:center; margin-bottom:5%">Registro de profesor</h3>

                            <div class="row">
                                <div class="col-12">
                                    <div class="input-group">
                                        <input type="text" class="form-control" name="name" id="name" placeholder="Nombre" style="background-color: #eee; border: none; padding: 27px 15px;margin: 8px 0; width: 100%;" />
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-12">
                                    <div class="input-group">
                                        <input type="text" class="form-control" name="email" id="last_name" placeholder="Apellido" style="background-color: #eee; border: none; padding: 27px 15px;margin: 8px 0; width: 100%;" />
                                    </div>
                                </div>
                            </div>


                            <div class="row">
                                <div class="col-12">
                                    <div class="input-group">
                                        <input type="text" class="form-control" name="name" id="email" placeholder="Email" style="background-color: #eee; border: none; padding: 27px 15px;margin: 8px 0; width: 100%;" />
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-6">
                                    <div class="input-group">
                                        <input type="text" class="form-control" name="name" id="password" placeholder="Contraseña" style="background-color: #eee; border: none; padding: 27px 15px;margin: 8px 0; width: 100%;" />
                                    </div>
                                </div>
                                <div class="col-6">
                                    <div class="input-group">
                                        <input type="text" class="form-control" name="email" id="conf_pwd" placeholder="Confirmar contraseña" style="background-color: #eee; border: none; padding: 27px 15px;margin: 8px 0; width: 100%;" />
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-4">
                                    <div class="input-group">
                                        <input type="text" class="form-control" name="name" id="fec_nac" placeholder="Fecha de nacimiento" style="background-color: #eee; border: none; padding: 27px 15px;margin: 8px 0; width: 100%;" />
                                    </div>
                                </div>
                                <div class="col-4">
                                    <div class="input-group">
                                        <input type="text" class="form-control" name="email" id="country" placeholder="Pais" style="background-color: #eee; border: none; padding: 27px 15px;margin: 8px 0; width: 100%;" />
                                    </div>
                                </div>
                                <div class="col-4">
                                    <div class="input-group">
                                        <input type="text" class="form-control" name="email" id="telf" placeholder="Telefono" style="background-color: #eee; border: none; padding: 27px 15px;margin: 8px 0; width: 100%;" />
                                    </div>
                                </div>
                            </div>

                            <div class="form-group" style="margin-top:7%">
                                <button type="button" class="btn btn-primary btn-lg btn-block login-button" style="border-radius:20px; width:30%; margin:auto; background-color:#1b89ac; border:0px">Registrar</button>
                            </div>

                        </form>
                    </div>

                </div>
            </div>
        </div>
    </div>
</asp:Content>
