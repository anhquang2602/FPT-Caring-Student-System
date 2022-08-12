
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-alpha1/dist/css/bootstrap.min.css">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
<!DOCTYPE html> 
<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/profileStyle.css">
        <link rel="stylesheet" href="css/pagingStyle.css">
    </head>
    <body class="bg-white">

        <div
            id="myChart" style="width:100%; max-width:600px; height:500px;">
        </div>
        <label class="labels" id="onestar" hidden="">${oneStar}</label>
        <label class="labels" id="twostar" hidden="">${twoStar}</label>
        <label class="labels" id="threestar" hidden="">${threeStar}</label>
        <label class="labels" id="fourstar" hidden="">${fourStar}</label>
        <label class="labels" id="fivestar" hidden="">${fiveStar}</label>
        <script>
            
            let onestar = document.getElementById('onestar').innerHTML;
            let ones= Number(onestar);
            let twostar = document.getElementById('twostar').innerHTML;
            let twos= Number(twostar);
            let threestar = document.getElementById('threestar').innerHTML;
            let threes= Number(threestar);
            let fourstar = document.getElementById('fourstar').innerHTML;
            let fours= Number(fourstar);
            let fivestar = document.getElementById('fivestar').innerHTML;
            let fives= Number(fivestar);
            google.charts.load('current', {'packages': ['corechart']});
            google.charts.setOnLoadCallback(drawChart);

            function drawChart() {
                var data = google.visualization.arrayToDataTable([
                    ['Sao', 'Số Lượt vote'],
                    ['1 Sao', ones],
                    ['2 Sao', twos],
                    ['3 Sao', threes],
                    ['4 Sao', fours],
                    ['5 Sao', fives]
                ]);

                var options = {
                    title: 'Số lượt đánh giá'
                };

                var chart = new google.visualization.PieChart(document.getElementById('myChart'));
                chart.draw(data, options);
            }
        </script>

    </body>

    
    <%@include file="/footer.jsp" %>
</html>
