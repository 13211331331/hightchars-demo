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
                    type: 'area',
                    inverted: true
                },
                title: {
                    text: 'Average fruit consumption during one week'
                },
                subtitle: {
                    style: {
                        position: 'absolute',
                        right: '0px',
                        bottom: '10px'
                    }
                },
                legend: {
                    layout: 'vertical',
                    align: 'right',
                    verticalAlign: 'top',
                    x: -150,
                    y: 100,
                    floating: true,
                    borderWidth: 1,
                    backgroundColor: '#FFFFFF'
                },
                xAxis: {
                    categories: [
                        'Monday',
                        'Tuesday',
                        'Wednesday',
                        'Thursday',
                        'Friday',
                        'Saturday',
                        'Sunday'
                    ]
                },
                yAxis: {
                    title: {
                        text: 'Number of units'
                    },
                    labels: {
                        formatter: function() {
                            return this.value;
                        }
                    },
                    min: 0
                },
                plotOptions: {
                    area: {
                        fillOpacity: 0.5
                    }
                },
                series: [{
                    name: 'John',
                    data: [3, 4, 3, 5, 4, 10, 12]
                }, {
                    name: 'Jane',
                    data: [1, 3, 4, 3, 3, 5, 4]
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
