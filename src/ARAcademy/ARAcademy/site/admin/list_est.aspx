<%@ Page Title="" Language="C#" MasterPageFile="~/site/admin/Admin_home.Master" AutoEventWireup="true" CodeBehind="list_est.aspx.cs" Inherits="ARAcademy.site.admin.list_est" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700,800,900" rel="stylesheet">	
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="css/Datatable.css">
    <link rel="stylesheet" href="css/fade.css">
    <link rel="stylesheet" href="css/main.css">
    <link rel="stylesheet" href="css/util.css">
    <script src="js/jquery.min.js"></script>
    <script src="js/popper.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/main.js"></script>
    <script src="js/jquery-3.5.1.js"></script>
    <script src="js/jquery.dataTables.min.js"></script>
    <script src="js/dataTables.bootstrap4.min.js"></script>
    <script>
        $(document).ready(function () {
            $('#table').DataTable();
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div class="row justify-content-center">
        <h3>Listado de estudiantes</h3>
        <div class="col-md-10">
            <div class="table-responsive" > 
                    <table id="table" class="table table-striped table-bordered" style="width:100%">
                    <thead>
                        <tr>
                            <th>Nombre</th>
                            <th>Email</th>
                            <th>Fecha de nacimiento</th>
                            <th>Telefono</th>
                            <th>Pais</th>
                        </tr>
                    </thead>

                    <tbody id="tableRows">
                        <asp:Repeater ID="estu_data" runat="server">
                            <ItemTemplate>
                                    <tr id="<%# Eval("Email") %>">
                                        <td><%# Eval("name") %> <%# Eval("lastName") %></td>
                                        <td><%# Eval("Email") %></td>
                                        <td><%# Eval("birthDate") %></td>
                                        <td><%# Eval("phone") %></td>
                                        <td><%# Eval("country") %></td>
                                    </tr>              
                            </ItemTemplate>
                        </asp:Repeater>
                    </tbody>
                    <tfoot>
                        <tr>
                            <th>Nombre</th>
                            <th>Email</th>
                            <th>Fecha de nacimiento</th>
                            <th>Telefono</th>
                            <th>Pais</th>
                        </tr>
                    </tfoot>
                </table>
                </div>  
            </div>
        </div>  
</asp:Content>
