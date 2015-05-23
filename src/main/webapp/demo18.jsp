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
            $('#container').highcharts({
                chart: {
                    type: 'column',
                    margin: 75,
                    options3d: {
                        enabled: true,
                        alpha: 10,
                        beta: 25,
                        depth: 70
                    }
                },
                title: {
                    text: '3D chart with null values'
                },
                subtitle: {
                    text: 'Notice the difference between a 0 value and a null point'
                },
                plotOptions: {
                    column: {
                        depth: 25
                    }
                },
                xAxis: {
                    categories: Highcharts.getOptions().lang.shortMonths
                },
                yAxis: {
                    opposite: true
                },
                series: [{
                    name: 'Sales',
                    data: [2, 3, null, 4, 0, 5, 1, 4, 6, 3]
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
