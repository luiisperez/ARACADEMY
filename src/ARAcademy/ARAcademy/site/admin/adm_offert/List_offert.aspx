<%@ Page Title="" Language="C#" MasterPageFile="~/site/admin/Admin_home.Master" AutoEventWireup="true" CodeBehind="List_offert.aspx.cs" Inherits="ARAcademy.site.admin.adm_offert.List_offert" %>
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
                title: 'Oferta Eliminada exitosamente.',
                width: 500,
                padding: '3em',
                imageUrl: "/site/home/images/Check_Mark.png",
                imageAlt: 'Custom image',
                background: '#fff ',
            }).then(function (result) {
                if (result.value) {
                    window.location = "/site/admin/adm_offert/List_offert.aspx";
                }
            })
        }
        function alertmeErr() {
            Swal.fire({
                title: 'Ha ocurrido un error al eliminar la oferta.',
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

        <div class="row" style="width: 100%;">
            <div class="col-4" style="text-align:center; background: #00194f; border-radius: 5px">
                <label style="color:white">Ofertas</label>
            </div>
        </div>

    <div class="row justify-content-center">
        <h3>Listado de ofertas</h3>
        </div> 

    <div class="row justify-content-center">
        <div class="col-md-10">
            <div class="table-responsive" > 
                    <table id="table" class="table table-striped table-bordered" style="width:100%">
                    <thead>
                        <tr>
                            <th style="display:none">id</th>
                            <th>Nombre</th>
                            <th>Cantidad de articulos</th>
                            <th>Porcentaje</th>
                            <th>Fecha inicio</th>
                            <th>Fecha fin</th>
                            <th>Descripcion</th>
                            <th>Acciones</th>
                        </tr>
                    </thead>

                    <tbody id="tableRows">
                        <asp:Repeater ID="off_data" runat="server" OnItemCommand="off_ItemCommand">
                            <ItemTemplate>
                                    <tr id="<%# Eval("Id") %>">
                                        <td style="display:none"> <asp:Label ID="Id" runat="server" text='<%# Eval("id") %>'></asp:Label>
                                        <td> <asp:Label ID="Name" runat="server" text='<%# Eval("Name") %>'></asp:Label></td>
                                        <td> <asp:Label ID="email" runat="server" text='<%# Eval("MinArticles") %>'></asp:Label></td>
                                        <td><%# Eval("Percentage") %></td>
                                        <td><%# Eval("InitDate") %></td>
                                        <td><%# Eval("EndDate") %></td>
                                        <td><%# Eval("Description") %></td>
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
                            <th style="display:none">id</th>
                            <th>Nombre</th>
                            <th>Cantidad de articulos</th>
                            <th>Porcentaje</th>
                            <th>Fecha inicio</th>
                            <th>Fecha fin</th>
                            <th>Descripcion</th>
                            <th>Acciones</th>
                        </tr>
                    </tfoot>
                </table>
                </div>  
            </div>
        </div> 

</asp:Content>
