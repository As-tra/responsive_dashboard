import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/size_config.dart';
import 'package:responsive_dashboard/widgets/detailed_income_chart.dart';
import 'package:responsive_dashboard/widgets/income_chart.dart';
import 'package:responsive_dashboard/widgets/income_details.dart';

class IncomeSectionBody extends StatelessWidget {
  const IncomeSectionBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return width >= SizeConfig.desktop && width < 1750
        ? const Expanded(
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: DetailedIncomeChart(),
            ),
          )
        : const Row(
            children: [
              Expanded(
                flex: 1,
                child: IncomeChart(),
              ),
              SizedBox(width: 40),
              Expanded(
                flex: 2,
                child: IncomeDetails(),
              ),
            ],
          );
  }
}
