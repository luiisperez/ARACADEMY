<%@ Page Title="" Language="C#" MasterPageFile="~/site/admin/Admin_home.Master" AutoEventWireup="true" CodeBehind="list_top.aspx.cs" Inherits="ARAcademy.site.admin.list_top" %>
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
                title: 'Status actualizado exitosamente.',
                width: 500,
                padding: '3em',
                imageUrl: "../home/images/Check_Mark.png",
                imageAlt: 'Custom image',
                background: '#fff ',
            })
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row justify-content-center">
        <h3>Listado de topicos</h3>
        <div class="col-md-10">
            <div class="table-responsive" > 
                    <table id="table" class="table table-striped table-bordered" style="width:100%">
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>Nombre</th>
                            <th>Acciones</th>
                        </tr>
                    </thead>

                    <tbody id="tableRows">
                        <asp:Repeater ID="top_data" runat="server">
                            <ItemTemplate>
                                    <tr id="<%# Eval("Id") %>">
                                        <td> <asp:Label ID="email" runat="server" text='<%# Eval("Id") %>'></asp:Label></td>
                                        <td><%# Eval("name") %></td>
                                        <td>
                                            <asp:ImageButton ID="modify" runat="server" Text="Editar" ImageUrl="~/site/home/images/assign.svg" Height="25px" Width="25px" ToolTip="Editar" />
                                            <asp:ImageButton ID="delete" runat="server" Text="Inhabilitar / Habilitar" ImageUrl="~/site/home/images/trash.svg" Height="26px" Width="26px" ToolTip="Inhabilitar / Habilitar" />
                                        </td>
                                    </tr>              
                            </ItemTemplate>
                        </asp:Repeater>
                    </tbody>
                    <tfoot>
                        <tr>
                            <th>ID</th>
                            <th>Nombre</th>
                            <th>Acciones</th>
                        </tr>
                    </tfoot>
                </table>
                </div>  
            </div>
        </div>  
</asp:Content>
