<%@ Page Title="" Language="C#" MasterPageFile="~/site/admin/Admin_home.Master" AutoEventWireup="true" CodeBehind="add_mod.aspx.cs" Inherits="ARAcademy.site.admin.add_mod" %>
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
                title: 'Módulo creado exitosamente',
                width: 500,
                padding: '3em',
                imageUrl: "/site/home/images/Check_Mark.png",
                imageAlt: 'Custom image',
                background: '#fff ',
            })
                .then(function (result) {
                    if (result.value) {
                        window.location = "/site/admin/mod_menu.aspx";
                    }
                })
        }
        function alertme()
        {
            Swal.fire({
                title: 'Error al registrar el módulo, verifique la información',
                width: 400,
                padding: '3em',
                imageUrl: "/site/home/images/Alert_mark.png",
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

                            <h3 style="font-weight:bold; text-align:center; margin-bottom:5%">Registro de modulo</h3>

                            <div class="row">
                                <div class="col-6">
	                                <asp:DropDownList ID="list_grades" runat="server" style="background-color: #eee; padding: 13px 15px;margin: 8px 0; width:100%; border:none; height:80%; " required="required" OnSelectedIndexChanged="grade__SelectedIndexChanged"  AutoPostBack="True" >
                                    </asp:DropDownList>
                                </div>
                                <div class="col-6">
	                                <asp:DropDownList ID="list_course" runat="server" Enabled="false" style="background-color: #eee; padding: 13px 15px;margin: 8px 0; width:100%; border:none; height:80%; " required="required" AutoPostBack="True"  >
                                    </asp:DropDownList>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-12">
                                    <div class="input-group">
                                        <input runat="server" type="text" class="form-control" name="name" id="name" placeholder="Nombre del módulo" style="background-color: #eee; border: none; padding: 27px 15px;margin: 8px 0; width: 100%;" required="required" />
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-12">
                                    <div class="input-group">
                                        <textarea runat="server" type="text" class="form-control" name="desc" id="desc" placeholder="Descripción del módulo" style="background-color: #eee; border: none; padding: 7px 15px 40px 15px;margin: 8px 0; width: 100%; resize:none" required="required" />
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-4">
                                    <div class="input-group">
                                        <input runat="server" type="text" class="form-control" name="amount" id="amount" placeholder="Precio del módulo" style="background-color: #eee; border: none; padding: 27px 15px;margin: 8px 0; width: 100%;" required="required" />
                                    </div>
                                </div>
                            </div>

                            <div class="form-group" style="margin-top:7%">
                                <asp:button runat="server" type="button" Text="Registrar" class="btn btn-success btn-lg btn-block login-button" OnClick="Reg_Mod" style="border-radius:20px; width:30%; margin:auto; border:0px" required="required" /> 
                            </div>

                    </div>

                </div>
            </div>
        </div>
    </div>
</asp:Content>
