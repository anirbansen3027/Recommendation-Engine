<!DOCTYPE html>
<head lang="en">

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta name="description" content="Bootstrap Admin App + jQuery">
    <meta name="keywords" content="app, responsive, jquery, bootstrap, dashboard, admin">
    <title>Listen Me </title>
    <!-- =============== VENDOR STYLES ===============-->
    <!-- FONT AWESOME-->
    <link rel="stylesheet" href="./resources/vendor/fontawesome/css/font-awesome.min.css">
    <!-- SIMPLE LINE ICONS-->
    <link rel="stylesheet" href="./resources/vendor/simple-line-icons/css/simple-line-icons.css">
    <!-- ANIMATE.CSS-->
    <link rel="stylesheet" href="./resources/vendor/animate.css/animate.min.css">
    <!-- WHIRL (spinners)-->
    <link rel="stylesheet" href="./resources/vendor/whirl/dist/whirl.css">
    <!-- =============== PAGE VENDOR STYLES ===============-->
    <!-- WEATHER ICONS-->
    <link rel="stylesheet" href="./resources/vendor/weather-icons/css/weather-icons.min.css">
    <!-- =============== BOOTSTRAP STYLES ===============-->
    <link rel="stylesheet" href="./resources/app/css/bootstrap.css" id="bscss">
    <!-- =============== APP STYLES ===============-->
    <link rel="stylesheet" href="./resources/app/css/app.css" id="maincss">
    <!-- DATATABLES-->
    <link rel="stylesheet" href="./resources/vendor/datatables-colvis/css/dataTables.colVis.css">
    <link rel="stylesheet" href="./resources/vendor/datatable-bootstrap/css/dataTables.bootstrap.css">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.3.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" type="text/css" href="resources/slick/slick.css"/>
    <link rel="stylesheet" type="text/css" href="resources/slick/slick-theme.css"/>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
    <!-- Main section-->
</head>

<div class="wrapper">
    <jsp:include page="layout/header.jsp"/>
    <jsp:include page="layout/menu.jsp"/>

    <section style="margin-bottom: 10px !important;">
        <!-- Page content-->
        <div class="content-wrapper">
            <div class="row mb-lg">
                <!-- START panel-->
                <div id="panel-1" class="panel panel-default panel-demo col-xs-4 col-md-4 col-ls-4 col-lg-4"
                     style="padding: 0 !important;">
                    <div class="panel-heading" style="background-color: #003153 !important; color: white !important;">
                        Top Rated Songs with Count
                        <a href="#" data-tool="panel-dismiss" data-toggle="tooltip" title="Close Panel"
                           class="pull-right">
                            <em class="fa fa-times"></em>

                        </a>
                        <a href="#" data-tool="panel-refresh" data-toggle="tooltip" title="Refresh Panel"
                           data-spinner="line back-and-forth grow" class="pull-right">
                            <em class="fa fa-refresh"></em>
                        </a>
                        <a href="#" data-tool="panel-collapse" data-toggle="tooltip" title="Collapse Panel"
                           class="pull-right">
                            <em class="fa fa-minus"></em>
                        </a>

                    </div>
                    <div class="panel-body">
                        <div id='top-movies-based-on-count'>
                            FusionCharts will load here!
                        </div>
                    </div>
                </div>

                <div id="panel-2" class="panel panel-default panel-demo col-xs-4 col-md-4 col-ls-4 col-lg-4"
                     style="padding: 0 !important;">
                    <div class="panel-heading" style="background-color: #003153 !important; color: white !important;">
                        Movies Count with Different Ratings
                        <a href="#" data-tool="panel-dismiss" data-toggle="tooltip" title="Close Panel"
                           class="pull-right">
                            <em class="fa fa-times"></em>

                        </a>
                        <a href="#" data-tool="panel-refresh" data-toggle="tooltip" title="Refresh Panel"
                           data-spinner="line back-and-forth grow" class="pull-right">
                            <em class="fa fa-refresh"></em>
                        </a>
                        <a href="#" data-tool="panel-collapse" data-toggle="tooltip" title="Collapse Panel"
                           class="pull-right">
                            <em class="fa fa-minus"></em>
                        </a>

                    </div>
                    <div class="panel-body">
                        <div id='top-movies-based-on-ratings'>
                            FusionCharts will load here!
                        </div>
                    </div>
                </div>
                <!-- END panel-->
                <!-- START panel-->
                <div id="panel-3" class="panel panel-default panel-demo col-xs-4 col-md-4 col-ls-4 col-lg-4"
                     style="padding: 0 !important;">
                    <div class="panel-heading" style="background-color: #003153 !important; color: white !important;">
                        Count Of Every Genres
                        <a href="#" data-tool="panel-dismiss" data-toggle="tooltip" title="Close Panel"
                           class="pull-right">
                            <em class="fa fa-times"></em>
                        </a>
                        <a href="#" data-tool="panel-refresh" data-toggle="tooltip" title="Refresh Panel"
                           data-spinner="line back-and-forth grow" class="pull-right">
                            <em class="fa fa-refresh"></em>
                        </a>
                        <a href="#" data-tool="panel-collapse" data-toggle="tooltip" title="Collapse Panel"
                           class="pull-right">
                            <em class="fa fa-minus"></em>
                        </a>

                    </div>
                    <div class="panel-body">

                        <div id="movies-based-on-date">
                            FusionCharts will load here!
                        </div>
                    </div>
                </div>
                </div>

                <!-- END panel-->
                <div class="row">
                    <div class="panel panel-default">
                        <div class="panel-heading" style="background-color: #003153 !important; color: white !important;">
                            <b>Rate Songs</b></div>
                        <div class="panel-body">
                            <form role="form" class="form-inline" id="formid">
                                <div class="fixedscroll">
                                    <table class="table table-bordered table-striped table-hover" id="songs_table">
                                        <thead>
                                        <tr>
                                            <th style="width: 5%; text-align: center; background-color: #007BA7; color: white;">
                                                Movie Id
                                            </th>
                                            <th style="text-align: center;background-color: #007BA7; color: white; width: 25%;">
                                                Movie
                                                Name
                                            </th>
                                            <th style="text-align: center;background-color: #007BA7; color: white; width: 30%;">
                                                Genres
                                            </th>
                                            <th style="text-align: center;background-color: #007BA7; color: white;width: 20%;">
                                                Avg
                                                Rate
                                            </th>
                                            <th style="text-align: center;background-color: #007BA7; color: white;width: 15%;">
                                                Rate
                                            </th>
                                        </tr>
                                        </thead>
                                        <tbody style="cursor: pointer; padding: 0 !important;"></tbody>
                                    </table>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
    </section>
    <jsp:include page="layout/footer.jsp"/>
</div>


<!-- MODERNIZR-->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="./resources/vendor/modernizr/modernizr.js"></script>
<!-- JQUERY-->
<script src="./resources/vendor/jquery/dist/jquery.js"></script>
<!-- BOOTSTRAP-->
<script src="./resources/vendor/bootstrap/dist/js/bootstrap.js"></script>
<!-- STORAGE API-->
<script src="./resources/vendor/jQuery-Storage-API/jquery.storageapi.js"></script>
<!-- JQUERY EASING-->
<script src="./resources/vendor/jquery.easing/js/jquery.easing.js"></script>
<!-- ANIMO-->
<script src="./resources/vendor/animo.js/animo.js"></script>
<!-- SLIMSCROLL-->
<script src="./resources/vendor/slimScroll/jquery.slimscroll.min.js"></script>
<!-- SCREENFULL-->
<script src="./resources/vendor/screenfull/dist/screenfull.js"></script>
<!-- LOCALIZE-->
<script src="./resources/vendor/jquery-localize-i18n/dist/jquery.localize.js"></script>
<!-- RTL demo-->
<script src="./resources/app/js/demo/demo-rtl.js"></script>
<!-- =============== PAGE VENDOR SCRIPTS ===============-->
<!-- SPARKLINE-->
<script src="./resources/app/vendor/sparklines/jquery.sparkline.min.js"></script>
<!-- FLOT CHART-->
<script src="./resources/vendor/Flot/jquery.flot.js"></script>
<script src="./resources/vendor/flot.tooltip/js/jquery.flot.tooltip.min.js"></script>
<script src="./resources/vendor/Flot/jquery.flot.resize.js"></script>
<script src="./resources/vendor/Flot/jquery.flot.pie.js"></script>
<script src="./resources/vendor/Flot/jquery.flot.time.js"></script>
<script src="./resources/vendor/Flot/jquery.flot.categories.js"></script>
<script src="./resources/vendor/flot-spline/js/jquery.flot.spline.min.js"></script>
<!-- CLASSY LOADER-->
<script src="./resources/vendor/jquery-classyloader/js/jquery.classyloader.min.js"></script>
<!-- MOMENT JS-->
<script src="./resources/vendor/moment/min/moment-with-locales.min.js"></script>
<!-- SKYCONS-->
<script src="./resources/vendor/skycons/skycons.js"></script>
<!-- DEMO-->
<script src="./resources/app/js/demo/demo-flot.js"></script>
<!-- =============== PAGE VENDOR SCRIPTS ===============-->
<script src="./resources/app/js/demo/demo-panels.js"></script>
<!-- =============== APP SCRIPTS ===============-->
<script src="./resources/app/js/app.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<script src="resources/datatables/datatables/jquery.dataTables.js"></script>
<script src="resources/datatables/datatables/dataTables.colVis.min.js"></script>
<script src="resources/datatables/datatables/dataTables.tableTools.min.js"></script>
<script src="resources/datatables/datatables/dataTables.bootstrap.min.js"></script>
<script src="resources/datatable-responsive/datatable-responsive/datatables.responsive.min.js"></script>
<%--for glypicon--%>

<script src="./resources/fusionCharts/jquery.min.js"></script>
<script src="./resources/fusionCharts/fusion/FusionCharts.js"></script>
<script src="./resources/fusionCharts/fusioncharts/themes/fusioncharts.theme.fint.js"></script>
<script src="./resources/app/js/analytics.js"></script>

<script>
    function simplechart(chartChart,data, chartType, renderId) {
        var chartData = [];
        $.each(data.data, function (key, value) {
            chartData.push({
                "label": value["label"],
                "value": value["value"].toFixed(2)
            });
        });
        var revenueChart = new FusionCharts({
            "type": chartType,
            "renderAt": renderId,
            "width": "100%",
            "height": "350",
            "dataFormat": "json",
            "dataSource": {
                "chart": chartChart,
                "data": chartData
            }

        });
        revenueChart.render();
    }

</script>
</html>
