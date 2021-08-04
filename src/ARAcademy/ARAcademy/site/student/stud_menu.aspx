<%@ Page Title="" Language="C#" MasterPageFile="~/site/student/Student_home.Master" AutoEventWireup="true" CodeBehind="stud_menu.aspx.cs" Inherits="ARAcademy.site.student.stud_menu" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
	
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
<script src="js/calendar.js">  </script>
<link rel="stylesheet" href="css/calendar.css">
<link rel="stylesheet" href="css/style.css">
<link href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>
<script src="sweetalert2.all.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/promise-polyfill"></script>
<script src="sweetalert2.min.js"></script>
<link rel="stylesheet" href="sweetalert2.min.css">
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

    $(document).ready(function start() {
        var date = new Date();
        var d = date.getDate();
        var m = date.getMonth();
        var y = date.getFullYear();
        /*  className colors
    	
        className: default(transparent), important(red), chill(pink), success(green), info(blue)
    	
        */
        /* initialize the external events
        -----------------------------------------------------------------*/
        $('#external-events div.external-event').each(function () {
            // create an Event Object (http://arshaw.com/fullcalendar/docs/event_data/Event_Object/)
            // it doesn't need to have a start or end
            var eventObject = {
                title: $.trim($(this).text()) // use the element's text as the event title
            };
            // store the Event Object in the DOM element so we can get to it later
            $(this).data('eventObject', eventObject);
            // make the event draggable using jQuery UI
            $(this).draggable({
                zIndex: 999,
                revert: true,      // will cause the event to go back to its
                revertDuration: 0  //  original position after the drag
            });
        });
        /* initialize the calendar
        -----------------------------------------------------------------*/
        var calendar = $('#calendar').fullCalendar({
            header: {
                left: 'title',
                //center: 'agendaDay,agendaWeek,month',
                right: 'prev,next today'
            },
            editable: true,
            firstDay: 1, //  1(Monday) this can be changed to 0(Sunday) for the USA system
            selectable: true,
            defaultView: 'month',
            axisFormat: 'h:mm',
            columnFormat: {
                month: 'ddd',    // Mon
                week: 'ddd d', // Mon 7
                day: 'dddd M/d',  // Monday 9/7
                agendaDay: 'dddd d'
            },
            titleFormat: {
                month: 'MMMM yyyy', // September 2009
                week: "MMMM yyyy", // September 2009
                day: 'MMMM yyyy'                  // Tuesday, Sep 8, 2009
            },
            allDaySlot: false,
            selectHelper: true,
            // Funcion que se activa al seleccionar un dia 
            select: function (start, end, allDay) {
                var title = prompt('Event Title:');
                if (title) {
                    calendar.fullCalendar('renderEvent',
                        {
                            title: title,
                            start: start,
                            end: end,
                            allDay: allDay
                        },
                        false // make the event "stick"
                    );
                }
                calendar.fullCalendar('unselect');
            },
            droppable: true, // this allows things to be dropped onto the calendar !!!
            drop: function (date, allDay) { // this function is called when something is dropped
                // retrieve the dropped element's stored Event Object
                var originalEventObject = $(this).data('eventObject');
                // we need to copy it, so that multiple events don't have a reference to the same object
                var copiedEventObject = $.extend({}, originalEventObject);
                // assign it the date that was reported
                copiedEventObject.start = date;
                copiedEventObject.allDay = allDay;
                // render the event on the calendar
                // the last `true` argument determines if the event "sticks" (http://arshaw.com/fullcalendar/docs/event_rendering/renderEvent/)
                $('#calendar').fullCalendar('renderEvent', copiedEventObject, true);
                // is the "remove after drop" checkbox checked?
                if ($('#drop-remove').is(':checked')) {
                    // if so, remove the element from the "Draggable Events" list
                    $(this).remove();
                }
            },
            events:  <%= jsonData %> ,
            <%--[
                {
                    title: '<%= list_class_aux[0].Agenda %>',
                    start: new Date('<%= list_class_aux[0].StartTime.Year %>','<%= list_class_aux[0].StartTime.Month %>','<%= list_class_aux[0].StartTime.Day %>'),
                    end: new Date('<%= list_class_aux[0].StartTime.Year %>', '<%= list_class_aux[0].StartTime.Month %>', '<%= list_class_aux[0].StartTime.Day %>'),
                    url: 'https://ccp.cloudaccess.net/aff.php?aff=5188',
                    className: 'success'
                }
            ],--%>            
        });
    });
</script>
    <script>
        $(document).ready(function () {
            $('#table').DataTable();
        });
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
    </script>
<style>
    .input-group-append {
        display: none;
    }
</style>
<style>

	body {

		text-align: center;
		font-size: 14px;
		font-family: 'Roboto', sans-serif;
		background:url(http://www.digiphotohub.com/wp-content/uploads/2015/09/bigstock-Abstract-Blurred-Background-Of-92820527.jpg);
	}
		
	#wrap {
		width: 1100px;
		margin: 0 auto;
	}
		
	#external-events {
		float: left;
		width: 150px;
		padding: 0 10px;
		text-align: left;
	}
		
	#external-events h4 {
		font-size: 16px;
		margin-top: 0;
		padding-top: 1em;
	}
		
	.external-event { /* try to mimick the look of a real event */
		margin: 10px 0;
		padding: 2px 4px;
		background: #3366CC;
		color: #fff;
		font-size: .85em;
		cursor: pointer;
	}
		
	#external-events p {
		margin: 1.5em 0;
		font-size: 11px;
		color: #666;
	}
		
	#external-events p input {
		margin: 0;
		vertical-align: middle;
	}

	#calendar {
/* 		float: right; */
        margin: 0 auto;
		width: 900px;
		background-color: #FFFFFF;
		  border-radius: 6px;
        box-shadow: 0 1px 2px #C3C3C3;
		-webkit-box-shadow: 0px 0px 21px 2px rgba(0,0,0,0.18);
        -moz-box-shadow: 0px 0px 21px 2px rgba(0,0,0,0.18);
        box-shadow: 0px 0px 21px 2px rgba(0,0,0,0.18);
	}

</style>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


<div id='wrap' style="margin-bottom:40px">
       
    <asp:Button runat="server" Style="background-color:#00194f;color:white;width:15%;border-radius: 20px; float:right; margin-right:10%; margin-bottom:5px;margin-top:15px" data-toggle="modal" data-target="#myModal" Text="Agendar Clase" OnClientClick="return false;" />

    <div id='calendar'></div>

    <div style='clear:both; margin:2%'></div>
        <h3>Listado de clases</h3>
    <div style='clear:both; margin:2%'></div>
    <div class="row justify-content-center">
    <div class="col-md-10">
        <div class="table-responsive" > 
                <table id="table" class="table table-striped table-bordered" style="width:100%">
                <thead>
                    <tr>
                        <th style="display:none"></th>
                        <th>Tópico</th>
                        <th>Horario</th>
                        <th>Accion</th>
                    </tr>
                </thead>

                <tbody id="tableRows">
                    <asp:Repeater ID="class_data" runat="server" OnItemCommand="top_ItemCommand">
                        <ItemTemplate>
                                <tr id="<%# Eval("Id") %>">
                                    <td style="display:none"><asp:Label ID="Id" runat="server" text='<%# Eval("Id") %>'></asp:Label></td>
                                    <td><%# Eval("Agenda") %></td>
                                    <td><%# Eval("StartTime") %></td>
                                    <td style="text-align:center">
                                        <asp:ImageButton ID="join" runat="server" Text="Unirse" ImageUrl="~/site/home/images/checked_meeting.png" Height="25px" Width="25px" ToolTip="Unirse" />
                                    </td>
                                </tr>              
                        </ItemTemplate>
                    </asp:Repeater>
                </tbody>
            </table>
            </div>  
        </div>
    </div>

</div>

<!-- Modal -->
<div id="myModal" class="modal fade" role="dialog">
    <div class="modal-dialog">
        <!-- Modal content-->
        <div class="modal-content">
            <div class="container">

        <div class="row justify-content-center">
            <div class="col-12">
                    <div class="card-body" >

                            <h3 style="font-weight:bold; text-align:center; margin-bottom:5%">Agendar Clase</h3>

                            <asp:ScriptManager ID="ScriptManager1" runat="server"> </asp:ScriptManager>
                            <asp:UpdatePanel id="UpdatePanel" runat="server">
                                <ContentTemplate>
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
                                </ContentTemplate>
                            </asp:UpdatePanel>

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

                            <div class="form-group" style="margin-top:2%">
							<asp:Button runat="server" Style="background-color:#00194f;color:white;width:35%;border-radius: 20px;" OnClick="Create_Class" Text="Agendar"/>
                            </div>
                    </div>

            </div>
        </div>
        </div>
</div>

    </div>
</div>ipt>
</asp:Content>
