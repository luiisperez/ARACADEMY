<%@ Page Title="" Language="C#" MasterPageFile="~/site/student/Student_home.Master" AutoEventWireup="true" CodeBehind="pagos.aspx.cs" Inherits="ARAcademy.site.student.pagos" %>
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
    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="row justify-content-center">
    <h3>Listado de clases</h3>
</div>
<div class="row justify-content-center">
        <div class="col-md-10">
            <div class="table-responsive" > 
                    <table id="table" class="table table-striped table-bordered" style="width:100%">
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>Módulo Comprado</th>
                            <th>Monto</th>
                            <th>Fecha de pago</th>
                            <th>Número de Transacción</th>
                            <th>Clases Restantes</th>
                        </tr>
                    </thead>

                    <tbody id="tableRows">
                        <asp:Repeater ID="mod_data" runat="server">
                            <ItemTemplate>
                                    <tr id="<%# Eval("Id") %>">
                                        <td><%# Eval("Id") %></td>
                                        <td><%# Eval("Section.Name") %></td>
                                        <td><%# Eval("Amount") %></td>
                                        <td><%# Eval("PaymentDate") %></td>
                                        <td><%# Eval("PaypalTransactionId") %></td>
                                        <td><%# Eval("RemainingClasses" ) + "/10" %></td>
                                    </tr>              
                            </ItemTemplate>
                        </asp:Repeater>
                    </tbody>
                    <tfoot>
                        <tr>
                            <th>ID</th>                            
                            <th>Módulo Comprado</th>
                            <th>Monto</th>
                            <th>Fecha de pago</th>
                            <th>Número de Transacción</th>
                            <th>Clases Restantes</th>
                        </tr>
                    </tfoot>
                </table>
                </div>  
            </div>
        </div>
</asp:Content>
