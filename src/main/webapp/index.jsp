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
                title: {
                    text: 'Monthly Average Temperature1',
                    x: -20 //center  title 文字本来在中间，-20：向左边移动20px
                },
                subtitle: {
                    text: 'Source: WorldClimate.com',   //title下面的二级标题文字
                    x: -20   //center  title 文字本来在中间，-20：向左边移动20px
                },
                xAxis: {
                    //x轴的文字，数组形式
                    categories: ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun','Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec']
                },
                yAxis: {
                    //y轴上的文字
                    title: {
                        text: 'Temperature (°C)'
                    },
                    //y轴刻度警戒线
                    plotLines: [{
                        //在y的值多少时候显示警戒线
                        value: 20,
                        //警戒线的宽度
                        width: 1,
                        //警戒线的背景颜色
                        color: '#808080'
                    }]
                },
                //鼠标上移节点显示的文字的后缀
                tooltip: {
                    valueSuffix: '°C'
                },

                //右边框框显示的几个数据项的名称内容对齐方式
                legend: {
                    layout: 'vertical',
                    align: 'right',
                    verticalAlign: 'middle',
                    borderWidth: 1
                },
                //数据项
                series: [{
                    name: 'Tokyo',
                    data: [7.0, 6.9, 9.5, 14.5, 18.2, 21.5, 25.2, 26.5, 23.3, 18.3, 13.9, 9.6]
                }, {
                    name: 'New York',
                    data: [-0.2, 0.8, 5.7, 11.3, 17.0, 22.0, 24.8, 24.1, 20.1, 14.1, 8.6, 2.5]
                }, {
                    name: 'Berlin',
                    data: [-0.9, 0.6, 3.5, 8.4, 13.5, 17.0, 18.6, 17.9, 14.3, 9.0, 3.9, 1.0]
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
