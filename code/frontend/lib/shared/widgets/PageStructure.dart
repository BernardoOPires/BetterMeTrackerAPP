import 'package:flutter/material.dart';
import 'package:frontend/shared/themes/colors.dart';
import 'package:frontend/shared/widgets/NavBar.dart';
import 'package:frontend/shared/widgets/TopBar.dart';
import 'package:google_fonts/google_fonts.dart';

class BaseStructure extends StatelessWidget {
  final Widget child;
  final Widget? appBar;
  final Widget? bottomBar;
  const BaseStructure({
    super.key,
    required this.child,
    this.appBar,
    this.bottomBar,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: this.appBar != null ? appBar as PreferredSizeWidget : null,
      body: Container(
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
      ),
      bottomNavigationBar: this.bottomBar,
    );
  }
}
