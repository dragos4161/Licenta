import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class StatsPage extends StatefulWidget {
  const StatsPage({super.key});

  @override
  State<StatsPage> createState() => _StatsPageState();
}

class _StatsPageState extends State<StatsPage> {
  List<PieData> pieData = <PieData>[];
  List<PieData> pieDataCateg = <PieData>[];
  late TooltipBehavior _tooltipBehavior;

  int solved = 0;
  int submitted = 0;
  int pothole = 0;
  int dangerous = 0;
  int missing = 0;
  int broken = 0;
  int overturned = 0;
  int destroyed = 0;
  final List<PieData> data = <PieData>[
    PieData(20, 'solved'),
    PieData(60, 'pending'),
  ];

  @override
  void initState() {
    _tooltipBehavior = TooltipBehavior(enable: true);
    getData();

    super.initState();
  }

  Future<void> getData() async {
    int sub = 0;
    int solv = 0;
    int pot = 0;
    int dan = 0;
    int mis = 0;
    int bro = 0;
    int ove = 0;
    int des = 0;
    final QuerySnapshot<Map<String, dynamic>> snapshot = await FirebaseFirestore.instance.collection('dangers').get();

    for (final QueryDocumentSnapshot<Map<String, dynamic>> doc in snapshot.docs) {
      if (doc.data()['status'].toString() == 'submitted') {
        sub += 1;
      } else {
        solv += 1;
      }
      if (doc.data()['category'].toString().split(' ').first == 'pothole') {
        pot += 1;
      } else if (doc.data()['category'].toString().split(' ').first == 'dangerous') {
        dan += 1;
      } else if (doc.data()['category'].toString().split(' ').first == 'missing') {
        mis += 1;
      } else if (doc.data()['category'].toString().split(' ').first == 'broken') {
        bro += 1;
      } else if (doc.data()['category'].toString().split(' ').first == 'overturned') {
        ove += 1;
      } else {
        des += 1;
      }
    }
    setState(() {
      solved = solv;
      submitted = sub;
      pothole = pot;
      dangerous = dan;
      missing = mis;
      broken = bro;
      overturned = ove;
      destroyed = des;
      pieData = <PieData>[
        PieData(solved, 'solved'),
        PieData(submitted, 'pending'),
      ];
      pieDataCateg = <PieData>[
        PieData(pothole, 'pothole'),
        PieData(dangerous, 'dangerous building'),
        PieData(missing, 'missing sign'),
        PieData(broken, 'broken traffic light'),
        PieData(overturned, 'overturned trashcan'),
        PieData(destroyed, 'destroyed bench'),
      ];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 5,right: 40),
        child: Column(
          children: [
            SfCircularChart(
              title: ChartTitle(text: 'Problems status'),
              legend: Legend(isVisible: true),
              tooltipBehavior: _tooltipBehavior,
              series: <DoughnutSeries<PieData, String>>[
                DoughnutSeries<PieData, String>(
                  dataSource: pieData,
                  xValueMapper: (PieData d, _) => d.status,
                  yValueMapper: (PieData d, _) => d.value,
                  dataLabelSettings: const DataLabelSettings(isVisible: true),
                )
              ],
            ),
            SfCircularChart(
              title: ChartTitle(text: 'Categories distribution'),
              legend: Legend(isVisible: true,overflowMode: LegendItemOverflowMode.none),
              tooltipBehavior: _tooltipBehavior,
              series: <DoughnutSeries<PieData, String>>[
                DoughnutSeries<PieData, String>(
                  dataSource: pieDataCateg,
                  xValueMapper: (PieData d, _) => d.status,
                  yValueMapper: (PieData d, _) => d.value,
                  dataLabelSettings: const DataLabelSettings(isVisible: true),
                )
              ],
            ),
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
