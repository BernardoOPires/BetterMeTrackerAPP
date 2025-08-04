// import 'package:fl_chart_app/presentation/resources/app_resources.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:frontend/features/progress/data/models/pieChartSectionDTO.dart';
// import 'package:flutter_svg/flutter_svg.dart';

class PieChartSections extends StatefulWidget {
  // final Map<String, dynamic> data;
  final List<PieChartSectionDTO> sectionsValue;

  //change to graphs and use bloc

  const PieChartSections({
    super.key,
    // required this.data,
    required this.sectionsValue,
  });

  @override
  State<StatefulWidget> createState() => PieChartStructure();
}

class PieChartStructure extends State<PieChartSections> {
  int touchedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final section = widget.sectionsValue;
    return AspectRatio(
      aspectRatio: 1.3,
      child: AspectRatio(
        aspectRatio: 1,
        child: PieChart(
          PieChartData(
            pieTouchData: PieTouchData(
              touchCallback: (FlTouchEvent event, pieTouchResponse) {
                setState(() {
                  if (!event.isInterestedForInteractions ||
                      pieTouchResponse == null ||
                      pieTouchResponse.touchedSection == null) {
                    touchedIndex = -1;
                    return;
                  }
                  touchedIndex =
                      pieTouchResponse.touchedSection!.touchedSectionIndex;
                });
              },
            ),
            borderData: FlBorderData(show: false),
            sectionsSpace: 0,
            centerSpaceRadius: 0,
            sections: showingSections(section),
          ),
        ),
      ),
    );
  }

  List<PieChartSectionData> showingSections(List<PieChartSectionDTO> sections) {
    return List.generate(sections.length, (i) {
      final isTouched = i == touchedIndex;
      final fontSize = isTouched ? 20.0 : 16.0;
      final radius = isTouched ? 110.0 : 100.0;
      final widgetSize = isTouched ? 55.0 : 40.0;
      const shadows = [Shadow(color: Colors.black, blurRadius: 2)];

      return PieChartSectionData(
        color: sections[i].color,
        value: sections[i].value,
        title: sections[i].title,
        radius: radius,
        titleStyle: TextStyle(
          fontSize: fontSize,
          fontWeight: FontWeight.bold,
          color: const Color(0xffffffff),
          shadows: shadows,
        ),
        badgeWidget: _Badge(
          'assets/icons/ophthalmology-svgrepo-com.svg', /////////
          size: widgetSize,
          borderColor: Colors.blue,
        ),
        badgePositionPercentageOffset: .98,
      );

      // switch (i) {
      // case 0:
      //   //tranfers this to dynamic case
      //   return PieChartSectionData(
      //     color: sections[1].color,
      //     value: sections[1].value, //
      //     title: sections[1].title, //
      //     radius: radius, //
      //     titleStyle: TextStyle(
      //       fontSize: fontSize,
      //       fontWeight: FontWeight.bold,
      //       color: const Color(0xffffffff),
      //       shadows: shadows,
      //     ),
      //     badgeWidget: _Badge(
      //       'assets/icons/ophthalmology-svgrepo-com.svg',
      //       size: widgetSize,
      //       borderColor: Colors.blue,
      //     ),
      //     badgePositionPercentageOffset: .98,
      //   );
      // case 1:
      //   return PieChartSectionData(
      //     color: sections[2].color,
      //     value: sections[2].value, //
      //     title: sections[2].title,
      //     radius: radius,
      //     titleStyle: TextStyle(
      //       fontSize: fontSize,
      //       fontWeight: FontWeight.bold,
      //       color: const Color(0xffffffff),
      //       shadows: shadows,
      //     ),
      //     badgeWidget: _Badge(
      //       'assets/icons/librarian-svgrepo-com.svg',
      //       size: widgetSize,
      //       borderColor: Colors.yellow,
      //     ),
      //     badgePositionPercentageOffset: .98,
      //   );
      // case 2:
      // return PieChartSectionData(
      //   color: Colors.purple,
      //   value: 16,
      //   title: '16%',
      //   radius: radius,
      //   titleStyle: TextStyle(
      //     fontSize: fontSize,
      //     fontWeight: FontWeight.bold,
      //     color: const Color(0xffffffff),
      //     shadows: shadows,
      //   ),
      //   badgeWidget: _Badge(
      //     'assets/icons/fitness-svgrepo-com.svg',
      //     size: widgetSize,
      //     borderColor: Colors.purple,
      //   ),
      //   badgePositionPercentageOffset: .98,
      // );
      //   case 3:
      //     return PieChartSectionData(
      //       color: Colors.green,
      //       value: 15,
      //       title: '15%',
      //       radius: radius,
      //       titleStyle: TextStyle(
      //         fontSize: fontSize,
      //         fontWeight: FontWeight.bold,
      //         color: const Color(0xffffffff),
      //         shadows: shadows,
      //       ),
      //       badgeWidget: _Badge(
      //         'assets/icons/worker-svgrepo-com.svg',
      //         size: widgetSize,
      //         borderColor: Colors.green,
      //       ),
      //       badgePositionPercentageOffset: .98,
      //     );
      //   default:
      //     throw Exception('Oh no');
      // }
    });
  }
}

class _Badge extends StatelessWidget {
  const _Badge(this.svgAsset, {required this.size, required this.borderColor});
  final String svgAsset;
  final double size;
  final Color borderColor;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: PieChart.defaultDuration,
      width: size,
      height: size,
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
        border: Border.all(color: borderColor, width: 2),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black.withValues(alpha: .5),
            offset: const Offset(3, 3),
            blurRadius: 3,
          ),
        ],
      ),
      padding: EdgeInsets.all(size * .15),
      // child: Center(child: SvgPicture.asset(svgAsset)),
    );
  }
}
