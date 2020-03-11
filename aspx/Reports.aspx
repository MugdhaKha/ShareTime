<%@ Page Title="" Language="C#" MasterPageFile="~/master/admin.Master" AutoEventWireup="true" CodeBehind="Reports.aspx.cs" Inherits="ShareTime.aspx.Reports" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
   <div class="box box-primary">
        <div class="box-header with-border">
            <h3 class="box-title"><i class="fa fa-bar-chart-o"></i> Organizations activity statistics</h3>
            <h6>The following chart shows the number of facilities(%) availed by organizations this year</h6>
            <br />
        </div>
        <div class="box-body">
            <div id="bar-chart" style="height: 300px; padding: 0px; position: relative;">
                <canvas class="flot-base" width="510" height="300" style="direction: ltr; position: absolute; left: 0px; top: 0px; width: 510px; height: 300px;"></canvas>
                <div class="flot-text" style="position: absolute; top: 0px; left: 0px; bottom: 0px; right: 0px; font-size: smaller; color: rgb(84, 84, 84);">
                    <div class="flot-x-axis flot-x1-axis xAxis x1Axis" style="position: absolute; top: 0px; left: 0px; bottom: 0px; right: 0px; display: block;">
                        <div class="flot-tick-label tickLabel" style="position: absolute; max-width: 85px; top: 283px; left: 24px; text-align: center;">Auxillium High School</div>
                        <div class="flot-tick-label tickLabel" style="position: absolute; max-width: 85px; top: 283px; left: 106px; text-align: center;">Sunshine World Wide School</div>
                        <div class="flot-tick-label tickLabel" style="position: absolute; max-width: 85px; top: 283px; left: 197px; text-align: center;">Mary Imaculate High School</div>
                        <div class="flot-tick-label tickLabel" style="position: absolute; max-width: 85px; top: 283px; left: 285px; text-align: center;">Nisha's Play School</div>
                        <div class="flot-tick-label tickLabel" style="position: absolute; max-width: 85px; top: 283px; left: 371px; text-align: center;">The Little Penguins School</div>
                        <div class="flot-tick-label tickLabel" style="position: absolute; max-width: 85px; top: 283px; left: 454px; text-align: center;">The Ardee World School</div>
                    </div>
                    <div class="flot-y-axis flot-y1-axis yAxis y1Axis" style="position: absolute; top: 0px; left: 0px; bottom: 0px; right: 0px; display: block;">
                        <div class="flot-tick-label tickLabel" style="position: absolute; top: 270px; left: 7px; text-align: right;">0</div>
                        <div class="flot-tick-label tickLabel" style="position: absolute; top: 203px; left: 7px; text-align: right;">5</div>
                        <div class="flot-tick-label tickLabel" style="position: absolute; top: 135px; left: 1px; text-align: right;">10</div>
                        <div class="flot-tick-label tickLabel" style="position: absolute; top: 68px; left: 1px; text-align: right;">15</div>
                        <div class="flot-tick-label tickLabel" style="position: absolute; top: 0px; left: 1px; text-align: right;">20</div>
                    </div>
                </div>
                <canvas class="flot-overlay" width="510" height="300" style="direction: ltr; position: absolute; left: 0px; top: 0px; width: 510px; height: 300px;"></canvas>
            </div>
        </div>
        <!-- /.box-body-->
    </div>

    <script src="../Content/jquery.flot.min.js"></script>
    <!-- FLOT RESIZE PLUGIN - allows the chart to redraw when the window is resized -->
    <script src="../Content/jquery.flot.resize.min.js"></script>
    <!-- FLOT PIE PLUGIN - also used to draw donut charts -->
    <script src="../Content/jquery.flot.pie.min.js"></script>
    <!-- FLOT CATEGORIES PLUGIN - Used to draw bar charts -->
    <script src="../Content/jquery.flot.categories.min.js"></script>
    <!-- Page script -->
    <script>

        $(function () {


            /*
             * BAR CHART
             * ---------
             */

            var bar_data = {
                data: [["Auxillium High School", 10], ["Sunshine World Wide School", 8], ["Mary Imaculate High School", 4], ["Nisha's Play School", 13], ["The Little Penguins School", 17], ["The Ardee World School", 9]],
                color: "#3c8dbc"
            };
            $.plot("#bar-chart", [bar_data], {
                grid: {
                    borderWidth: 1,
                    borderColor: "#f3f3f3",
                    tickColor: "#f3f3f3"
                },
                series: {
                    bars: {
                        show: true,
                        barWidth: 0.5,
                        align: "center"
                    }
                },
                xaxis: {
                    mode: "categories",
                    tickLength: 0
                }
            });
            /* END BAR CHART */

        });
    </script>

</asp:Content>
