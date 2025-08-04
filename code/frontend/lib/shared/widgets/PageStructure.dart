import 'package:flutter/material.dart';
import 'package:frontend/shared/themes/colors.dart';
import 'package:google_fonts/google_fonts.dart';

class BaseStructure extends StatelessWidget {
  final Widget child;
  const BaseStructure({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          colors: [
            primaryColor,
            Color.fromARGB(255, 131, 155, 228),
            secondaryColor,
          ],
        ),
      ),
      child: child,
    );
  }
}
