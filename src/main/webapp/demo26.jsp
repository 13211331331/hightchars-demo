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
    <script type="text/javascript" src="js_img_css/lib/highcharts4.1.5/js/modules/data.js"></script>
    <script>



        $(document).ready(function(){

            $('#container').highcharts({
                data: {
                    table: document.getElementById('datatable')
                },
                chart: {
                    type: 'column'
                },
                title: {
                    text: 'Data extracted from a HTML table in the page'
                },
                yAxis: {
                    allowDecimals: false,
                    title: {
                        text: 'Units'
                    }
                },
                tooltip: {
                    formatter: function() {
                        return '<b>'+ this.series.name +'</b><br/>'+
                                this.y +' '+ this.x;
                    }
                }
            });
        });




    </script>
    <title></title>
</head>
<body>
<div id="container" style="min-width:700px;height:400px"></div>
<table id="datatable" style="margin-left:20px;" class="table table-bordered table-striped">
    <thead>
    <tr>
        <th></th>
        <th>Jane</th>
        <th>John</th>
    </tr>
    </thead>
    <tbody>
    <tr>
        <th>Apples</th>
        <td>3</td>
        <td>4</td>
    </tr>
    <tr>
        <th>Pears</th>
        <td>2</td>
        <td>0</td>
    </tr>
    <tr>
        <th>Plums</th>
        <td>5</td>
        <td>11</td>
    </tr>
    <tr>
        <th>Bananas</th>
        <td>1</td>
        <td>1</td>
    </tr>
    <tr>
        <th>Oranges</th>
        <td>2</td>
        <td>4</td>
    </tr>
    </tbody>
</table>

</body>
</html>
