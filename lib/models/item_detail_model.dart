import 'package:flutter/material.dart';

class ItemDetailModel {
  final Color bulletColor;
  final String title;
  final int percentage;

  const ItemDetailModel(
      {required this.bulletColor,
      required this.title,
      required this.percentage});
}
