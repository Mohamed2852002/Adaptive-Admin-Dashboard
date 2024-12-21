import 'package:adaptive_admin_dashboard/utils/styles.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class DetailedIncomeChart extends StatefulWidget {
  const DetailedIncomeChart({super.key});

  @override
  State<DetailedIncomeChart> createState() => _DetailedIncomeChartState();
}

class _DetailedIncomeChartState extends State<DetailedIncomeChart> {
  int selectedIndex = -1;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: PieChart(
        getChartData(),
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
          title: selectedIndex == 0 ? 'Design service' : '40%',
          titlePositionPercentageOffset: selectedIndex == 0 ? 1.4 : null,
          titleStyle: Styles.styleBold16(context).copyWith(
            color: selectedIndex == 0 ? null : Colors.white,
          ),
          radius: selectedIndex == 0 ? 60 : 50,
          value: 40,
          color: const Color(0xff208CC8),
        ),
        PieChartSectionData(
          title: selectedIndex == 1 ? 'Design product' : '25%',
          titlePositionPercentageOffset: selectedIndex == 1 ? 2.3 : null,
          titleStyle: Styles.styleBold16(context).copyWith(
            color: selectedIndex == 1 ? null : Colors.white,
          ),
          radius: selectedIndex == 1 ? 60 : 50,
          value: 25,
          color: const Color(0xff4EB7F2),
        ),
        PieChartSectionData(
          title: selectedIndex == 2 ? 'Product royaltiy' : '20%',
          titlePositionPercentageOffset: selectedIndex == 2 ? 1.4 : null,
          titleStyle: Styles.styleBold16(context).copyWith(
            color: selectedIndex == 2 ? null : Colors.white,
          ),
          radius: selectedIndex == 2 ? 60 : 50,
          value: 20,
          color: const Color(0xff064061),
        ),
        PieChartSectionData(
          title: selectedIndex == 3 ? 'Other' : '22%',
          titlePositionPercentageOffset: selectedIndex == 3 ? 1.5 : null,
          titleStyle: Styles.styleBold16(context).copyWith(
            color: selectedIndex == 3 ? null : Colors.white,
          ),
          radius: selectedIndex == 3 ? 60 : 50,
          value: 22,
          color: const Color(0xffE2DECD),
        ),
      ],
    );
  }
}
