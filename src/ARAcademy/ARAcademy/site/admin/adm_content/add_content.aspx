<%@ Page Title="" Language="C#" MasterPageFile="~/site/admin/Admin_home.Master" AutoEventWireup="true" CodeBehind="add_content.aspx.cs" Inherits="ARAcademy.site.admin.adm_content.add_content" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Carga de Documentos</title>
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet"/>
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>
    <script src="sweetalert2.all.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/promise-polyfill"></script>
    <script src="sweetalert2.min.js"></script>
    <link rel="stylesheet" href="sweetalert2.min.css">
    <script>
        function alertme_succ() {
            Swal.fire({
                title: 'Documento cargado exitosamente',
                width: 400,
                padding: '3em',
                imageUrl: "/site/home/images/Check_Mark.png",
                imageAlt: 'Custom image',
                background: '#fff ',
            })
                .then(function (result) {
                    if (result.value) {
                        window.location = "/site/admin/mod_menu.aspx";
                    }
                })
        }
        function alertme() {
            Swal.fire({
                title: 'Ha ocurrido un error al cargar un documento, verifique la información',
                width: 400,
                padding: '3em',
                imageUrl: "/site/home/images/Alert_mark.png",
                imageAlt: 'Custom image',
                background: '#fff ',
            })
        }
    </script>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <body>

        <form id="form1">
            <div class="container">

                <div class="row justify-content-center">
                    <div class="col-md-8">
                        <div class="card" style="margin: 5%">
                            <div class="card-body">

                                <h3 style="font-weight: bold; text-align: center; margin-bottom: 5%">Carga de material académico</h3>

                                <div class="col-md-12">
                                <h5 style="font-weight:bold; text-align:left; margin:10px 0px 10px 0px">Definición de tópico a asociar con el documento</h5>
                                </div>

                                <div class="row">
                                    <div class="col-6">
                                        <asp:DropDownList ID="list_grades" runat="server" Style="background-color: #eee; padding: 13px 15px; margin: 8px 0; width: 100%; border: none; height: 80%;" required="required" OnSelectedIndexChanged="grade__SelectedIndexChanged" AutoPostBack="True">
                                        </asp:DropDownList>
                                    </div>
                                    <div class="col-6">
                                        <asp:DropDownList ID="list_course" runat="server" Enabled="false" Style="background-color: #eee; padding: 13px 15px; margin: 8px 0; width: 100%; border: none; height: 80%;" OnSelectedIndexChanged="course__SelectedIndexChanged" required="required" AutoPostBack="True">
                                        </asp:DropDownList>
                                    </div>
                                </div>

                                <div class="row">
                                    <div class="col-6">
                                        <asp:DropDownList ID="list_section" runat="server" Enabled="false" Style="background-color: #eee; padding: 13px 15px; margin: 8px 0; width: 100%; border: none; height: 80%;" OnSelectedIndexChanged="topic__SelectedIndexChanged" required="required" AutoPostBack="True">
                                        </asp:DropDownList>
                                    </div>

                                    <div class="col-6">
                                        <asp:DropDownList ID="list_topic" runat="server" Enabled="false" Style="background-color: #eee; padding: 13px 15px; margin: 8px 0; width: 100%; border: none; height: 80%;" required="required" AutoPostBack="True">
                                        </asp:DropDownList>
                                    </div>
                                </div>

                                <div>
                                    <asp:FileUpload ID="FileManager" runat="server" Style="padding-top:20px"/>
                                </div>
                                <asp:Button ID="AceptarBtn" type="button" runat="server" class="btn btn-success btn-lg btn-block login-button" style="border-radius:20px; width:30%; margin:auto; border:0px;margin-top:30px" Text="Cargar" OnClick="AceptarBtn_Click" />


                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </form>

    </body>

</asp:Content>
