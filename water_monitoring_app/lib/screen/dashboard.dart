import 'package:flutter/material.dart';

import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:percent_indicator/percent_indicator.dart';

import '../models/sensor_data.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          weatherBox(),
          weatherBoxDetails(),
          sensorDataCircle(),
        ],
      ),
    );
  }
}

class sensorDataCircle extends StatelessWidget {
  const sensorDataCircle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 2),
      child: Card(
        elevation: 7,
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                child: CircularPercentIndicator(
                  header: const Text('Temperature'),
                  radius: 50,
                  lineWidth: 7.0,
                  backgroundColor: Colors.grey.shade300,
                  percent: .45,
                  // progressColor: Colors.red[300],
                  circularStrokeCap: CircularStrokeCap.round,
                  animation: true,
                  linearGradient: const LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.centerLeft,
                      tileMode: TileMode.clamp,
                      colors: [Colors.green, Colors.yellow, Colors.red]),
                  center: const Text(
                    '45.5 °C',
                    style: const TextStyle(fontSize: 20),
                  ),
                ),
              ),
              Container(
                child: CircularPercentIndicator(
                  header: const Text('Oxygen'),
                  radius: 50,
                  lineWidth: 7.0,
                  backgroundColor: Colors.grey.shade300,
                  percent: 0.4,
                  //progressColor: Colors.blue,
                  circularStrokeCap: CircularStrokeCap.round,
                  animation: true,
                  center: const Text(
                    '40%',
                    style: const TextStyle(fontSize: 20),
                  ),
                  linearGradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Colors.blue.shade200, Colors.blueAccent],
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                child: CircularPercentIndicator(
                  header: const Text('pH'),
                  radius: 50,
                  lineWidth: 7.0,
                  backgroundColor: Colors.grey.shade300,
                  percent: .7,
                  // progressColor: Colors.red[300],
                  circularStrokeCap: CircularStrokeCap.round,
                  animation: true,
                  linearGradient: const LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.centerLeft,
                      tileMode: TileMode.clamp,
                      colors: [Colors.green, Colors.yellow, Colors.red]),
                  center: const Text(
                    '70 %',
                    style: const TextStyle(fontSize: 20),
                  ),
                ),
              ),
              Container(
                child: CircularPercentIndicator(
                  header: const Text('Salinity'),
                  radius: 50,
                  lineWidth: 7.0,
                  backgroundColor: Colors.grey.shade300,
                  percent: 0.3,
                  //progressColor: Colors.blue,
                  circularStrokeCap: CircularStrokeCap.round,
                  animation: true,
                  center: const Text(
                    '30%',
                    style: const TextStyle(fontSize: 20),
                  ),
                  linearGradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Colors.blue.shade200, Colors.blueAccent],
                  ),
                ),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}

class weatherBox extends StatelessWidget {
  const weatherBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        padding: const EdgeInsets.all(15.0),
        margin: const EdgeInsets.all(15.0),
        height: 160.0,
        decoration: BoxDecoration(
            color: Colors.indigoAccent,
            borderRadius: BorderRadius.all(Radius.circular(20))),
      ),
      ClipPath(
          clipper: Clipper(),
          child: Container(
              padding: const EdgeInsets.all(15.0),
              margin: const EdgeInsets.all(15.0),
              height: 160.0,
              decoration: BoxDecoration(
                  color: Colors.indigoAccent[400],
                  borderRadius: BorderRadius.all(Radius.circular(20))))),
      Container(
        padding: const EdgeInsets.all(15.0),
        margin: const EdgeInsets.all(15.0),
        height: 160.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        child: Row(
          children: [
            Expanded(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                  Image.asset(
                    'assets/images/cloudy.png',
                    height: 50,
                  ),
                  Container(
                      margin: const EdgeInsets.all(5.0),
                      child: Text(
                        "Scattered Cloud",
                        style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 16,
                            color: Colors.white),
                      )),
                  Container(
                      margin: const EdgeInsets.all(5.0),
                      child: Text(
                        "H:33° L:24°",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 13,
                            color: Colors.white),
                      )),
                ])),
            Column(children: <Widget>[
              Container(
                  child: Text(
                "31°",
                textAlign: TextAlign.left,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 60,
                    color: Colors.white),
              )),
              Container(
                margin: const EdgeInsets.all(0),
                child: Text(
                  "Feels like 28°",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 13,
                      color: Colors.white),
                ),
              ),
            ])
          ],
        ),
      )
    ]);
  }
}

class weatherBoxDetails extends StatelessWidget {
  const weatherBoxDetails({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 15, top: 25, bottom: 25, right: 15),
      margin: const EdgeInsets.only(left: 15, top: 5, bottom: 15, right: 15),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(20)),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.1),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3),
            )
          ]),
      child: Row(
        children: [
          Expanded(
              child: Column(
            children: [
              Container(
                  child: Text(
                "Wind",
                textAlign: TextAlign.left,
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 12,
                    color: Colors.grey),
              )),
              Container(
                  child: Text(
                "6.7 km/h",
                textAlign: TextAlign.left,
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 15,
                    color: Colors.black),
              ))
            ],
          )),
          Expanded(
              child: Column(
            children: [
              Container(
                  child: Text(
                "Humidity",
                textAlign: TextAlign.left,
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 12,
                    color: Colors.grey),
              )),
              Container(
                  child: Text(
                "28 %",
                textAlign: TextAlign.left,
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 15,
                    color: Colors.black),
              ))
            ],
          )),
          Expanded(
              child: Column(
            children: [
              Container(
                  child: Text(
                "Pressure",
                textAlign: TextAlign.left,
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 12,
                    color: Colors.grey),
              )),
              Container(
                  child: Text(
                "1021.5 hPa",
                textAlign: TextAlign.left,
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 15,
                    color: Colors.black),
              ))
            ],
          ))
        ],
      ),
    );
  }
}

class Clipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.moveTo(0, size.height - 20);

    path.quadraticBezierTo((size.width / 6) * 1, (size.height / 2) + 15,
        (size.width / 3) * 1, size.height - 30);
    path.quadraticBezierTo((size.width / 2) * 1, (size.height + 0),
        (size.width / 3) * 2, (size.height / 4) * 3);
    path.quadraticBezierTo((size.width / 6) * 5, (size.height / 2) - 20,
        size.width, size.height - 60);

    path.lineTo(size.width, size.height - 60);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);

    path.close();

    return path;
  }

  @override
  bool shouldReclip(Clipper oldClipper) => false;
}
