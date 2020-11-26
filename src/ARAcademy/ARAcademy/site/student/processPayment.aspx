<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="processPayment.aspx.cs" Inherits="ARAcademy.site.student.processPayment" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
        <script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>
    <script src="sweetalert2.all.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/promise-polyfill"></script>
    <script src="sweetalert2.min.js"></script>
    <link rel="stylesheet" href="sweetalert2.min.css"/>
    <script>
        function alertme() {
            Swal.fire({
                title: 'Pago realizado exitosamente.',
                width: 500,
                padding: '3em',
                imageUrl: "/site/home/images/Check_Mark.png",
                imageAlt: 'Custom image',
                showConfirmButton: false,
                background: '#fff ',
                timer:1500
            }).then(function () {
                window.location = "/site/student/stud_menu.aspx";
            })
        }
        function alertmeErr() {
            Swal.fire({
                title: 'Ha ocurrido un error al realizar la transacción',
                width: 500,
                padding: '3em',
                imageUrl: "/site/home/images/Check_Mark.png",
                imageAlt: 'Custom image',
                showConfirmButton: false,
                background: '#fff ',
                timer: 1500
            }).then(function () {
                window.location = "/site/student/stud_menu.aspx";
            })
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
    </form>
</body>
</html>
