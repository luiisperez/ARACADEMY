﻿<%@ Page Title="" Language="C#" MasterPageFile="~/site/student/Student_home.Master" AutoEventWireup="true" CodeBehind="est_content.aspx.cs" Inherits="ARAcademy.site.student.est_content" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700,800,900" rel="stylesheet">	
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="/site/admin/css/Datatable.css">
    <link rel="stylesheet" href="/site/admin/css/fade.css">
    <link rel="stylesheet" href="/site/admin/css/main.css">
    <link rel="stylesheet" href="/site/admin/css/util.css">
    <script src="/site/admin/js/jquery.min.js"></script>
    <script src="/site/admin/js/popper.js"></script>
    <script src="/site/admin/js/bootstrap.min.js"></script>
    <script src="/site/admin/js/main.js"></script>
    <script src="/site/admin/js/jquery-3.5.1.js"></script>
    <script src="/site/admin/js/jquery.dataTables.min.js"></script>
    <script src="/site/admin/js/dataTables.bootstrap4.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>
    <script src="sweetalert2.all.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/promise-polyfill"></script>
    <script src="sweetalert2.min.js"></script>
    <link rel="stylesheet" href="sweetalert2.min.css">
    <script>
        $(document).ready(function () {
            $('#table').DataTable();
        });
        function alertme() {
            Swal.fire({
                title: 'Documento Eliminado exitosamente.',
                width: 500,
                padding: '3em',
                imageUrl: "/site/home/images/Check_Mark.png",
                imageAlt: 'Custom image',
                background: '#fff ',
            }).then(function (result) {
                if (result.value) {
                    window.location = "/site/student/est_content.aspx";
                }
            })
        }
        function alertmeErr() {
            Swal.fire({
                title: 'Ha ocurrido un error al eliminar el Documento.',
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
<div class="row justify-content-center">
        <div class="col-md-12">
            <div class="card" style="margin:1% 5% 5% 5%">
                <div class="card-body">
                    <h3 style="font-weight: bold; text-align: center; margin-bottom: 1%">Listado de material académico</h3>
                    <div class="row">
                        <div class="col-6" style="">
                            <asp:DropDownList ID="list_section" runat="server" Enabled="true" OnSelectedIndexChanged="document__SelectedIndexChanged" Style="background-color: #eee; padding: 13px 15px; margin: 8px 0; border: none; height: 80%;" required="required" AutoPostBack="True">
                            </asp:DropDownList>
                        </div>
                    </div>
                 </div>
            </div>
        </div>
        <div class="col-md-11" style="padding-bottom:20px">
            <div class="table-responsive" > 
                    <table id="table" class="table table-striped table-bordered" style="width:100%">
                    <thead>
                        <tr>
                            <th>Id</th>
                            <th>Nombre</th>
                            <th>Topo de Archivo</th>
                            <th>Acciones</th>
                        </tr>
                    </thead>

                    <tbody id="tableRows">
                        <asp:Repeater ID="document_list" runat="server" OnItemCommand="top_ItemCommand">
                            <ItemTemplate>
                                    <tr id="<%# Eval("Id") %>">
                                        <td> <asp:Label ID="Id" runat="server" text='<%# Eval("Id") %>'></asp:Label></td>
                                        <td><%# Eval("File") %>'></td>
                                        <td><%# Eval("Type") %></td>
                                        <td style="text-align:center"> 
                                            <%--<asp:ImageButton ID="modify" runat="server" Text="Editar" ImageUrl="~/site/home/images/assign.svg" Height="25px" Width="25px" ToolTip="Editar" />--%>
                                            <asp:ImageButton ID="download" runat="server" Text="Descargar" ImageUrl="~/site/home/images/download.png" Height="26px" Width="26px" ToolTip="Descargar" />
                                        </td>
                                    </tr>              
                            </ItemTemplate>
                        </asp:Repeater>
                    </tbody>
                    <tfoot>
                        <tr>
                            <th>Id</th>
                            <th>Nombre</th>
                            <th>File</th>
                            <th>Acciones</th>
                        </tr>
                    </tfoot>
                </table>
                </div>  
            </div>
        </div>
</asp:Content>
