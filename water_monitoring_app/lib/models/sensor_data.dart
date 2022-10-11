import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class SensorData {
  SensorData(this.day, this.oxygen, this.ph, this.temperature, this.salinity);

  final int day;
  final num ph;
  final num oxygen;
  final num temperature;
  final num salinity;
}

List<SensorData> getChartData() {
  final List<SensorData> chartData = [
    SensorData(1, 5, 8, 25, 30),
    SensorData(2, 25, 7, 28, 35),
    SensorData(3, 30, 6, 27, 40),
    SensorData(4, 32, 9, 28, 32),
    SensorData(5, 32, 5, 25, 33),
    SensorData(6, 33, 7, 32, 29),
    SensorData(7, 35, 7, 24, 28),
  ];
  return chartData;
}
