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
    <script type="text/javascript" src="js_img_css/lib/highcharts4.1.5/js/highcharts-more.js"></script>
    <script>


        $(function () {

            $('#container').highcharts({

                chart: {
                    type: 'columnrange',
                    inverted: true
                },

                title: {
                    text: 'Temperature variation by month'
                },

                subtitle: {
                    text: 'Observed in Vik i Sogn, Norway, 2009'
                },

                xAxis: {
                    categories: ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec']
                },

                yAxis: {
                    title: {
                        text: 'Temperature ( °C )'
                    }
                },

                tooltip: {
                    valueSuffix: '°C'
                },

                plotOptions: {
                    columnrange: {
                        dataLabels: {
                            enabled: true,
                            formatter: function () {
                                return this.y + '°C';
                            }
                        }
                    }
                },

                legend: {
                    enabled: false
                },

                series: [{
                    name: 'Temperatures',
                    data: [
                        [-9.7, 9.4],
                        [-8.7, 6.5],
                        [-3.5, 9.4],
                        [-1.4, 19.9],
                        [0.0, 22.6],
                        [2.9, 29.5],
                        [9.2, 30.7],
                        [7.3, 26.5],
                        [4.4, 18.0],
                        [-3.1, 11.4],
                        [-5.2, 10.4],
                        [-13.5, 9.8]
                    ]
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
