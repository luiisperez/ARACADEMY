<%@ Page Title="" Language="C#" MasterPageFile="~/site/admin/Admin_home.Master" AutoEventWireup="true" CodeBehind="admin_home.aspx.cs" Inherits="ARAcademy.site.admin.admin_home" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

<!-- Styles -->
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
  width: 200%;
  height: 350px;
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
            }, {
            "country": "Cantidad de Modulos",
            "visits": suma_mod
            }, {
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
        var chart = am4core.create("chartdiv2", am4charts.PieChart);

        // Set data
        var selected;
        var suma_prig = '<%=suma_prig%>';
        var suma_segg = '<%=suma_segg%>';
        var suma_terg = '<%=suma_terg%>';
        var suma_cuag = '<%=suma_cuag%>';
        var suma_quig = '<%=suma_quig%>';
        var suma_sexg = '<%=suma_sexg%>';
        var total = '<%=total%>';
        var types = [{
            type: "Alumnos por curso",
            percent: total,
            color: "#71FF33",
            subs: [{
                type: "Primer Curso",
                percent: suma_prig
            }, {
                type: "Segundo Curso",
                percent: suma_segg
            }, {
                type: "Tercer Curso",
                percent: suma_terg
            }, {
                type: "Cuarto Curso",
                percent: suma_cuag
            }, {
                type: "Quinto Curso",
                percent: suma_quig
            },{
                type: "Sexto Curso",
                percent: suma_sexg
            }]
        }];

        // Add data
        chart.data = generateChartData();

        // Add and configure Series
        var pieSeries = chart.series.push(new am4charts.PieSeries());
        pieSeries.dataFields.value = "percent";
        pieSeries.dataFields.category = "type";
        pieSeries.slices.template.propertyFields.fill = "color";
        pieSeries.slices.template.propertyFields.isActive = "pulled";
        pieSeries.slices.template.strokeWidth = 0;

        function generateChartData() {
            var chartData = [];
            for (var i = 0; i < types.length; i++) {
                if (i == selected) {
                    for (var x = 0; x < types[i].subs.length; x++) {
                        chartData.push({
                            type: types[i].subs[x].type,
                            percent: types[i].subs[x].percent,
                            color: types[i].color,
                            pulled: true
                        });
                    }
                } else {
                    chartData.push({
                        type: types[i].type,
                        percent: types[i].percent,
                        color: types[i].color,
                        id: i
                    });
                }
            }
            return chartData;
        }

        pieSeries.slices.template.events.on("hit", function (event) {
            if (event.target.dataItem.dataContext.id != undefined) {
                selected = event.target.dataItem.dataContext.id;
            } else {
                selected = undefined;
            }
            chart.data = generateChartData();
        });

    }); // end am4core.ready()
</script>

    <!-- Chart code -->
<script>
    am4core.ready(function () {

        // Themes begin
        am4core.useTheme(am4themes_frozen);
        // Themes end

        // Create chart instance
        var chart = am4core.create("chartdiv3", am4charts.PieChart);

        // Add and configure Series
        var pieSeries = chart.series.push(new am4charts.PieSeries());
        pieSeries.dataFields.value = "litres";
        pieSeries.dataFields.category = "country";

        // Let's cut a hole in our Pie chart the size of 30% the radius
        chart.innerRadius = am4core.percent(30);

        // Put a thick white border around each Slice
        pieSeries.slices.template.stroke = am4core.color("#fff");
        pieSeries.slices.template.strokeWidth = 2;
        pieSeries.slices.template.strokeOpacity = 1;
        pieSeries.slices.template
            // change the cursor on hover to make it apparent the object can be interacted with
            .cursorOverStyle = [
                {
                    "property": "cursor",
                    "value": "pointer"
                }
            ];

        pieSeries.alignLabels = false;
        pieSeries.labels.template.bent = true;
        pieSeries.labels.template.radius = 3;
        pieSeries.labels.template.padding(0, 0, 0, 0);

        pieSeries.ticks.template.disabled = true;

        // Create a base filter effect (as if it's not there) for the hover to return to
        var shadow = pieSeries.slices.template.filters.push(new am4core.DropShadowFilter);
        shadow.opacity = 0;

        // Create hover state
        var hoverState = pieSeries.slices.template.states.getKey("hover"); // normally we have to create the hover state, in this case it already exists

        // Slightly shift the shadow and make it more prominent on hover
        var hoverShadow = hoverState.filters.push(new am4core.DropShadowFilter);
        var suma_prig = '<%=suma_prig%>';
        var suma_segg = '<%=suma_segg%>';
        var suma_terg = '<%=suma_terg%>';
        var suma_cuag = '<%=suma_cuag%>';
        var suma_quig = '<%=suma_quig%>';
        var suma_sexg = '<%=suma_sexg%>';
        var total = '<%=total%>';
        hoverShadow.opacity = 0.7;
        hoverShadow.blur = 5;

        // Add a legend
        chart.legend = new am4charts.Legend();

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

    }); // end am4core.ready()
</script>

</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="row justify-content-center" style="width:100%">
        <h3>Listado de reportes</h3>
    </div>
    <div class="row" style="width:100%">
        <div class="col-6">
            <div class="card" style="margin:2%">
                <div id="chartdiv"></div>
            </div>
        </div>
        <div class="col-6">
            <div class="card" style="margin:2%">
                <div id="chartdiv2"></div>
            </div>
        </div>
    </div>
</asp:Content>
