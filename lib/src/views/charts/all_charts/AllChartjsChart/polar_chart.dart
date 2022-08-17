import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';


class PolarChart extends StatefulWidget {
  const PolarChart({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => PolarChartState();
}

class PolarChartState extends State {
  int touchedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Indicator(
              color: const Color(0xff3c4bcf),
              text: 'Series1',
              isSquare: false,
              size: touchedIndex == 0 ? 18 : 16,
              textColor: touchedIndex == 0 ? Colors.black : Colors.grey,
            ),
            Indicator(
              color: const Color(0xff3ba4f8),
              text: 'Series2',
              isSquare: false,
              size: touchedIndex == 1 ? 18 : 16,
              textColor: touchedIndex == 1 ? Colors.black : Colors.grey,
            ),
            Indicator(
              color: const Color(0xff35a599),
              text: 'Series3',
              isSquare: false,
              size: touchedIndex == 2 ? 18 : 16,
              textColor: touchedIndex == 2 ? Colors.black : Colors.grey,
            ),
            Indicator(
              color: const Color(0xffed4562),
              text: 'Series4',
              isSquare: false,
              size: touchedIndex == 3 ? 18 : 16,
              textColor: touchedIndex == 3 ? Colors.black : Colors.grey,
            ),
          ],
        ),
        Expanded(
          child: Stack(
            alignment: Alignment.center,
           children: [
             SizedBox(
               height: 600,
               width: 600,
               child: CustomPaint(
                 painter: OpenPainter(),
               ),
             ),
             SizedBox(
               height: 450,
               width: 450,
               child: CustomPaint(
                 painter: OpenPainter(),
               ),
             ),
             PieChart(
               PieChartData(
                   pieTouchData: PieTouchData(touchCallback:
                       (FlTouchEvent event, pieTouchResponse) {
                     setState(() {
                       if (!event.isInterestedForInteractions ||
                           pieTouchResponse == null ||
                           pieTouchResponse.touchedSection == null) {
                         touchedIndex = -1;
                         return;
                       }
                       touchedIndex = pieTouchResponse
                           .touchedSection!.touchedSectionIndex;
                     });
                   }),
                   startDegreeOffset: 180,
                   borderData: FlBorderData(
                     show: true,
                   ),
                   sectionsSpace: 1,
                   centerSpaceRadius: 0,
                   sections: showingSections(),
               ),
             ),
           ],
          ),
        ),
      ],
    );
  }

  List<PieChartSectionData> showingSections() {
    return List.generate(4,
          (i) {
      switch (i) {
          case 0:
            return PieChartSectionData(
              color: const Color(0xff3c4bcf),
              value: 25,
              title: '',
              radius: 100,
              titleStyle: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff3c4bcf)),
              titlePositionPercentageOffset: 0.55,
            );
          case 1:
            return PieChartSectionData(
              color: const Color(0xff3ba4f8),
              value: 25,
              title: '',
              radius: 70,
              titleStyle: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff3ba4f8)),
              titlePositionPercentageOffset: 0.55,

            );
          case 2:
            return PieChartSectionData(
              color: const Color(0xff35a599),
              value: 25,
              title: '',
              radius: 100,
              titleStyle: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff35a599)),
              titlePositionPercentageOffset: 0.6,

            );
          case 3:
            return PieChartSectionData(
              color: const Color(0xffed4562),
              value: 25,
              title: '',
              radius: 50,
              titleStyle: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color(0xffed4562)),
              titlePositionPercentageOffset: 0.55,
            );
          default:
            throw Error();
        }
      },
    );
  }
}

class Indicator extends StatelessWidget {
  final Color color;
  final String text;
  final bool isSquare;
  final double size;
  final Color textColor;

  const Indicator({
    Key? key,
    required this.color,
    required this.text,
    required this.isSquare,
    this.size = 16,
    this.textColor = const Color(0xff505050),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
          width: size,
          height: size,
          decoration: BoxDecoration(
            shape: isSquare ? BoxShape.rectangle : BoxShape.circle,
            color: color,
          ),
        ),
        const SizedBox(
          width: 4,
        ),
        Text(
          text,
          style: TextStyle(
              fontSize: 16, fontWeight: FontWeight.bold, color: textColor),
        )
      ],
    );
  }
}

extension ColorExtension on Color {
  /// Convert the color to a darken color based on the [percent]
  Color darken([int percent = 40]) {
    assert(1 <= percent && percent <= 100);
    final value = 1 - percent / 100;
    return Color.fromARGB(alpha, (red * value).round(), (green * value).round(),
        (blue * value).round());
  }
}

class OpenPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height /2);
    var paint1 = Paint()
      ..color = Colors.grey.withOpacity(0.5)
      ..strokeWidth = 1
      ..style = PaintingStyle.stroke;
    canvas.drawCircle(center,size.width *1 /4,paint1);
  }
  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
