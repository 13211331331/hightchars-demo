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
    <script type="text/javascript" src="js_img_css/lib/highcharts4.1.5/js/modules/exporting.js"></script>
    <script type="text/javascript" src="js_img_css/lib/highcharts4.1.5/js/highcharts-3d.js"></script>
    <script>


        $(function () {
            // Set up the chart
            var chart = new Highcharts.Chart({
                chart: {
                    renderTo: 'container',
                    type: 'column',
                    margin: 75,
                    options3d: {
                        enabled: true,
                        alpha: 15,
                        beta: 15,
                        depth: 50,
                        viewDistance: 25
                    }
                },
                title: {
                    text: 'Chart rotation demo'
                },
                subtitle: {
                    text: 'Test options by dragging the sliders below'
                },
                plotOptions: {
                    column: {
                        depth: 25
                    }
                },
                series: [{
                    data: [29.9, 71.5, 106.4, 129.2, 144.0, 176.0, 135.6, 148.5, 216.4, 194.1, 95.6, 54.4]
                }]
            });


            // Activate the sliders
            $('#R0').on('change', function(){
                chart.options.chart.options3d.alpha = this.value;
                showValues();
                chart.redraw(false);
            });
            $('#R1').on('change', function(){
                chart.options.chart.options3d.beta = this.value;
                showValues();
                chart.redraw(false);
            });

            function showValues() {
                $('#R0-value').html(chart.options.chart.options3d.alpha);
                $('#R1-value').html(chart.options.chart.options3d.beta);
            }
            showValues();
        });


    </script>
    <title></title>
</head>
<body>
<div id="container" style="min-width:700px;height:400px"></div>
﻿	<div id="sliders" style="min-width:310px;max-width: 800px;margin: 0 auto;">
    <table>
        <tr><td>Alpha Angle</td><td><input id="R0" type="range" min="0" max="45" value="15"/> <span id="R0-value" class="value"></span></td></tr>
        <tr><td>Beta Angle</td><td><input id="R1" type="range" min="0" max="45" value="15"/> <span id="R1-value" class="value"></span></td></tr>
    </table>
</div>

</body>
</html>
