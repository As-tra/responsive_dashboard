
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dashboard/utils/assets.dart';
import 'package:responsive_dashboard/utils/styles.dart';

class CustomDropDown extends StatefulWidget {
  const CustomDropDown({
    super.key,
  });

  @override
  State<CustomDropDown> createState() => _CustomDropDownState();
}

class _CustomDropDownState extends State<CustomDropDown> {
  List<DropdownMenuItem> items = [
    DropdownMenuItem(value: 'monthly', child: Text('monthly')),
    DropdownMenuItem(value: 'weekly', child: Text('weekly')),
    DropdownMenuItem(value: 'Daily', child: Text('Daily')),
  ];
  String selectedValue = 'monthly';
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 134,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Color(0xffF1F1F1)),
      ),
      child: DropdownButtonHideUnderline(
        child: ButtonTheme(
          alignedDropdown: true,
          child: DropdownButton(
            icon: SvgPicture.asset(Assets.imagesArrowDown),
            value: selectedValue,
            items: items,
            onChanged: (value) {
              setState(() {});
              selectedValue = value;
            },
            style: Styles.styleMeduim16,
          ),
        ),
      ),
    );
  }
}
