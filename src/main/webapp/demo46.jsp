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
            var options = ({
                chart: {
                    type: 'spline',
                    renderTo:'container'
                },
                subtitle: {
                    text: 'Source: WorldClimate.com'
                },
                xAxis: {
                    categories: ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun',
                        'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'],
                    labels:{
                        enabled:true
                    }
                },
                yAxis: {
                    title: {
                        text: 'Temperature'
                    },
                    labels: {
                        formatter: function() {
                            return this.value +'°'
                        },
                        enabled:true
                    },
                    gridLineWidth:1
                },
                credits:{
                    enabled:true,
                    position:{
                        align:'left',
                        x:50
                    },
                    style:{
                        color:'red',
                        fontWeight:'bold'
                    }
                },
                tooltip: {
                    crosshairs: true,
                    shared: true
                },
                legend:{
                    enabled:true
                },
                plotOptions: {
                    spline: {
                        marker: {
                            radius: 4,
                            lineColor: '#666666',
                            lineWidth: 1
                        },
                        animation:false
                    }
                },
                series: [{
                    name: 'Tokyo',
                    marker: {
                        symbol: 'square'
                    },
                    data: [7.0, 6.9, 9.5, 14.5, 18.2, 21.5, 25.2, {
                        y: 26.5,
                    }, 23.3, 18.3, 13.9, 9.6]

                }, {
                    name: 'London',
                    marker: {
                        symbol: 'diamond'
                    },
                    data: [{
                        y: 3.9,
                    }, 4.2, 5.7, 8.5, 11.9, 15.2, 17.0, 16.6, 14.2, 10.3, 6.6, 4.8]
                }]
            });

            var chart = new Highcharts.Chart(options);

            var creditsEnabled = false;
            var legendEnabled  = false;
            var xLabelsEnabled = false;
            var yLabelsEnabled = false;
            var yTitleEnabled  = "Temperature";
            var yGridLinesEnabled = 1;


            $("button.update").click(function(){
                var target = $(this).attr("target");

                if(target == "credits") {
                    options.credits.enabled = creditsEnabled;
                    creditsEnabled = !creditsEnabled;
                }

                if(target == "legend") {
                    options.legend.enabled = legendEnabled;
                    legendEnabled = !legendEnabled;
                }

                if(target == "xLabels") {
                    options.xAxis.labels.enabled = xLabelsEnabled;
                    xLabelsEnabled = !xLabelsEnabled;
                }

                if(target == "yLabels") {
                    options.yAxis.labels.enabled = yLabelsEnabled;
                    yLabelsEnabled = !yLabelsEnabled;
                }

                if(target == "yTitle") {
                    options.yAxis.title.text = (yTitleEnabled=="Temperature" ? null : 'Temperature');
                    yTitleEnabled = (yTitleEnabled=="Temperature" ? null : 'Temperature');
                }

                if(target == "gridLines") {
                    options.yAxis.gridLineWidth = (yGridLinesEnabled==1 ? 0 :1);
                    yGridLinesEnabled = (yGridLinesEnabled==1 ? 0 :1);
                }


                chart = new Highcharts.Chart(options);

            });

        });


    </script>
    <title></title>
</head>
<body>
<div id="container" style="min-width:700px;height:400px"></div>
<p align=center>
    <button class="update" target="credits">禁用/启用 Credits</button>
    <button class="update" target="legend">禁用/启用 Legend</button>
    <button class="update" target="xLabels">禁用/启用 x轴 Labels</button>
    <button class="update" target="yLabels">禁用/启用 y轴 Labels</button>
    <button class="update" target="yTitle">禁用/启用 y轴 Title</button>
    <button class="update" target="gridLines">禁用/启用 y轴 gridLines</button>
</p>
</body>
</html>
