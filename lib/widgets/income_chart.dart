import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class IncomeChart extends StatefulWidget {
  const IncomeChart({super.key});

  @override
  State<IncomeChart> createState() => _IncomeChartState();
}

class _IncomeChartState extends State<IncomeChart> {
  int activeSectionIndex = -1;
  @override
  Widget build(BuildContext context) {
    return PieChart(
      _getPieChartData(),
      swapAnimationDuration: const Duration(milliseconds: 400),
      swapAnimationCurve: Curves.linear,
    );
  }

  PieChartData _getPieChartData() {
    return PieChartData(
      pieTouchData: PieTouchData(
        touchCallback: (p0, pieTouchResponse) {
          if (activeSectionIndex !=
              pieTouchResponse?.touchedSection?.touchedSectionIndex) {
            activeSectionIndex =
                pieTouchResponse?.touchedSection?.touchedSectionIndex ?? -1;
            setState(() {});
          }
        },
      ),
      sectionsSpace: 0,
      sections: [
        PieChartSectionData(
          value: 40,
          radius: activeSectionIndex == 0 ? 65 : 50,
          color: const Color(0xff208CC8),
          showTitle: false,
        ),
        PieChartSectionData(
          radius: activeSectionIndex == 1 ? 65 : 50,
          value: 25,
          color: const Color(0xff4EB7F2),
          showTitle: false,
        ),
        PieChartSectionData(
          value: 15,
          radius: activeSectionIndex == 2 ? 65 : 50,
          color: const Color(0xff064061),
          showTitle: false,
        ),
        PieChartSectionData(
          value: 20,
          radius: activeSectionIndex == 3 ? 65 : 50,
          color: const Color(0xffE2DECD),
          showTitle: false,
        ),
      ],
    );
  }
}
