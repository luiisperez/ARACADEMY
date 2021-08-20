<%@ Page Title="" Language="C#" MasterPageFile="~/site/student/Student_home.Master" AutoEventWireup="true" CodeBehind="create_class.aspx.cs" Inherits="ARAcademy.site.student.create_class" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
<script src="js/calendar.js">  </script>
<link rel="stylesheet" href="css/calendar.css">
<link rel="stylesheet" href="css/style.css">
<link href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>
<script src="https://cdn.jsdelivr.net/npm/promise-polyfill"></script>
<link href="//cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/4.17.37/css/bootstrap-datetimepicker.css" rel="stylesheet"/>
<script src="https://unpkg.com/gijgo@1.9.13/js/gijgo.min.js" type="text/javascript"></script>
<script src="/site/admin/js/jquery.dataTables.min.js"></script>
<script src="/site/admin/js/dataTables.bootstrap4.min.js"></script>
<link href="https://unpkg.com/gijgo@1.9.13/css/gijgo.min.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="/site/admin/css/Datatable.css">
<link rel="stylesheet" href="/site/admin/css/fade.css">
<link rel="stylesheet" href="/site/admin/css/util.css">
<script>
    function alertme_succ() {
        Swal.fire({
            title: 'Clase creada exitosamente',
            width: 400,
            padding: '3em',
            imageUrl: "/site/home/images/Check_Mark.png",
            imageAlt: 'Custom image',
            background: '#fff ',
        })
            .then(function (result) {
                if (result.value) {
                    window.location = "/site/student/mis_clases.aspx";
                }
            })
    }
    function alertme() {
        Swal.fire({
            title: 'Ha ocurrido un error al registrar la clase, verifique la información',
            width: 400,
            padding: '3em',
            imageUrl: "/site/home/images/Alert_mark.png",
            imageAlt: 'Custom image',
            background: '#fff ',
        })
            .then(function (result) {
                if (result.value) {
                    window.location = "/site/student/stud_menu.aspx";
                }
            })
    }
    function alertme_err_class() {
        Swal.fire({
            title: 'No posee clases disponibles para este modulo',
            width: 400,
            padding: '3em',
            imageUrl: "/site/home/images/Alert_mark.png",
            imageAlt: 'Custom image',
            background: '#fff ',
        })
            .then(function (result) {
                if (result.value) {
                    window.location = "/site/student/stud_menu.aspx";
                }
            })
    }
</script>
<style>
    .input-group-append {
        display: none;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<div class="container">

    <div class="row justify-content-center">
        <div class="col-10">
          <div class="card" style="margin:5%">
            <div class="card-body" >

                <h3 style="font-weight:bold; text-align:center; margin-bottom:5%">Agendar Clase</h3>

                <div class="row">

                        <div class="col-6">
                            <h6 align="left" style="font-weight:bold; color:black">Seleccione el Modulo</h6>
                            <asp:DropDownList ID="list_section" class="form-control select2" runat="server" style="background-color: #eee; padding: 0px 10px;margin: 8px 0; width:100%; border:none;" OnSelectedIndexChanged="topic__SelectedIndexChanged"  required="required" AutoPostBack="True" >
                            </asp:DropDownList>
                        </div>

                        <div class="col-6">
                            <h6 align="left" style="font-weight:bold; color:black">Seleccione el Tópico</h6>
                            <asp:DropDownList ID="list_topics" class="form-control select2" runat="server" style="background-color: #eee; padding: 0px 10px;margin: 8px 0; width:100%; border:none;"  required="required"  AutoPostBack="True" >
                            </asp:DropDownList>
                        </div>

                </div>

                <div class="row"></div>

                <div class="row">
                <div class="col-6">
                <h6 align="left" style="font-weight:bold; color:black">Fecha de Inicio</h6>
                <input id="fec_ini" class="datepicker" placeholder="Fecha de Inicio" runat="server" style="background-color: #eee; border: none; padding: 27px 15px;margin: 0px 0; width: 100%;" required="required"/>                                    
                <script>
                    $('.datepicker').datepicker({
                        uiLibrary: 'bootstrap4'
                    });
                </script>

                </div>

                <div class="col-6">
                <h6 align="left" style="font-weight:bold; color:black">Hora de Inicio</h6>	                                    
                <select id="Hora" runat="server" class="form-control select2" style="background-color: #eee; padding: 0px 15px;margin: 8px 0; width:100%; border:none; height:65%" required="required">
	                <option value="10:00:00" >10:00am</option> 
	                <option value="11:00:00" >11:00am</option> 
	                <option value="12:00:00" >12:00pm</option> 
	                <option value="13:00:00" >01:00pm</option> 
	                <option value="14:00:00" >02:00pm</option> 
                    <option value="15:00:00" >03:00pm</option>
                    <option value="16:00:00" >04:00pm</option>
                </select>
                </div>
                </div>

                <div class="form-group" style="margin-top:4%; text-align:center;">
                    <asp:button runat="server" Style="background-color:#00194f;color:white;width:35%;border-radius: 20px; height:auto" OnClick="Create_Class" Text="Agendar"/>
                </div>
                </div>
              </div>
        </div>
</div>
</div>
</asp:Content>
