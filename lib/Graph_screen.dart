import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';

class GraphScreen extends StatelessWidget {
 GraphScreen({Key? key}) : super(key: key);
List<_SalesData> data = [
    _SalesData('01 Jan', 94),
    _SalesData('05 Jan', 97),
    _SalesData('10 Jan', 95),
    _SalesData('15 Jan', 98),
    _SalesData('20 Jan', 94)
  ];
@override

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Graph'),
          backgroundColor: Color.fromARGB(255, 31, 142, 245),
        ),
        body: Column(children: [
          //Initialize the chart widget
          SfCartesianChart(
              primaryXAxis: CategoryAxis(),
              // Chart title
              title: ChartTitle(text: 'Blood Pressure Graph'),
              // Enable legend
              legend: Legend(isVisible: true),
              // Enable tooltip
              tooltipBehavior: TooltipBehavior(enable: true),
              series: <ChartSeries<_SalesData, String>>[
                LineSeries<_SalesData, String>(
                    dataSource: data,
                    xValueMapper: (_SalesData sales, _) => sales.year,
                    yValueMapper: (_SalesData sales, _) => sales.sales,
                    name: 'SpO2',
                    // Enable data label
                    dataLabelSettings: DataLabelSettings(isVisible: true))
              ]),
          
        ]));
  }
}

class _SalesData {
  _SalesData(this.year, this.sales);

  final String year;
  final double sales;
}
