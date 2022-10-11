import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class PhData {
  PhData(this.day, this.ph);
  final int day;
  final double ph;
}

final List<PhData> phData = [
  PhData(1, 5),
  PhData(2, 10),
  PhData(3, 11),
  PhData(4, 12),
  PhData(5, 13),
  PhData(6, 20),
  PhData(7, 19),
];
