<%--
  Created by IntelliJ IDEA.
  User: hhl
  Date: 2015/5/9
  Time: 22:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <script type="text/javascript" src="js_img_css/lib/jquery-1.8.3.min.js"></script>
    <script type="text/javascript" src="js_img_css/lib/highcharts4.1.5/js/highcharts.js"></script>
    <script type="text/javascript" src="js_img_css/lib/highcharts4.1.5/js/highcharts-more.js"></script>
    <script type="text/javascript" src="js_img_css/lib/highcharts4.1.5/js/modules/exporting.js"></script>
    <script>


        var options = {
            chart: {
                defaultSeriesType: 'spline',
                renderTo:'container'
            },
            xAxis: {
                categories: ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'],
                showEmpty: false
            },

            yAxis: {
                showEmpty: false
            },
            plotOptions:{
                series:{
                    animation:false
                }
            },
            series: [{
                allowPointSelect: true,
                data: [ // use names for display in pie data labels
                    ['January',    29.9],
                    ['February',   71.5],
                    ['March',     106.4],
                    ['April',     129.2],
                    ['May',       144.0],
                    ['June',      176.0],
                    ['July',      135.6],
                    ['August',    148.5],
                    {
                        name: 'September',
                        y: 216.4,
                        selected: true,
                        sliced: true
                    },
                    ['October',   194.1],
                    ['November',   95.6],
                    ['December',   54.4]
                ],
                dataLabels:{
                    enabled:true
                },
                marker:{
                    enabled:true
                },
                showInLegend: true
            }]
        };

        $(function () {
            var chart = new Highcharts.Chart(options);

            // Set Name
            var name = false;
            $('.change[index=name]').click(function() {
                options.series[0].name = name ? null : 'First';
                chart = new Highcharts.Chart(options);
                name = !name;
            });

            //Set Enable DataLabels
            var enableDataLabels = false;
            $('.change[index=data-labels]').click(function() {
                options.series[0].dataLabels.enabled = enableDataLabels;
                chart = new Highcharts.Chart(options);
                enableDataLabels = !enableDataLabels;
            });

            //Set Enable Markers
            var enableMarkers = false;
            $('.change[index=markers]').click(function() {
                options.series[0].marker.enabled = enableMarkers;
                chart = new Highcharts.Chart(options);
                enableMarkers = !enableMarkers;
            });

            //Set Color
            var color = false;
            $('.change[index=color]').click(function() {
                options.series[0].color =  color ? null : Highcharts.getOptions().colors[1];
                chart = new Highcharts.Chart(options);
                color = !color;
            });

            // Set type
            $.each(['line', 'column', 'spline', 'area', 'areaspline', 'scatter', 'pie'], function (i, type) {
                $('.change[index=' + type+']').click(function () {
                    options.chart.type =  type;
                    chart = new Highcharts.Chart(options);
                });
            });
        });

    </script>
    <title></title>
</head>
<body>
<div id="container" style="min-width:700px;height:400px"></div>
<div style="margin:0 auto;text-align:center;">
    <button class="change" index="name">Toggle name</button>
    <button class="change" index="data-labels">Toggle data labels</button>
    <button class="change" index="markers">Toggle point markers</button>
    <button class="change" index="color">Toggle color</button>
    <br>
    <button class="change" index="line">Line</button>
    <button class="change" index="column">Column</button>
    <button class="change" index="spline">Spline</button>
    <button class="change" index="area">Area</button>
    <button class="change" index="areaspline">Areaspline</button>
    <button class="change" index="scatter">Scatter</button>
    <button class="change" index="pie">Pie</button>
</div>

</body>
</html>
