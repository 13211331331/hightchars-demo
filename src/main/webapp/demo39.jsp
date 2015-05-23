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
            var chart = new Highcharts.Chart({
                chart: {
                    renderTo: 'container',
                    type: 'pie'
                },
                title :{
                    text:'startAngle=-90 and endAngle=90'
                },
                plotOptions: {
                    pie: {
                        startAngle: -90,
                        endAngle:90,
                        center: ['50%', '70%']
                    }
                },
                series: [{
                    data: [
                        ['Firefox',   44.2],
                        ['IE7',       26.6],
                        ['IE6',       20],
                        ['Chrome',    3.1],
                        ['Other',    5.4]
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
