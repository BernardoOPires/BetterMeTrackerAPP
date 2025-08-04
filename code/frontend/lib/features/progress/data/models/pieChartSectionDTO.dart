import 'package:flutter/material.dart';
import 'package:frontend/shared/themes/colors.dart';

class PieChartSectionDTO {
  final double value;
  final String title;
  final Color color;
  // final String img;

  PieChartSectionDTO({
    required this.value,
    required this.title,
    required this.color,
    // required this.img,
  });

  factory PieChartSectionDTO.fromMap(Map<String, dynamic> map) {
    final title = map['label'] ?? 'Outro';
    final value = (map['total'] ?? 0).toDouble();
    final color = map['color'] ?? primaryColor;
    // final img =

    return PieChartSectionDTO(
      value: value,
      title: title,
      color: color,
      // img: img
    );

    //method for colors?

    //method for title --> icon?
  }
}
