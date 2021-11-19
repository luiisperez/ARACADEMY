﻿<%@ Page Title="" Language="C#" MasterPageFile="~/site/admin/Admin_home.Master" AutoEventWireup="true" CodeBehind="pago_est.aspx.cs" Inherits="ARAcademy.site.admin.adm_reports.pago_est" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<link href="//cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/css/bootstrap.css" rel="stylesheet"/>
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
<script src="https://unpkg.com/gijgo@1.9.13/js/gijgo.min.js" type="text/javascript"></script>
<link href="https://unpkg.com/gijgo@1.9.13/css/gijgo.min.css" rel="stylesheet" type="text/css" />
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>
<script src="https://cdn.jsdelivr.net/npm/promise-polyfill"></script>
<link rel="stylesheet" href="/site/admin/css/util.css">

    <%--_______--%>
    <link rel="stylesheet" href="/site/admin/css/Datatable.css">
    <script src="/site/admin/js/jquery.dataTables.min.js"></script>
    <script src="/site/admin/js/dataTables.bootstrap4.min.js"></script>


        <script>
            $(document).ready(function () {
                $('#table').DataTable();
            });
        </script>

<script type="text/javascript">
    // When the document is ready
    $(document).ready(function () {

        $("input[id*='fec_in']").datepicker({
            format: "dd/mm/yyyy"
        });

    });
</script>
<script type="text/javascript">
    // When the document is ready
    $(document).ready(function () {

        $("input[id*='fec_fin']").datepicker({
            format: "dd/mm/yyyy"
        });

    });
</script>
<style>
        .gj-datepicker-md [role=right-icon] {
            display: none;
        }

        .custom-select-sm {
            height: calc(2rem + 2px);
            padding-top: 0.375rem;
            padding-bottom: 0.375rem;
            font-size: 75%;
            font-family: "Poppins", Arial, sans-serif;
        }

        div.dataTables_wrapper div.dataTables_filter input {
            margin-left: 0.5em;
            display: inline-block;
            width: auto;
            font-size: medium;
            font-family: "Poppins", Arial, sans-serif;
        }

        .navbar-light .navbar-nav .show > .nav-link, .navbar-light .navbar-nav .active > .nav-link, .navbar-light .navbar-nav .nav-link.show, .navbar-light .navbar-nav .nav-link.active {
            color: rgba(0, 0, 0, 0.9);
            font-size: 15px;
            font-family: "Poppins", Arial, sans-serif;
        }
</style>

<link href="../css/bootstrap/mixins/bootstrap-datepicker.css" rel="stylesheet"/>
    
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
        <div class="row justify-content-center" style="font-size:15px; font-family:Poppins, Arial, sans-serif;">
            <div class="row" style="width: 100%;">
                <div class="col-4" style="text-align:center; background: #00194f; border-radius: 5px">
                <label style="color:white;font-weight: lighter;"> Reportes Generales </label>
                </div>
            </div>
            <div class="col-md-12">

                <div class="card" style="margin:2% 10% 2% 10%; box-shadow:0 4px 8px 0 rgba(0,0,0,0.2)">
                    
                    <div class="card-body" style="margin:2%">

                            <h3 style="font-weight:bold; text-align:center; margin-bottom:5%">Pago por modulo</h3>

                            <div class="row">
                                <div class="col-4">
                                    <label>Seleccione Grado</label>
	                                <asp:DropDownList ID="list_grades" runat="server" style="background-color: #eee ;padding: 10px 10px;margin: 8px 0; width:100%; border:none;" required="required" OnSelectedIndexChanged="grade__SelectedIndexChanged"  AutoPostBack="True" >
                                    </asp:DropDownList>
                                </div>

                                <div class="col-4">
                                    <label>Seleccione Curso</label>
	                                <asp:DropDownList ID="list_course" runat="server" Enabled="false" style="background-color: #eee; padding: 10px 10px;margin: 8px 0; width:100%; border:none;" OnSelectedIndexChanged="course__SelectedIndexChanged" required="required" AutoPostBack="True"  >
                                    </asp:DropDownList>
                                </div>

                                <div class="col-4">
                                    <label>Seleccione Módulo</label>
	                                <asp:DropDownList ID="list_section" runat="server" Enabled="false" style="background-color: #eee; padding: 10px 10px;margin: 8px 0; width:100%; border:none;" required="required" AutoPostBack="True"  >
                                    </asp:DropDownList>
                                </div>
                            </div>

                            <div class="row" style="margin-top:10px">
                                <asp:button runat="server" type="button" Text="Generar reporte" class="btn btn-success btn-lg btn-block login-button" style="border-radius:20px; width:auto; text-align:center;margin:auto" OnClick="pago_search" required="required" /> 
                            </div>

                    </div>

                </div>
            </div>
        </div>

    <div class="row justify-content-center" style="font-size:15px">
    <div class="col-md-12">
    <div  style="margin:2% 10% 2% 10%">
    <div id="div_table" class="table-responsive" runat="server" > 

                <div id="table_wrapper" class="dataTables_wrapper dt-bootstrap4">


            <table id="table" class="table table-striped table-bordered" style="width:100%;" >
            <thead>
                <tr>
                    <th>Nombre</th>
                    <th>Apellido</th>
                    <th>Email</th>
                    <th>Codigo de venta</th>
                    <th>Fecha de pago</th>
                    <th>Monto</th>
                </tr>
            </thead>

            <tbody id="tableRows">
                    <asp:Repeater ID="prof_pagos" runat="server">
                        <ItemTemplate>
                                <tr id="<%# Eval("Id") %>">
                                    <td><%# Eval("student.name") %></td>
                                    <td><%# Eval("student.lastname") %></td>
                                    <td><%# Eval("student.email") %></td>
                                    <td><%# Eval("PaypalTransactionId") %></td>
                                    <td><%# Eval("PaymentDate") %></td>
                                    <td><%# Eval("Amount") + "€" %></td>
                                </tr>              
                        </ItemTemplate>
                    </asp:Repeater>
            </tbody>
        </table>
        </div>  
         </div>
        </div>
        </div>

<%--                <div class="row" style="text-align:center; margin-bottom:20px">
                    <asp:button ID="export" runat="server" type="button" Text="Generar CSV" class="btn btn-success btn-lg btn-block login-button" style="border-radius:20px; text-align: center; width:auto; margin:auto"/> 
                </div>--%>
    </div>
</asp:Content>
