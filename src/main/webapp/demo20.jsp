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
                    type: 'pie',
                    options3d: {
                        enabled: true,
                        alpha: 45,
                        beta: 0
                    }
                },
                title: {
                    text: 'Browser market shares at a specific website, 2014'
                },
                tooltip: {
                    pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
                },
                plotOptions: {
                    pie: {
                        allowPointSelect: true,
                        cursor: 'pointer',
                        depth: 35,
                        dataLabels: {
                            enabled: true,
                            format: '{point.name}'
                        }
                    }
                },
                series: [{
                    type: 'pie',
                    name: 'Browser share',
                    data: [
                        ['Firefox',   45.0],
                        ['IE',       26.8],
                        {
                            name: 'Chrome',
                            y: 12.8,
                            sliced: true,
                            selected: true
                        },
                        ['Safari',    8.5],
                        ['Opera',     6.2],
                        ['Others',   0.7]
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
