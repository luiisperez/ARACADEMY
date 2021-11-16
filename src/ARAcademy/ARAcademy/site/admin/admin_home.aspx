<%@ Page Title="" Language="C#" MasterPageFile="~/site/admin/Admin_home.Master" AutoEventWireup="true" CodeBehind="admin_home.aspx.cs" Inherits="ARAcademy.site.admin.admin_home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

<%--<!-- Styles -->
<style>
#chartdiv {
  width: 100%;
  height: 260px;
}

#chartdiv2 {
  width: 100%;
  height: 260px;
}

#chartdiv3 {
  width: 100%;
  height: 260px;
}

#chartdiv4 {
  width: 100%;
  height: 500px;
}

#chartdiv5 {
  width: 100%;
  height: 500px;
}

</style>

<!-- Resources -->
<script src="https://cdn.amcharts.com/lib/4/core.js"></script>
<script src="https://cdn.amcharts.com/lib/4/charts.js"></script>
<script src="https://cdn.amcharts.com/lib/4/themes/animated.js"></script>
<script src="https://cdn.amcharts.com/lib/4/themes/frozen.js"></script>

<!-- Chart code -->
<script>
    am4core.ready(function () {

        // Themes begin
        am4core.useTheme(am4themes_animated);
        // Themes end

        // Create chart instance
        var chart = am4core.create("chartdiv", am4charts.XYChart);
        var suma_mat = '<%=suma_mat%>';
        var suma_mod = '<%=suma_mod%>';
        var suma_top = '<%=suma_top%>';
        
        // Add data
        chart.data = [{
            "country": "Cantidad de Materias",
            "visits": suma_mat
            }];

        // Create axes

        var categoryAxis = chart.xAxes.push(new am4charts.CategoryAxis());
        categoryAxis.dataFields.category = "country";
        categoryAxis.renderer.grid.template.location = 0;
        categoryAxis.renderer.minGridDistance = 30;

        categoryAxis.renderer.labels.template.adapter.add("dy", function (dy, target) {
            if (target.dataItem && target.dataItem.index & 2 == 2) {
                return dy + 25;
            }
            return dy;
        });

        var valueAxis = chart.yAxes.push(new am4charts.ValueAxis());

        // Create series
        var series = chart.series.push(new am4charts.ColumnSeries());
        series.dataFields.valueY = "visits";
        series.dataFields.categoryX = "country";
        series.name = "Visits";
        series.columns.template.tooltipText = "{categoryX}: [bold]{valueY}[/]";
        series.columns.template.fillOpacity = .8;

        var columnTemplate = series.columns.template;
        columnTemplate.strokeWidth = 2;
        columnTemplate.strokeOpacity = 1;

    }); // end am4core.ready()
</script>

<!-- Chart code -->
<script>
    am4core.ready(function () {

        // Themes begin
        am4core.useTheme(am4themes_animated);
        // Themes end

        // Create chart instance
        var chart = am4core.create("chartdiv2", am4charts.XYChart);
        var suma_mat = '<%=suma_mat%>';
        var suma_mod = '<%=suma_mod%>';
        var suma_top = '<%=suma_top%>';

        // Add data
        chart.data = [{
            "country": "Cantidad de Modulos",
            "visits": suma_mod
        }];

        // Create axes

        var categoryAxis = chart.xAxes.push(new am4charts.CategoryAxis());
        categoryAxis.dataFields.category = "country";
        categoryAxis.renderer.grid.template.location = 0;
        categoryAxis.renderer.minGridDistance = 30;

        categoryAxis.renderer.labels.template.adapter.add("dy", function (dy, target) {
            if (target.dataItem && target.dataItem.index & 2 == 2) {
                return dy + 25;
            }
            return dy;
        });

        var valueAxis = chart.yAxes.push(new am4charts.ValueAxis());

        // Create series
        var series = chart.series.push(new am4charts.ColumnSeries());
        series.dataFields.valueY = "visits";
        series.dataFields.categoryX = "country";
        series.name = "Visits";
        series.columns.template.tooltipText = "{categoryX}: [bold]{valueY}[/]";
        series.columns.template.fillOpacity = .8;

        var columnTemplate = series.columns.template;
        columnTemplate.strokeWidth = 2;
        columnTemplate.strokeOpacity = 1;

    }); // end am4core.ready()
</script>

<!-- Chart code -->
<script>
    am4core.ready(function () {

        // Themes begin
        am4core.useTheme(am4themes_animated);
        // Themes end

        // Create chart instance
        var chart = am4core.create("chartdiv3", am4charts.XYChart);
        var suma_mat = '<%=suma_mat%>';
        var suma_mod = '<%=suma_mod%>';
        var suma_top = '<%=suma_top%>';

        // Add data
        chart.data = [{
            "country": "Cantidad de Topicos",
            "visits": suma_top
        }];

        // Create axes

        var categoryAxis = chart.xAxes.push(new am4charts.CategoryAxis());
        categoryAxis.dataFields.category = "country";
        categoryAxis.renderer.grid.template.location = 0;
        categoryAxis.renderer.minGridDistance = 30;

        categoryAxis.renderer.labels.template.adapter.add("dy", function (dy, target) {
            if (target.dataItem && target.dataItem.index & 2 == 2) {
                return dy + 25;
            }
            return dy;
        });

        var valueAxis = chart.yAxes.push(new am4charts.ValueAxis());

        // Create series
        var series = chart.series.push(new am4charts.ColumnSeries());
        series.dataFields.valueY = "visits";
        series.dataFields.categoryX = "country";
        series.name = "Visits";
        series.columns.template.tooltipText = "{categoryX}: [bold]{valueY}[/]";
        series.columns.template.fillOpacity = .8;

        var columnTemplate = series.columns.template;
        columnTemplate.strokeWidth = 2;
        columnTemplate.strokeOpacity = 1;

    }); // end am4core.ready()
</script>


<!-- Chart code -->
<script>
    am4core.ready(function () {

        // Themes begin
        am4core.useTheme(am4themes_animated);
        // Themes end

        // Create chart instance
        var chart = am4core.create("chartdiv5", am4charts.PieChart);
        var suma_prig = '<%=suma_prig%>';
        var suma_segg = '<%=suma_segg%>';
        var suma_terg = '<%=suma_terg%>';
        var suma_cuag = '<%=suma_cuag%>';
        var suma_quig = '<%=suma_quig%>';
        var suma_sexg = '<%=suma_sexg%>';

        // Add data

        chart.data = [{
            "country": "Primer Curso",
            "litres": suma_prig
        }, {
            "country": "Segundo Curso",
            "litres": suma_segg
        }, {
            "country": "Tercer Curso",
            "litres": suma_terg
        }, {
            "country": "Cuarto Curso",
            "litres": suma_cuag
        }, {
            "country": "Quinto Curso",
            "litres": suma_quig
        }, {
            "country": "Sexto Curso",
            "litres": suma_sexg
        }];

        // Set inner radius
        chart.innerRadius = am4core.percent(50);

        // Add and configure Series
        var pieSeries = chart.series.push(new am4charts.PieSeries());
        pieSeries.dataFields.value = "litres";
        pieSeries.dataFields.category = "country";
        pieSeries.slices.template.stroke = am4core.color("#fff");
        pieSeries.slices.template.strokeWidth = 2;
        pieSeries.slices.template.strokeOpacity = 1;

        // This creates initial animation
        pieSeries.hiddenState.properties.opacity = 1;
        pieSeries.hiddenState.properties.endAngle = -90;
        pieSeries.hiddenState.properties.startAngle = -90;

    }); // end am4core.ready()
</script>--%>
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<%--    <div class="row justify-content-center" style="width:100%">
        <h3>Listado de reportes</h3>
    </div>

    <div class="row" style="width:100%">
        <div class="col">
            <div class="card" style="margin:2%">
                <div id="chartdiv"></div>
            </div>
        </div>
        <div class="col">
            <div class="card" style="margin:2%">
                <div id="chartdiv2"></div>
            </div>
        </div>
        <div class="col">
            <div class="card" style="margin:2%">
                <div id="chartdiv3"></div>
            </div>
        </div>
    </div>
    <div class="row" style="width:100%">
        <div class="col">
            <div class="card" style="margin:1%">
                <div id="chartdiv5"></div>
            </div>
        </div>
    </div>--%>

        <div class="row" style="margin:5%">

        <%--MATERIA--%>

              <!--Grid column-->
              <div class="col-md-12 mb-4">
                <!-- Card -->
                <div class="card gradient-card">
                    <!-- Data -->
                     <a href="adm_reports/ingresos.aspx">
                        <div class="third-content ml-auto mr-4 mb-2" style="margin-left: 5% !important; margin-right: 5% !important; margin-top: 2% !important">
                          <div class="row">
                            <h4 class="font-weight-bold float-left"> Ingresos y gastos </h4>
                          </div>
                          <div class="row">
                            <p class="text-muted"> Reporte mensual de ingresos y gastos </p>
                          </div>
                        </div>
                     </a>
                </div>
                <!-- Card -->
              </div>
              <!--Grid column-->

              <!--Grid column-->
              <div class="col-md-12 mb-4">
                <!-- Card -->
                <div class="card gradient-card">
                    <!-- Data -->
                     <a href="adm_reports/pago_est.aspx">
                        <div class="third-content ml-auto mr-4 mb-2" style="margin-left: 5% !important; margin-right: 5% !important; margin-top: 2% !important">
                          <div class="row">
                            <h4 class="font-weight-bold float-left"> Pago estudiantes por modulo </h4>
                          </div>
                          <div class="row">
                            <p class="text-muted"> Reporte de Pago estudiantes x modulo </p>
                          </div>
                        </div>
                     </a>
                </div>
                <!-- Card -->
              </div>
              <!--Grid column-->

              <!--Grid column-->
              <div class="col-md-12 mb-4">
                <!-- Card -->
                <div class="card gradient-card">
                    <!-- Data -->
                     <a href="adm_reports/horas_prof.aspx">
                        <div class="third-content ml-auto mr-4 mb-2" style="margin-left: 5% !important; margin-right: 5% !important; margin-top: 2% !important">
                          <div class="row">
                            <h4 class="font-weight-bold float-left"> Horas trabajadas por profesor </h4>
                          </div>
                          <div class="row">
                            <p class="text-muted"> Reporte de horas trabajadas por profesor al mes </p>
                          </div>
                        </div>
                     </a>
                </div>
                <!-- Card -->
              </div>
              <!--Grid column-->

              <!--Grid column-->
              <div class="col-md-12 mb-4">
                <!-- Card -->
                <div class="card gradient-card">
                    <!-- Data -->
                     <a href="adm_reports/pago_prof.aspx">
                        <div class="third-content ml-auto mr-4 mb-2" style="margin-left: 5% !important; margin-right: 5% !important; margin-top: 2% !important">
                          <div class="row">
                            <h4 class="font-weight-bold float-left"> Pago Profesores </h4>
                          </div>
                          <div class="row">
                            <p class="text-muted"> Reporte de Pago Profesores por mes </p>
                          </div>
                        </div>
                     </a>
                </div>
                <!-- Card -->
              </div>
              <!--Grid column-->

              <!--Grid column-->
              <div class="col-md-12 mb-4">
                <!-- Card -->
                <div class="card gradient-card">
                    <!-- Data -->
                     <a href="adm_reports/cant_estu.aspx">
                        <div class="third-content ml-auto mr-4 mb-2" style="margin-left: 5% !important; margin-right: 5% !important; margin-top: 2% !important">
                          <div class="row">
                            <h4 class="font-weight-bold float-left"> Cantidad de estudiantes inscritos por modulo </h4>
                          </div>
                          <div class="row">
                            <p class="text-muted"> Reporte Cantidad de estudiantes inscritos por modulo por periodo </p>
                          </div>
                        </div>
                     </a>
                </div>
                <!-- Card -->
              </div>
              <!--Grid column-->

</div>

    <script>
        var acc = document.getElementsByClassName("accordion");
        var i;

        for (i = 0; i < acc.length; i++) {
            acc[i].addEventListener("click", function () {
                this.classList.toggle("active");
                var panel = this.nextElementSibling;
                if (panel.style.display === "block") {
                    panel.style.display = "none";
                } else {
                    panel.style.display = "block";
                }
            });
        }
    </script>
</asp:Content>
