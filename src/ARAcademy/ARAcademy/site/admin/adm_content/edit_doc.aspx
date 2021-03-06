﻿<%@ Page Title="" Language="C#" MasterPageFile="~/site/admin/Admin_home.Master" AutoEventWireup="true" CodeBehind="edit_doc.aspx.cs" Inherits="ARAcademy.site.admin.adm_content.edit_doc" %>
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
     <style>
        .input-group-append {
            display: none;
        }
    </style>
    <script>
        function alertme_succ() {
            Swal.fire({
                title: 'Documento actualizado exitosamente',
                width: 400,
                padding: '3em',
                imageUrl: "/site/home/images/Check_Mark.png",
                imageAlt: 'Custom image',
                background: '#fff ',
            })
                .then(function (result) {
                    if (result.value) {
                        window.location = "/site/admin/adm_content/list_content.aspx";
                    }
                })
        }
        function alertme() {
            Swal.fire({
                title: 'Ha ocurrido un error al actualizar el Documento, verifique la información',
                width: 400,
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
            <div class="col-md-12">
                <div class="card" style="margin:5%">
                    <div class="card-body" >

                            <h3 style="font-weight:bold; text-align:center; margin-bottom:5%">Registro del tópico</h3>

                            <div class="row">
                                <div class="col-6">
	                                <asp:DropDownList ID="list_grades" runat="server" style="background-color: #eee; padding: 13px 15px;margin: 8px 0; width:100%; border:none; height:80%; " required="required" OnSelectedIndexChanged="grade__SelectedIndexChanged"  AutoPostBack="True" >
                                    </asp:DropDownList>
                                </div>
                                <div class="col-6">
	                                <asp:DropDownList ID="list_course" runat="server" Enabled="true" style="background-color: #eee; padding: 13px 15px;margin: 8px 0; width:100%; border:none; height:80%; " OnSelectedIndexChanged="course__SelectedIndexChanged" required="required" AutoPostBack="True"  >
                                    </asp:DropDownList>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-6">
	                                <asp:DropDownList ID="list_section" runat="server" Enabled="true" style="background-color: #eee; padding: 13px 15px;margin: 8px 0; width:100%; border:none; height:80%; " OnSelectedIndexChanged="section__SelectedIndexChanged" required="required" AutoPostBack="True"  >
                                    </asp:DropDownList>
                                </div>
                                <div class="col-6">
	                                <asp:DropDownList ID="list_topic" runat="server" Enabled="true" style="background-color: #eee; padding: 13px 15px;margin: 8px 0; width:100%; border:none; height:80%; " required="required" AutoPostBack="True"  >
                                    </asp:DropDownList>                                    
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-12">
                                    <div class="input-group">
	                                    <input runat="server" type="text" class="form-control" name="name" id="name" placeholder="Nombre del documento" style="background-color: #eee; border: none; padding: 27px 15px;margin: 8px 0; width: 100%;" required="required" />         
                                    </div>
                                </div>
                            </div>

                            <div class="form-group" style="margin-top:7%">
                                <asp:button runat="server" type="button" Text="Actualizar" class="btn btn-success btn-lg btn-block login-button" style="border-radius:20px; width:30%; margin:auto; border:0px" OnClick="upd_doc" required="required" /> 
                            </div>

                    </div>

                </div>
            </div>
        </div>
    </div>
</asp:Content>
