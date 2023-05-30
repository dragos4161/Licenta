import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class StatsPage extends StatefulWidget {
  const StatsPage({super.key});


  @override
  State<StatsPage> createState() => _StatsPageState();
}

class _StatsPageState extends State<StatsPage> {
  List<PieData> pieData = <PieData>[];
  late TooltipBehavior _tooltipBehavior ;
  final List<PieData> data = <PieData>[
    PieData(20, 'solved'),
    PieData(60, 'pending'),
  ];

  @override
  void initState() {
    _tooltipBehavior = TooltipBehavior(enable: true);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SfCircularChart(
          title: ChartTitle(text: 'Problems status'),
          legend: Legend(isVisible: true),
          tooltipBehavior: _tooltipBehavior,
          series: <DoughnutSeries<PieData, String>>[
            DoughnutSeries<PieData, String>(
              dataSource: data,
              xValueMapper: (PieData d, _) => d.status,
              yValueMapper: (PieData d, _) => d.value,
              dataLabelSettings: const DataLabelSettings(isVisible: true),
            )
          ],
        ),
      ),
    );
  }
}

class PieData {
  PieData(this.value, this.status);

  final String status;
  final num value;
}
