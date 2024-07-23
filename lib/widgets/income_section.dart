import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/custom_container.dart';
import 'package:responsive_dashboard/widgets/custom_header.dart';
import 'package:responsive_dashboard/widgets/income_chart.dart';
import 'package:responsive_dashboard/widgets/income_details.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomContainer(
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          CustomHeader(title: 'Income'),
          Row(
            children: [
              Expanded(
                child: IncomeChart(),
              ),
              SizedBox(width: 40),
              Expanded(
                child: IncomeDetails(),
              ),
            ],
          )
        ],
      ),
    );
  }
}
