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
                    type: 'column',
                    margin: [ 50, 50, 100, 80]
                },
                title: {
                    text: 'Worlds largest cities per 2008'
                },
                xAxis: {
                    categories: [
                        'Tokyo',
                        'Jakarta',
                        'New York',
                        'Seoul',
                        'Manila',
                        'Mumbai',
                        'Sao Paulo',
                        'Mexico City',
                        'Dehli',
                        'Osaka',
                        'Cairo',
                        'Kolkata',
                        'Los Angeles',
                        'Shanghai',
                        'Moscow',
                        'Beijing',
                        'Buenos Aires',
                        'Guangzhou',
                        'Shenzhen',
                        'Istanbul'
                    ],
                    labels: {
                        rotation: -45,
                        align: 'right',
                        style: {
                            fontSize: '13px',
                            fontFamily: 'Verdana, sans-serif'
                        }
                    }
                },
                yAxis: {
                    min: 0,
                    title: {
                        text: 'Population (millions)'
                    }
                },
                legend: {
                    enabled: false
                },
                tooltip: {
                    pointFormat: 'Population in 2008: <b>{point.y:.1f} millions</b>',
                },
                series: [{
                    name: 'Population',
                    data: [34.4, 21.8, 20.1, 20, 19.6, 19.5, 19.1, 18.4, 18,
                        17.3, 16.8, 15, 14.7, 14.5, 13.3, 12.8, 12.4, 11.8,
                        11.7, 11.2],
                    dataLabels: {
                        enabled: true,
                        rotation: -90,
                        color: '#FFFFFF',
                        align: 'right',
                        x: 4,
                        y: 10,
                        style: {
                            fontSize: '13px',
                            fontFamily: 'Verdana, sans-serif',
                            textShadow: '0 0 3px black'
                        }
                    }
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
