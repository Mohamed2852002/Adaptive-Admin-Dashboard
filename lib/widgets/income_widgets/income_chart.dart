import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class IncomeChart extends StatefulWidget {
  const IncomeChart({super.key});

  @override
  State<IncomeChart> createState() => _IncomeChartState();
}

class _IncomeChartState extends State<IncomeChart> {
  int selectedIndex = -1;
  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.scaleDown,
      child: SizedBox(
        height: 150,
        width: 150,
        child: PieChart(
          getChartData(),
        ),
      ),
    );
  }

  PieChartData getChartData() {
    return PieChartData(
      pieTouchData: PieTouchData(
        touchCallback: (touchEvent, touchResponse) {
          setState(
            () {
              selectedIndex =
                  touchResponse?.touchedSection?.touchedSectionIndex ?? -1;
            },
          );
        },
      ),
      sectionsSpace: 0,
      sections: [
        PieChartSectionData(
          radius: selectedIndex == 0 ? 25 : 20,
          showTitle: false,
          value: 40,
          color: const Color(0xff208CC8),
        ),
        PieChartSectionData(
          radius: selectedIndex == 1 ? 25 : 20,
          showTitle: false,
          value: 25,
          color: const Color(0xff4EB7F2),
        ),
        PieChartSectionData(
          radius: selectedIndex == 2 ? 25 : 20,
          showTitle: false,
          value: 20,
          color: const Color(0xff064061),
        ),
        PieChartSectionData(
          radius: selectedIndex == 3 ? 25 : 20,
          showTitle: false,
          value: 22,
          color: const Color(0xffE2DECD),
        ),
      ],
    );
  }
}
