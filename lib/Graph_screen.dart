import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';

class GraphScreen extends StatelessWidget {
 GraphScreen({Key? key}) : super(key: key);
List<_SalesData> data = [
    _SalesData('01 Janeiro', 35),
    _SalesData('05 Janeiro', 28),
    _SalesData('10 Janeiro', 34),
    _SalesData('15 Janeiro', 32),
    _SalesData('20 Janeiro', 40)
  ];
@override

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Gráfico'),
        ),
        body: Column(children: [
          //Initialize the chart widget
          SfCartesianChart(
              primaryXAxis: CategoryAxis(),
              // Chart title
              title: ChartTitle(text: 'Half yearly sales analysis'),
              // Enable legend
              legend: Legend(isVisible: true),
              // Enable tooltip
              tooltipBehavior: TooltipBehavior(enable: true),
              series: <ChartSeries<_SalesData, String>>[
                LineSeries<_SalesData, String>(
                    dataSource: data,
                    xValueMapper: (_SalesData sales, _) => sales.year,
                    yValueMapper: (_SalesData sales, _) => sales.sales,
                    name: 'Sales',
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
