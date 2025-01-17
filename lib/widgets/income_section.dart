import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/custom_container.dart';
import 'package:responsive_dashboard/widgets/custom_header.dart';
import 'package:responsive_dashboard/widgets/income_section_body.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomContainer(
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          CustomHeader(title: 'Income'),
          SizedBox(height: 24),
          IncomeSectionBody(),
        ],
      ),
    );
  }
}
