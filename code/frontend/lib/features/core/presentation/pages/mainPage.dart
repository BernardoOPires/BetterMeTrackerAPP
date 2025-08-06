import 'package:flutter/material.dart';
import 'package:frontend/features/progress/data/models/pieChartSectionDTO.dart';
import 'package:frontend/features/progress/presentation/widgets/PieCharts.dart';
import 'package:frontend/shared/themes/colors.dart';
import 'package:frontend/shared/widgets/PageStructure.dart';
import 'package:frontend/shared/widgets/NavBar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:graphic/graphic.dart';
import 'package:fl_chart/fl_chart.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<PieChartSectionDTO> sections5 = [
      PieChartSectionDTO(
        value: 30,
        title: 'Estudos',
        color: Colors.blue,
        // imagePath: 'assets/icons/book-svgrepo-com.svg',
      ),
      PieChartSectionDTO(
        value: 25,
        title: 'Saúde',
        color: Colors.green,
        // imagePath: 'assets/icons/fitness-svgrepo-com.svg',
      ),
      PieChartSectionDTO(
        value: 20,
        title: 'Trabalho',
        color: Colors.orange,
        // imagePath: 'assets/icons/worker-svgrepo-com.svg',
      ),
      PieChartSectionDTO(
        value: 15,
        title: 'Lazer',
        color: Colors.purple,
        // imagePath: 'assets/icons/controller-svgrepo-com.svg',
      ),
      PieChartSectionDTO(
        value: 10,
        title: 'Sono',
        color: Colors.red,
        // imagePath: 'assets/icons/sleep-svgrepo-com.svg',
      ),
    ];

    final List<PieChartSectionDTO> sections3 = [
      PieChartSectionDTO(
        value: 50,
        title: 'Produtivo',
        color: Colors.blue,
        // imagePath: 'assets/icons/checklist-svgrepo-com.svg',
      ),
      PieChartSectionDTO(
        value: 30,
        title: 'Procrastinação',
        color: Colors.grey,
        // imagePath: 'assets/icons/clock-svgrepo-com.svg',
      ),
      PieChartSectionDTO(
        value: 20,
        title: 'Descanso',
        color: Colors.green,
        // imagePath: 'assets/icons/sleep-svgrepo-com.svg',
      ),
    ];

    return MaterialApp(
      home: Scaffold(
        backgroundColor: backgroundColor,
        appBar: Navbar(),
        body: BaseStructure(
          child: Column(
            children: [
              Center(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 30,
                        vertical: 6,
                      ),
                      child: Material(
                        elevation: 5,
                        color: supColor,
                        borderRadius: BorderRadius.circular(15.0),
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width * 0.4,
                          child: MaterialButton(
                            minWidth: MediaQuery.of(context).size.width * 1,
                            onPressed: () {},
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                Text("goal 1", style: GoogleFonts.poppins()),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Container(
                                      padding: EdgeInsets.all(7),
                                      decoration: BoxDecoration(
                                        color: supColor,
                                        shape: BoxShape.circle,
                                      ),
                                      child: Icon(Icons.arrow_right),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 30,
                        vertical: 6,
                      ),
                      child: Material(
                        elevation: 5,
                        color: supColor,
                        borderRadius: BorderRadius.circular(15.0),
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width * 0.4,
                          child: MaterialButton(
                            minWidth: MediaQuery.of(context).size.width * 1,
                            onPressed: () {},
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                Text("goal 1", style: GoogleFonts.poppins()),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Container(
                                      padding: EdgeInsets.all(7),
                                      decoration: BoxDecoration(
                                        color: supColor,
                                        shape: BoxShape.circle,
                                      ),
                                      child: Icon(Icons.arrow_right),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 30,
                        vertical: 6,
                      ),
                      child: Material(
                        elevation: 5,
                        color: supColor,
                        borderRadius: BorderRadius.circular(15.0),
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width * 0.4,
                          child: MaterialButton(
                            minWidth: MediaQuery.of(context).size.width * 1,
                            onPressed: () {},
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                Text("goal 1", style: GoogleFonts.poppins()),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Container(
                                      padding: EdgeInsets.all(7),
                                      decoration: BoxDecoration(
                                        color: supColor,
                                        shape: BoxShape.circle,
                                      ),
                                      child: Icon(Icons.arrow_right),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                  ],
                ),
              ),
              Container(
                // decoration: BoxDecoration(color: lightBlueBackground),
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: backgroundColor,
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      width: MediaQuery.of(context).size.width * 0.80,
                      height: MediaQuery.of(context).size.height * 0.15,
                      child: PieChartSections(sectionsValue: sections3),
                    ),
                    SizedBox(height: 10),
                    Container(
                      decoration: BoxDecoration(
                        color: backgroundColor,
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      width: MediaQuery.of(context).size.width * 0.80,
                      height: MediaQuery.of(context).size.height * 0.15,
                      child: Row(
                        children: [
                          Expanded(
                            child: PieChartSections(sectionsValue: sections5),
                          ),

                          Expanded(
                            child: Chart(
                              data: [
                                {'genre': 'Sports', 'sold': 275},
                                {'genre': 'Strategy', 'sold': 115},
                                {'genre': 'Action', 'sold': 120},
                                {'genre': 'Shooter', 'sold': 350},
                                {'genre': 'Other', 'sold': 150},
                              ],
                              variables: {
                                'genre': Variable(
                                  accessor: (Map map) => map['genre'] as String,
                                ),
                                'sold': Variable(
                                  accessor: (Map map) => map['sold'] as num,
                                ),
                              },
                              marks: [IntervalMark()],
                              axes: [
                                Defaults.horizontalAxis,
                                Defaults.verticalAxis,
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
