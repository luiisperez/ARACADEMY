<%@ Page Title="" Language="C#" MasterPageFile="~/site/admin/Admin_home.Master" AutoEventWireup="true" CodeBehind="horas_prof.aspx.cs" Inherits="ARAcademy.site.admin.adm_reports.horas_prof" %>
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
</style>

    <link href="../css/bootstrap/mixins/bootstrap-datepicker.css" rel="stylesheet"/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

            <div class="row justify-content-center">
            <div class="col-md-12">
                <div class="card" style="margin:5%">
                    <div class="card-body" >

                            <h3 style="font-weight:bold; text-align:center; margin-bottom:5%">Horas por profesor</h3>

                                <div class="row" style="margin-bottom: 2%">
                                    <div class="col-1"></div>
                                    <div class="col-5" style="text-align:center">     
                                        <label>Fecha Inicio</label>
                                        <asp:TextBox ID="fec_in" runat="server" Width="100%" BorderStyle="Double" BorderWidth="1" required="required"  AutoCompleteType="Disabled"></asp:TextBox>
                                    </div>
                                    <div class="col-5" style="text-align:center; align-items:center">
                                         <label>Fecha Fin</label>
                                        <asp:TextBox ID="fec_fin" runat="server" Width="100%" BorderStyle="Double" BorderWidth="1" required="required" AutoCompleteType="Disabled"></asp:TextBox>
                                    </div>
                                    <div class="col-1"></div>
                                </div>
                                    <div class="row" style="margin-bottom: 5%">
                                    <div class="col-1"></div>
                                    <div class="col-md-5">
	                                    <asp:DropDownList ID="list_prof" runat="server" style="background-color: #eee; padding: 13px 15px;margin: 8px 0; width:100%; border:none; height:80%; " required="required" AutoPostBack="True"  >
                                        </asp:DropDownList>
                                    </div>
                                    <div class="col-md-5">
                                        <asp:button runat="server" type="button" Text="Registrar" class="btn btn-success btn-lg btn-block login-button" style="border-radius:20px; width:70%; margin:auto; border:0px" OnClick="prof_search" required="required" /> 
                                    </div>
                                    <div class="col-1"></div>
                                </div>
                     </div>
                </div>

                </div>
            </div>

        <div class="row justify-content-center">
    <div class="col-md-12">
    <div  style="margin:1% 5% 5% 5%">
    <div id="div_table" class="table-responsive" runat="server" > 
            <table id="table" class="table table-striped table-bordered" style="width:100%;" >
            <thead>
                <tr>
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
</asp:Content>
