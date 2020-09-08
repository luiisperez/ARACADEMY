<%@ Page Title="" Language="C#" MasterPageFile="~/site/admin/Admin_home.Master" AutoEventWireup="true" CodeBehind="list_mod_prof.aspx.cs" Inherits="ARAcademy.site.admin.adm_professor.list_mod_prof" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <link href="//cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/css/bootstrap.css" rel="stylesheet"/>
    <link href="//cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/4.17.37/css/bootstrap-datetimepicker.css" rel="stylesheet"/>
    <link href="css/util.css" rel="stylesheet"/>
    <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
    <script src="https://unpkg.com/gijgo@1.9.13/js/gijgo.min.js" type="text/javascript"></script>
    <link href="https://unpkg.com/gijgo@1.9.13/css/gijgo.min.css" rel="stylesheet" type="text/css" />
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
                title: 'Modulo actualizado exitosamente',
                width: 400,
                padding: '3em',
                imageUrl: "/site/home/images/Check_Mark.png",
                imageAlt: 'Custom image',
                background: '#fff ',
            })
                .then(function (result) {
                    if (result.value) {
                        window.location = "/site/admin/adm_professor/list_prof.aspx";
                    }
                })
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="card" style="margin:5%">
                    <div class="card-body" >

                            <h3 style="font-weight:bold; text-align:center; margin-bottom:5%">Actualización del módulo</h3>

                            <div class="row">
                                <div class="col-12">
                                    <asp:DropDownList ID="list_prof" runat="server" style="background-color: #eee; padding: 13px 15px;margin: 8px 0; width:100%; border:none; height:80%; " required="required" OnSelectedIndexChanged="sections__SelectedIndexChanged"  AutoPostBack="True" >
                                    </asp:DropDownList>
                                </div>
                            </div>

                            <!-- Listado de profesores  -->
                            <div class="row justify-content-center">
                            <h3>Listado de profesores</h3>
                            <div class="col-md-10">
                                <div class="table-responsive"> 
                                        <table id="table" class="table table-striped table-bordered" style="width:100%">
                                        <thead>
                                            <tr>
                                                <th>Nombre</th>
                                                <th>Email</th>
                                                <th>Fecha de nacimiento</th>
                                                <th>Telefono</th>
                                                <th>Pais</th>
                                                <th>Status</th>
                                                <th>Acciones</th>
                                            </tr>
                                        </thead>

                                        <tbody id="tableRows">
                                            <asp:Repeater ID="prof_data" runat="server" OnItemCommand="prof_ItemCommand" >
                                                <ItemTemplate>
                                                        <tr id="<%# Eval("Email") %>">
 <%--                                                           <td><%# Eval("name") %> <%# Eval("lastName") %></td>
                                                            <td> <asp:Label ID="email" runat="server" text='<%# Eval("Email") %>'></asp:Label></td>
                                                            <td><%# string.Format("{0:dd/MM/yyyy}", Eval("birthDate")) %></td>
                                                            <td><%# Eval("phone") %></td>
                                                            <td><%# Eval("country") %></td>
                                                            <td><%# Eval("status") %></td>
                                                            <td>
                                                                <asp:ImageButton ID="modify"  runat="server" Text="Editar" ImageUrl="~/site/home/images/assign.svg" Height="25px" Width="25px" ToolTip="Editar" /> 
                                                                <asp:ImageButton ID="delete" runat="server" Text="Inhabilitar / Habilitar" ImageUrl="~/site/home/images/trash.svg" Height="26px" Width="26px" ToolTip="Inhabilitar / Habilitar" />                                            
                                                            </td>--%>
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
                                                <th>Status</th>
                                                <th>Acciones</th>
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
    </div>


</asp:Content>
