<%@ Page Title="" Language="C#" MasterPageFile="~/site/student/Student_home.Master" AutoEventWireup="true" CodeBehind="pago_mat.aspx.cs" Inherits="ARAcademy.site.student.pago_mat" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
	<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
	<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="css/style.css">
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
        function alertme() {
            const Toast = Swal.mixin({
            toast: true,
            position: 'top-end',
            showConfirmButton: false,
            timer: 3000,
            timerProgressBar: true,
            didOpen: (toast) => {
                toast.addEventListener('mouseenter', Swal.stopTimer)
                toast.addEventListener('mouseleave', Swal.resumeTimer)
            }
            })
            Toast.fire({
                icon: 'success',
                title: 'Modulo eliminado exitosamente'
            })
            window.location = "/site/student/pago_mat.aspx";
        }
    </script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div class="row justify-content-center" style="width:100%">
        <h3>Listado de articulos</h3>
        <div class="col-md-10">
            <div class="table-responsive" > 
                    <table id="table" class="table table-striped table-bordered" style="width:100%">
                    <thead>
                        <tr>    
                            <th></th>
                            <th>Nombre</th>
                            <th>Descripción</th>
                            <th>Precio</th>
                        </tr>
                    </thead>

                    <tbody id="tableRows">
                        <asp:Repeater ID="mod_data" runat="server" OnItemCommand="mod_ItemCommand">
                            <ItemTemplate>
                                    <tr id="<%# Eval("Id") %>">
                                        <td hidden > <asp:Label ID="Id" runat="server" text='<%# Eval("Id")  %>'></asp:Label></td>
                                        <td style="text-align:center">
                                            <asp:ImageButton ID="delete" runat="server" Text="Inhabilitar / Habilitar" ImageUrl="~/site/home/images/x-button.png" Height="15px" Width="15px" ToolTip="Eliminar ítem" />
                                        </td>
                                        <td> <asp:Label ID="name" runat="server" text='<%# Eval("Name") %>'></asp:Label></td>
                                        <td> <asp:Label ID="email" runat="server" text='<%# Eval("Description") %>'></asp:Label></td>
                                        <td><%# Eval("Amount") %></td>                    
                                    </tr>              
                            </ItemTemplate>
                        </asp:Repeater>
                    </tbody>
                </table>
                </div>
                        <span id="final_pri" style="float:right"> Monto Final: <%=monto%>$</span>
                        <br />
                        <span id="porcentaje" runat="server" style="float:right"> Descuento: <%=descuento%> $</span>
                        <br />
                        <span id="total_pago" runat="server" style="float:right"> Monto total a pagar: <%=total%> $</span>
                        <%--<br />
                        <span id="final_iva" style="float:right"> Monto Final: <%=iva%>$</span>
                        <br />
                        <span id="total" style="float:right"> Monto Final: <%=total%>$</span>--%>
                        <asp:button id="Button1" runat="server" Text="Oferta Academica" Style="background-color:#00194f;color:white;width:15%;border-radius: 20px; position: fixed; bottom: 10px;" OnClick="back_offert"/>
            		    <asp:button id="btn_pay1" runat="server" Text="Procesar Pago" Style="background-color:#00194f;color:white;width:15%;border-radius: 20px; position: fixed; bottom: 10px; left: 90%; margin-left: -13%" OnClick="checkout_Click"/>
            </div>
        </div> 
</asp:Content>
