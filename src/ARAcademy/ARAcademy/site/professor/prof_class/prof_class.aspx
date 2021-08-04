<%@ Page Title="" Language="C#" MasterPageFile="~/site/professor/Prof_home.Master" AutoEventWireup="true" CodeBehind="prof_class.aspx.cs" Inherits="ARAcademy.site.professor.prof_class.prof_class" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700,800,900" rel="stylesheet">	
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="../../admin/css/Datatable.css">
    <link rel="stylesheet" href="../../admin/css/fade.css">
    <link rel="stylesheet" href="../../admin/css/main.css">
    <link rel="stylesheet" href="../../admin/css/util.css">
    <script src="../../admin/js/jquery.min.js"></script>
    <script src="../../admin/js/popper.js"></script>
    <script src="../../admin/js/bootstrap.min.js"></script>
    <script src="../../admin/js/main.js"></script>
    <script src="../../home/js/jquery-3.3.1.min.js"></script>
    <script src="../../admin/js/jquery.dataTables.min.js"></script>
    <script src="../../admin/js/dataTables.bootstrap4.min.js"></script>
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
                title: 'Aún no está disponible esta clase',
                width: 400,        
                padding: '3em',
                imageUrl: "/site/home/images/Alert_mark.png",
                imageAlt: 'Custom image',
                background: '#fff ',
            })
        } 
        function alertme_err() {
            Swal.fire({
                title: 'Clase eliminada exitosamente',
                width: 400,
                padding: '3em',
                imageUrl: "/site/home/images/Alert_mark.png",
                imageAlt: 'Custom image',
                background: '#fff ',
            })
            .then(function (result) {
                if (result.value) {
                    window.location = "/site/professor/prof_menu.aspx";
                }
            })
        }
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
                            <th style="display:none;">Id</th>
                            <th>Módulo de Clase</th>
                            <th>Tópico</th>
                            <th>Horario</th>
                            <th>Acción</th>
                            <th style="display:none;"></th>
                        </tr>
                    </thead>

                    <tbody id="tableRows">
                        <asp:Repeater ID="class_data" runat="server" OnItemCommand="mat_ItemCommand">
                            <ItemTemplate>
                                    <tr id="<%# Eval("Id") %>">
                                        <td style="display:none"><asp:Label ID="Id" runat="server" text='<%# Eval("Id") %>'></asp:Label></td>
                                        <td><%# Eval("Section.Name") %></td>
                                        <td><%# Eval("Agenda") %></td>
                                        <td> <asp:Label ID="starttime" runat="server" text='<%# Eval("StartTime") %>'></asp:Label></td>
                                        <td style="text-align:center">
                                            <asp:ImageButton ID="cancel" runat="server" Text="Cancelar clase" ImageUrl="~/site/home/images/x-button.png" Height="26px" Width="26px" ToolTip="Cancelar clase" />
                                            <asp:ImageButton ID="join" runat="server" Text="Unirse" ImageUrl="~/site/home/images/checked_meeting.png" Height="25px" Width="25px" ToolTip="Unirse" />
                                        </td>
                                        <td style="display:none;" > <asp:Label ID="joinurl" runat="server" text='<%# Eval("JoinUrl") %>'></asp:Label></td>
                                    </tr>              
                            </ItemTemplate>
                        </asp:Repeater>
                    </tbody>
                </table>
                </div>  
            </div>
        </div>
</asp:Content>
