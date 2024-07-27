import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/item_detail_model.dart';
import 'package:responsive_dashboard/utils/styles.dart';
import 'package:responsive_dashboard/widgets/income_details.dart';

class DetailedIncomeChart extends StatefulWidget {
  const DetailedIncomeChart({super.key});

  @override
  State<DetailedIncomeChart> createState() => _DetailedIncomeChartState();
}

class _DetailedIncomeChartState extends State<DetailedIncomeChart> {
  int activeSectionIndex = -1;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: PieChart(
        _getPieChartData(),
        swapAnimationDuration: const Duration(milliseconds: 400),
        swapAnimationCurve: Curves.linear,
      ),
    );
  }

  PieChartData _getPieChartData() {
    const items = IncomeDetails.items;
    return PieChartData(
        pieTouchData: PieTouchData(
          touchCallback: (p0, pieTouchResponse) {
            // change the active index to the selected section index in the pie chart
            if (activeSectionIndex !=
                pieTouchResponse?.touchedSection?.touchedSectionIndex) {
              activeSectionIndex =
                  pieTouchResponse?.touchedSection?.touchedSectionIndex ?? -1;
              setState(() {});
            }
          },
        ),
        sectionsSpace: 0,
        sections: items.asMap().entries.map((entry) {
          final int index = entry.key;
          final ItemDetailModel item = entry.value;
          return PieChartSectionData(
            titleStyle: Styles.styleMeduim16.copyWith(color: Colors.white),
            title: activeSectionIndex == index
                ? item.title
                : '${item.percentage}%',
            value: item.percentage.toDouble(),
            radius: activeSectionIndex == index ? 60 : 50,
            color: item.bulletColor,
          );
        }).toList());
  }
}
