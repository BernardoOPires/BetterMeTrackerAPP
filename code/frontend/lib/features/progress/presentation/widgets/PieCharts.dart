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
                  //change to BloC
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
            centerSpaceRadius: double.infinity,
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
        radius: radius / 2,
        titleStyle: TextStyle(
          fontSize: fontSize / 1.5,
          fontWeight: FontWeight.bold,
          color: const Color(0xffffffff),
          shadows: shadows,
        ),
        badgeWidget: _Badge(
          'assets/icons/ophthalmology-svgrepo-com.svg', /////////
          size: widgetSize / 2,
          borderColor: Colors.blue,
        ),
        badgePositionPercentageOffset: .98,
      );
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
