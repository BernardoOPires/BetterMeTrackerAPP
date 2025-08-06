import 'package:flutter/material.dart';
import 'package:frontend/features/progress/data/models/pieChartSectionDTO.dart';
import 'package:frontend/features/progress/presentation/widgets/PieCharts.dart';
import 'package:frontend/shared/themes/colors.dart';
import 'package:frontend/shared/widgets/PageStructure.dart';
import 'package:frontend/shared/widgets/NavBar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:graphic/graphic.dart';
import 'package:fl_chart/fl_chart.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: backgroundColor,
        appBar: Navbar(),
        body: BaseStructure(
          child: Column(
            children: [
              Center(
                child: Container(
                  width: MediaQuery.of(context).size.height * 0.20,
                  height: MediaQuery.of(context).size.height * 0.20,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(200)),
                    color: const Color.fromARGB(255, 88, 77, 77),
                  ),
                ),
              ),
              SizedBox(height: 15),
              Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.6,
                decoration: BoxDecoration(
                  color: backgroundColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
