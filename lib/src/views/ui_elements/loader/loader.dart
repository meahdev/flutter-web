import 'package:admin_dashboard/src/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:flutterx/flutterx.dart';

class Loaders extends StatefulWidget {
  const Loaders({Key? key}) : super(key: key);

  @override
  State<Loaders> createState() => _LoadersState();
}

class _LoadersState extends State<Loaders> {
  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        FxBox.h20,
        _cardWidget(
          label: 'Basic Loader',
          widget: const FxLoader.basicLoader(
            duration: Duration(milliseconds: 900),
            color: ColorConst.primary,
            size: 40,
          ),
        ),
        FxBox.h20,
        _cardWidget(
          label: 'Spining circle Loader',
          widget: const FxLoader.spinningLinesLoader(
            duration: Duration(milliseconds: 3000),
            color: ColorConst.chartColorBlue,
            itemCount: 5,
            size: 70,
            lineWidth: 2,
          ),
        ),
        FxBox.h20,
        _cardWidget(
          label: 'Wave Loader',
          widget: FxLoader.waveLoader(
            color: ColorConst.info,
            duration: const Duration(milliseconds: 1200),
            itemCount: 5,
            size: 40,
            wavetype: WaveType.start,
          ),
        ),
        FxBox.h20,
        _cardWidget(
          label: 'Circle Loader',
          widget: FxLoader.circleLoader(
            color: ColorConst.warning,
            duration: const Duration(milliseconds: 1200),
            size: 60,
          ),
        ),
        FxBox.h20,
        _cardWidget(
          label: 'Cube Grid Loader',
          widget: FxLoader.cubeGridLoader(
            color: ColorConst.error,
            duration: const Duration(milliseconds: 1200),
            size: 50,
          ),
        ),
        FxBox.h20,
        _cardWidget(
          label: 'Double Bounce Loader',
          widget: const FxLoader.doubleBounceLoader(
            color: ColorConst.primary,
            duration: Duration(milliseconds: 2000),
            size: 50,
          ),
        ),
        FxBox.h20,
        _cardWidget(
          label: 'Fading circle Loader',
          widget: const FxLoader.fadingCircleLoader(
            color: ColorConst.chartColorBlue,
            duration: Duration(milliseconds: 1200),
            size: 50,
          ),
        ),
        FxBox.h20,
        _cardWidget(
          label: 'Pulse circle Loader',
          widget: FxLoader.pulseCircleLoader(
            color: ColorConst.info,
            duration: const Duration(milliseconds: 1200),
            size: 50,
          ),
        ),
        FxBox.h20,
        _cardWidget(
          label: 'Rotating circle Loader',
          widget: FxLoader.rotatingCircleLoader(
            color: ColorConst.warning,
            duration: const Duration(milliseconds: 1200),
            size: 50,
          ),
        ),
        FxBox.h20,
        _cardWidget(
          label: 'Rotating Plain Square Loader',
          widget: FxLoader.rotatingPlainLoader(
            color: ColorConst.error,
            duration: const Duration(milliseconds: 1500),
            size: 50,
          ),
        ),
      ],
    );
  }

  Widget _cardWidget({required String label, required Widget widget}) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: 200,
        width: 200,
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  label,
                  style: const TextStyle(
                    color: Color(0XFF5B626B),
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  ),
                ),
                FxBox.h32,
                widget,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
