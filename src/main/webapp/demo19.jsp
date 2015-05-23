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
                    options3d: {
                        enabled: true,
                        alpha: 15,
                        beta: 15,
                        viewDistance: 25,
                        depth: 40
                    },
                    marginTop: 80,
                    marginRight: 40
                },

                title: {
                    text: 'Total fruit consumption, grouped by gender'
                },

                xAxis: {
                    categories: ['Apples', 'Oranges', 'Pears', 'Grapes', 'Bananas']
                },

                yAxis: {
                    allowDecimals: false,
                    min: 0,
                    title: {
                        text: 'Number of fruits'
                    }
                },

                tooltip: {
                    headerFormat: '<b>{point.key}</b><br>',
                    pointFormat: '<span style="color:{series.color}">\u25CF</span> {series.name}: {point.y} / {point.stackTotal}'
                },

                plotOptions: {
                    column: {
                        stacking: 'normal',
                        depth: 40
                    }
                },

                series: [{
                    name: 'John',
                    data: [5, 3, 4, 7, 2],
                    stack: 'male'
                }, {
                    name: 'Joe',
                    data: [3, 4, 4, 2, 5],
                    stack: 'male'
                }, {
                    name: 'Jane',
                    data: [2, 5, 6, 2, 1],
                    stack: 'female'
                }, {
                    name: 'Janet',
                    data: [3, 0, 4, 4, 3],
                    stack: 'female'
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
