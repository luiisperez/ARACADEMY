<%@ Page Title="" Language="C#" MasterPageFile="~/site/student/Student_home.Master" AutoEventWireup="true" CodeBehind="pago_plan.aspx.cs" Inherits="ARAcademy.site.student.pago_stu" %>
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
                title: 'Agregado al carrito exitosamente'
            })
		}
		function alertmeErr() {
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
                icon: 'error',
                title: 'Ya este modulo existe en el carrito'
            })
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="box" style="margin:3%;">
    <div class="container">
		<h3 style="text-align:center; font-weight:bold">Selecciona la materia</h3>
     	<div class="row">
			    <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
               
					<div class="box-part text-center" style="border-style:groove; border-radius:5%">
                        
                        <div class="svg-icon" style="margin-top:10%">
							<img src="/site/home/images/flaticon/svg/maths.svg" alt="Image" class="img-fluid" style="width:15%;" runat="server" onclick="course_selected">
						</div>  
						
						<div class="title">
							<h4>Matematica</h4>
						</div>
                        
						<div class="text" style="margin-bottom:10%">
							<span style="color:black"> Prácticas</span>
							<br>
							<asp:Button runat="server" Style="background-color:#00194f;color:white;width:35%;border-radius: 20px;" OnClick="course_selected_mate" Text="Seleccione"/>
						</div>
                        
					 </div>
				</div>	 
				
				 <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
               
					<div class="box-part text-center" style="border-style:groove; border-radius:5%">
					    
                        <div class="svg-icon" style="margin-top:10%">
                            <img src="/site/home/images/flaticon/svg/book.svg" alt="Image" class="img-fluid" style="width:15%;">
                        </div>
						
						<div class="title">
							<h4>Castellano</h4>
						</div>
                        
						<div class="text" style="margin-bottom:10%">
							<span style="color:black">Sesiones Prácticas</span>							
							<br>
							<asp:Button runat="server" Style="background-color:#00194f;color:white;width:35%;border-radius: 20px;" OnClick="course_selected_leng" Text="Seleccione"/>
						</div>
					 </div>
				</div>	 
				
				 <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
               
					<div class="box-part text-center" style="border-style:groove; border-radius:5%" runat="server" onclick="">

			            <div class="svg-icon" style="margin-top:10%">
		                    <img src="/site/home/images/flaticon/svg/english.svg" alt="Image" class="img-fluid" style="width:15%;">
                        </div>

						<div class="title">
							<h4>Ingles</h4>
						</div>
                        
						<div class="text" style="margin-bottom:10%">
							<span style="color:black">Sesiones Prácticas</span>								
							<br>
							<asp:Button runat="server" Style="background-color:#00194f;color:white;width:35%;border-radius: 20px;" OnClick="course_selected_ingl" Text="Seleccione"/>
						</div>
					 </div>
				</div>	 	
		
		</div>
		
		<div id="div_mod" runat="server" visible="false">

			<h4 style="font-weight:bold; margin-top:1%">Modulos de la materia</h4>

			<asp:Repeater ID="rb_mod" runat="server" OnItemCommand="add_cart">
					<ItemTemplate>
							<tr id="<%# Eval("Id") %>">
								<td> <asp:Label ID="Id" runat="server" text='<%# Eval("Id") %>' Visible="false"></asp:Label></td>
								<div class="row" margin-bottom: 1.5%;"> 
									<div style="margin-left:2%">
									<td> <asp:Label ID="name" runat="server" text='<%# Eval("Name") %>'></asp:Label></td>
									</div>
									<div style="margin-right:40%; margin-left:auto">
									<td> <asp:Label ID="email" runat="server"  text='<%# Eval("Amount") %>'></asp:Label></td>
									</div>
									<div style="margin-right:5%">
									<td>
									<asp:ImageButton ID="add" runat="server"  Text="Inhabilitar / Habilitar" ImageUrl="~/site/home/images/shopping-cart.png" Height="26px" Width="26px" ToolTip="Añadir al carrito" />
									</td>
									<br />
									</div>
								</div>
							</tr>              
					</ItemTemplate>
            </asp:Repeater>

		</div>

<%--		<div class="row">
			<asp:button id="btn_pay1" runat="server" Text="Continuar" Style="background-color:#00194f;color:white;width:15%;border-radius: 20px; position: fixed; bottom: 5px; left: 90%; margin-left: -10%" OnClick="send_data"/>
		</div>--%>
	</div>
</div>
</asp:Content>
