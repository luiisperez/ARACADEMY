<%@ Page Title="" Language="C#" MasterPageFile="~/site/admin/Admin_home.Master" AutoEventWireup="true" CodeBehind="list_mod_prof.aspx.cs" Inherits="ARAcademy.site.admin.adm_professor.list_mod_prof" %>
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
    <style>
        .input-group-append {
            display: none;
        }
    </style>
    <script>
        function alertme() {
            Swal.fire({
                title: 'Modulo-Profesor eliminado exitosamente',
                width: 400,
                padding: '3em',
                imageUrl: "/site/home/images/Check_Mark.png",
                imageAlt: 'Custom image',
                background: '#fff ',
            })
                .then(function (result) {
                    if (result.value) {
                        window.location = "/site/admin/adm_professor/prof_menu.aspx";
                    }
                })
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

        <div class="row" style="width: 100%;">
            <div class="col-4" style="text-align:center; background: #00194f; border-radius: 5px">
                <label style="color:white">Profesores</label>
            </div>
        </div>

<%--    <div class="container">--%>
        <div class="row justify-content-center">
            <div class="col-md-12">
                <div class="card" style="margin:5%">
                    <div class="card-body" >

                            
                            <h3 style="font-weight: bold; text-align: center; margin-bottom: 5%">Visualización y gestión - módulo de profesores</h3>

                            <div class="row">

                                <div class="col-md-4">
                                    <h4 style="padding: 10px">Seleccione el profesor:</h4>
                                </div>

                                <div class="col-md-8">
                                    <asp:DropDownList ID="list_prof" runat="server" style="background-color: #eee; padding: 13px 15px;margin: 8px 0; width:100%; border:none; height:80%; " required="required" OnSelectedIndexChanged="sections__SelectedIndexChanged"  AutoPostBack="True" >
                                    </asp:DropDownList>
                                </div>

                            </div>



                            <!-- Listado de profesores  -->
                            <div class="row justify-content-center" style="padding-top:30px">
                            <div class="col-md-12">
                                <div class="table-responsive"> 
                                        <table id="table" class="table table-striped table-bordered" style="width:100%">
                                        <thead>
                                            <tr>
                                                <th>Id</th>
                                                <th>Nombre</th>
                                                <th>Acción</th>
                                            </tr>
                                        </thead>

                                        <tbody id="tableRows">
                                            <asp:Repeater ID="prof_data" runat="server" OnItemCommand="prof_ItemCommand" >
                                                <ItemTemplate>
                                                        <tr id="<%# Eval("Section.Id") %>">
                                                            <td> <asp:Label ID="id" runat="server" text='<%# Eval("Id") %>'></asp:Label></td>
                                                            <td><%# Eval("Section.Name") %></td>
                                                            <td>
<%--                                                                <asp:ImageButton ID="modify"  runat="server" Text="Editar" ImageUrl="~/site/home/images/assign.svg" Height="25px" Width="25px" ToolTip="Editar" /> --%>
                                                                <asp:ImageButton ID="delete" runat="server" Text="Inhabilitar / Habilitar" ImageUrl="~/site/home/images/trash.svg" Height="26px" Width="26px" ToolTip="Inhabilitar / Habilitar" />                                            
                                                            </td>
                                                        </tr>              
                                                </ItemTemplate>
                                            </asp:Repeater>
                                        </tbody>
                                        <tfoot>
                                            <tr>
                                                <th>Id</th>
                                                <th>Nombre</th>
                                                <th>Acción</th>
                                            </tr>
                                        </tfoot>
                                    </table>
                                    </div>  

                                </div>
                            </div> 

                            <div class="form-group" style="margin-top:7%">
<%--                                <asp:button runat="server" type="button" Text="Actualizar" class="btn btn-success btn-lg btn-block login-button" style="border-radius:20px; width:30%; margin:auto; border:0px" onclick="Register_Prof" required="required" /> --%>
                            </div>
                    </div>
                </div>
            </div>
        </div>
    


</asp:Content>
