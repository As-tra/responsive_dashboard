import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dashboard/utils/assets.dart';
import 'package:responsive_dashboard/utils/styles.dart';

class AllExpensesHeader extends StatefulWidget {
  const AllExpensesHeader({super.key});

  @override
  State<AllExpensesHeader> createState() => _AllExpensesHeaderState();
}

class _AllExpensesHeaderState extends State<AllExpensesHeader> {
  List<DropdownMenuItem> items = [
    DropdownMenuItem(
        value: 'monthly',
        child: Text(
          'monthly',
          style: Styles.styleMeduim16,
        )),
    DropdownMenuItem(
        value: 'weekly',
        child: Text(
          'weekly',
          style: Styles.styleMeduim16,
        )),
    DropdownMenuItem(
        value: 'Daily',
        child: Text(
          'Daily',
          style: Styles.styleMeduim16,
        )),
  ];

  String selectedValue = 'monthly';

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'All Expenses',
          style: Styles.styleSemiBold20,
        ),
        Spacer(),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: Color(0xffF1F1F1)),
          ),
          child: DropdownButton(
            padding: EdgeInsets.symmetric(horizontal: 12),
            icon: SvgPicture.asset(Assets.imagesArrowDown),
            underline: SizedBox(),
            value: selectedValue,
            onChanged: (value) {
              setState(() {});
              selectedValue = value;
            },
            items: items,
          ),
        )
      ],
    );
  }
}
