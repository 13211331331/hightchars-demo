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
    <script>



        $(function () {
            $('#container').highcharts({
                chart: {
                    type: 'spline',
                    inverted: true
                },
                title: {
                    text: 'Atmosphere Temperature by Altitude'
                },
                subtitle: {
                    text: 'According to the Standard Atmosphere Model'
                },
                xAxis: {
                    reversed: false,
                    title: {
                        enabled: true,
                        text: 'Altitude'
                    },
                    labels: {
                        formatter: function() {
                            return this.value +'km';
                        }
                    },
                    maxPadding: 0.05,
                    showLastLabel: true
                },
                yAxis: {
                    title: {
                        text: 'Temperature'
                    },
                    labels: {
                        formatter: function() {
                            return this.value + '°';
                        }
                    },
                    lineWidth: 2
                },
                legend: {
                    enabled: false
                },
                tooltip: {
                    headerFormat: '<b>{series.name}</b><br/>',
                    pointFormat: '{point.x} km: {point.y}°C'
                },
                plotOptions: {
                    spline: {
                        marker: {
                            enable: false
                        }
                    }
                },
                series: [{
                    name: 'Temperature',
                    data: [[0, 15], [10, -50], [20, -56.5], [30, -46.5], [40, -22.1],
                        [50, -2.5], [60, -27.7], [70, -55.7], [80, -76.5]]
                }]
            });
        });



    </script>
    <title></title>
</head>
<body>
<div id="container" style="min-width:700px;height:400px"></div>

</body>
</html>
