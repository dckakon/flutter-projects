import 'package:flutter/material.dart';

import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:water_monitoring_app/models/ph_data.dart';

import '../models/sensor_data.dart';

class GraphicalOverview extends StatefulWidget {
  const GraphicalOverview({Key? key}) : super(key: key);

  @override
  State<GraphicalOverview> createState() => _GraphicalOverviewState();
}

class _GraphicalOverviewState extends State<GraphicalOverview> {
  late List<SensorData> _chartData;
  late TooltipBehavior _tooltipBehavior;
  @override
  void initState() {
    _chartData = getChartData();
    _tooltipBehavior = TooltipBehavior(enable: true);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 450,
      width: double.infinity,
      child: SfCartesianChart(
        title: ChartTitle(text: 'Sensors Graph'),
        tooltipBehavior: _tooltipBehavior,
        legend: Legend(isVisible: true, position: LegendPosition.top),
        primaryXAxis: CategoryAxis(),
        series: <ChartSeries>[
          StackedLineSeries<SensorData, int>(
              dataSource: _chartData,
              xValueMapper: (SensorData data, _) => data.day,
              yValueMapper: (SensorData data, _) => data.ph,
              name: 'pH',
              markerSettings: MarkerSettings(isVisible: true)),
          StackedLineSeries<SensorData, int>(
            dataSource: _chartData,
            xValueMapper: (SensorData data, _) => data.day,
            yValueMapper: (SensorData data, _) => data.temperature,
            name: 'Temperature',
            markerSettings: MarkerSettings(isVisible: true),
          ),
          StackedLineSeries<SensorData, int>(
            dataSource: _chartData,
            xValueMapper: (SensorData data, _) => data.day,
            yValueMapper: (SensorData data, _) => data.salinity,
            name: 'Salinity',
            markerSettings: MarkerSettings(isVisible: true),
          ),
          StackedLineSeries<SensorData, int>(
            dataSource: _chartData,
            xValueMapper: (SensorData data, _) => data.day,
            yValueMapper: (SensorData data, _) => data.oxygen,
            name: 'Oxygen',
            markerSettings: MarkerSettings(isVisible: true),
          ),
        ],
      ),
    );
  }
}



  // title: ChartTitle(
  //               text: title, textStyle: TextStyle(fontWeight: FontWeight.bold)),
  //           legend: Legend(isVisible: true),
  //           primaryXAxis:
  //               NumericAxis(edgeLabelPlacement: EdgeLabelPlacement.shift),
  //           series: <ChartSeries>[
  //             LineSeries<OxygenData,  int>(
  //                 name: title,
  //                 xAxisName: title,
  //                 yAxisName: 'day',
  //                 dataLabelSettings: DataLabelSettings(isVisible: true),
  //                 dataSource: oxygenData,
  //                 xValueMapper: (OxygenData sales, _) => sales.day,
  //                 yValueMapper: (OxygenData sales, _) => sales.oxygen)
  //           ],