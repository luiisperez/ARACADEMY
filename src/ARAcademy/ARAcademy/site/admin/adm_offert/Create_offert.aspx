<%@ Page Title="" Language="C#" MasterPageFile="~/site/admin/Admin_home.Master" AutoEventWireup="true" CodeBehind="Create_offert.aspx.cs" Inherits="ARAcademy.site.admin.adm_offert.Create_offert" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
    
    
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <link href="//cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/css/bootstrap.css" rel="stylesheet"/>
    <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
    <script src="https://unpkg.com/gijgo@1.9.13/js/gijgo.min.js" type="text/javascript"></script>
    <link href="https://unpkg.com/gijgo@1.9.13/css/gijgo.min.css" rel="stylesheet" type="text/css" />
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>
    <script src="https://cdn.jsdelivr.net/npm/promise-polyfill"></script>


    <script>
        function alertme_succ() {
            Swal.fire({
                title: 'Oferta creada exitosamente',
                width: 400,
                padding: '3em',
                imageUrl: "/site/home/images/Check_Mark.png",
                imageAlt: 'Custom image',
                background: '#fff ',
            })
                .then(function (result) {
                    if (result.value) {
                        window.location = "site/admin/adm_offert/adm_offerts.aspx";
                    }
                })
        }
        function alertme() {
            Swal.fire({
                title: 'Ha ocurrido un error, verifique información',
                width: 400,
                padding: '3em',
                imageUrl: "/site/home/images/Alert_mark.png",
                imageAlt: 'Custom image',
                background: '#fff ',
            })
        }
    </script>
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
        }

        div.dataTables_wrapper div.dataTables_filter input {
            margin-left: 0.5em;
            display: inline-block;
            width: auto;
            font-size: medium;
        }

        .navbar-light .navbar-nav .show > .nav-link, .navbar-light .navbar-nav .active > .nav-link, .navbar-light .navbar-nav .nav-link.show, .navbar-light .navbar-nav .nav-link.active {
            color: rgba(0, 0, 0, 0.9);
            font-size: 15px;
        }
    </style>

    <link href="../css/bootstrap/mixins/bootstrap-datepicker.css" rel="stylesheet"/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

        <div class="row" style="width: 100%;">
            <div class="col-4" style="text-align:center;font-size:15px; background: #00194f; border-radius: 5px">
                <label style="color:white">Ofertas</label>
            </div>
        </div>
        <div class="row justify-content-center" style="font-size:15px">
        <div class="col-md-12">
            <div class="card" style="margin:5%">
                <div class="card-body" >

                        <h3 style="font-weight:bold; text-align:center; margin-bottom:5%">Creación de ofertas</h3>

                        <div class="row" style="margin-bottom: 1%">
                            <div class="col-1"></div>
                            <div class="col-3" style="text-align:center">     
                                <label>Fecha Inicio</label>
                                <asp:TextBox ID="fec_in" runat="server" Width="100%" BorderStyle="Double" BorderWidth="1" required="required"  AutoCompleteType="Disabled"></asp:TextBox>
                            </div>
                            <div class="col-3" style="text-align:center; align-items:center">
                                    <label>Fecha Fin</label>
                                <asp:TextBox ID="fec_fin" runat="server" Width="100%" BorderStyle="Double" BorderWidth="1" required="required" AutoCompleteType="Disabled"></asp:TextBox>
                            </div>
                            <div class="col-2" style="text-align:center">
                                <label>Cantidad de articulos</label>
                                <div class="input-group" style="height:50%">
                                    <asp:dropdownlist runat="server" id="minArticles" style="width:100%" required="required"> </asp:dropdownlist>
                                </div>
                            </div>
                            <div class="col-2" style="text-align:center">
                                <label>Porcentaje de la oferta</label>
                                <div class="input-group" style="height:50%">
                                    <asp:dropdownlist runat="server" id="porcentaje" style="width:100%" required="required"> </asp:dropdownlist>
                                </div>
                            </div>
                            <div class="col-1"></div>
                        </div>

                        <div class="row">
                            <div class="col-1"></div>
                            <div class="col-10" >
                                <label>Nombre de la oferta</label>
	                            <div class="input-group">
                                    <input runat="server" type="text" class="form-control" name="name" id="name" style="background-color: #eee; border: none; padding: 27px 15px;margin: 8px 0; width: 100%;" required="required" />
                                </div>
                            </div>
                            <div class="col-1"></div>
                        </div>

                        <div class="row">
                            <div class="col-1"></div>
                            <div class="col-10" >
                                <label>Descripción de la oferta</label>
	                            <div class="input-group">
                                    <input runat="server" type="text" class="form-control" name="name" id="description" style="background-color: #eee; border: none; padding: 27px 15px;margin: 8px 0; width: 100%;" required="required" />
                                </div>
                            </div>
                            <div class="col-1"></div>
                        </div>

                        <div class="form-group" style="margin-top:7%">
                            <asp:button runat="server" type="button" Text="Crear Oferta" class="btn btn-success btn-lg btn-block login-button" style="border-radius:20px; width:30%; margin:auto; border:0px"  required="required" OnClick="Create_offerts"/> 
                        </div>
                    </div>
            </div>

            </div>
        </div>

</asp:Content>
