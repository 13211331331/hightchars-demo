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
                //类型
                chart: {
                    type: 'line'
                },
                //标题文字
                title: {
                    text: 'Monthly Average Temperature'
                },
                //子标题文字
                subtitle: {
                    text: 'Source: WorldClimate.com'
                },
                //x轴数据
                xAxis: {
                    categories: ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec']
                },
                //y轴，标题
                yAxis: {
                    title: {
                        text: 'Temperature (°C)'
                    }
                },
                tooltip: {
                    //鼠标上移时候显示，默认是true
                    enabled: false,
                    formatter: function() {
                        return '<b>'+ this.series.name +'</b><br/>'+this.x +': '+ this.y +'°C';
                    }
                },
                plotOptions: {
                    line: {
                        //节点显示y的值
                        dataLabels: {
                            enabled: true
                        },
                        //鼠标上移节点加亮显示，默认是true
                        enableMouseTracking: false
                    }
                },
                //数据项
                series: [{
                    name: 'Tokyo',
                    data: [7.0, 6.9, 9.5, 14.5, 18.4, 21.5, 25.2, 26.5, 23.3, 18.3, 13.9, 9.6]
                }, {
                    name: 'London',
                    data: [3.9, 4.2, 5.7, 8.5, 11.9, 15.2, 17.0, 16.6, 14.2, 10.3, 6.6, 4.8]
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
