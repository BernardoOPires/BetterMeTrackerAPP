import 'package:flutter/material.dart';
import 'package:frontend/features/progress/data/models/pieChartSectionDTO.dart';
import 'package:frontend/features/progress/presentation/widgets/PieCharts.dart';
import 'package:frontend/shared/themes/colors.dart';
import 'package:frontend/shared/widgets/PageStructure.dart';
import 'package:frontend/shared/widgets/NavBar.dart';
import 'package:frontend/shared/widgets/TopBar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:graphic/graphic.dart';
import 'package:fl_chart/fl_chart.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BaseStructure(
        appBar: TopBar(),
        bottomBar: BottomNavBar(),
        child: SingleChildScrollView(
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
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: backgroundColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 100,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          itemExtent: double.infinity,
                          children: List<Widget>.generate(10, (int index) {
                            return Center(child: Text('Item $index'));
                          }),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(16),
                          child: GridView.count(
                            crossAxisCount: 2,
                            mainAxisSpacing: 10,
                            crossAxisSpacing: 10,
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            children: <Widget>[
                              Container(
                                padding: const EdgeInsets.all(8),
                                color: Colors.green[100],
                                child: const Text(
                                  "He'd have you all unravel at the",
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.all(8),
                                color: Colors.green[200],
                                child: const Text('Heed not the rabble'),
                              ),
                              Container(
                                padding: const EdgeInsets.all(8),
                                color: Colors.green[300],
                                child: const Text('Sound of screams but the'),
                              ),
                              Container(
                                padding: const EdgeInsets.all(8),
                                color: Colors.green[400],
                                child: const Text('Who scream'),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
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
