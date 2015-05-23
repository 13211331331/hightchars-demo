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
    <script type="text/javascript" src="js_img_css/lib/highcharts4.1.5/js/highcharts-more.js"></script>
    <script type="text/javascript" src="js_img_css/lib/highcharts4.1.5/js/modules/exporting.js"></script>
    <script>


        var options = {
            chart: {
                plotBackgroundColor: null,
                plotBorderWidth: null,
                plotShadow: false,
                renderTo:'container'
            },
            title: {
                text: 'Browser market shares at a specific website, 2010'
            },
            tooltip: {
                pointFormat: '{series.name}: <b>{point.y}</b>'
            },
            labels:{
                items:[{
                    html:'<a href="http://www.52wulian.org" target="_blank">HighCharts</a>',
                    style: {
                        left:'532px',
                        top:'160px',
                    }
                }],
                style:{
                    color:'red',
                    fontSize:45,
                    fontWeight:'bold',
                    zIndex:1000
                }
            },
            series: [{
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
        };

        $(document).ready(function(){
            var chart = new Highcharts.Chart(options);

            $("button.change").click(function(){
                var type = $(this).html();

                if(type == "pie") {
                    options.tooltip.pointFormat = '{series.name}: <b>{point.percentage:.1f}%</b>';
                }else {
                    options.tooltip.pointFormat = '{series.name}: <b>{point.y}</b>';
                }
                options.chart.type = type;
                chart = new Highcharts.Chart(options);
            });
        });

    </script>
    <title></title>
</head>
<body>
<div id="container" style="min-width:700px;height:400px"></div>
<div style="margin:10px 0px 10px 20px;">
    点击按钮切换图表：
    <button class="change">line</button>
    <button class="change">spline</button>
    <button class="change">pie</button>
    <button class="change">area</button>
    <button class="change">column</button>
    <button class="change">areaspline</button>
    <button class="change">bar</button>
    <button class="change">scatter</button>
</div>

</body>
</html>
