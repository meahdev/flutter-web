import 'package:admin_dashboard/src/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:flutterx/flutterx.dart';

class Loaders extends StatefulWidget {
  const Loaders({Key? key}) : super(key: key);

  @override
  State<Loaders> createState() => _LoadersState();
}

class _LoadersState extends State<Loaders> {
  final List<Color> colors = const [
    Color(0xFF626ED4),
    Color(0xFFE9ECEF),
    Color(0xFF38A4F8),
    Color(0xFFF8B425),
    Color(0xFFEC4561),
    Color(0xFF343A40),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FxBox.h20,
        _cardWidget(
          label: 'Spining circle Loader',
          widget: const FxLoader(
            loaderType: LoaderType.basicLoader,
            color: ColorConst.primary,
            size: 35,
          ),
        ),
        FxBox.h20,
        _cardWidget(
          label: 'Spining circle Loader',
          widget: const FxLoader.spinningLinesLoader(
            color: ColorConst.white,
            itemCount: 5,
            size: 50,
            lineWidth: 2,
          ),
        ),
        FxBox.h20,
        _cardWidget(
          label: 'Wave Loader',
          widget: FxLoader.waveLoader(
            color: ColorConst.info,
            itemCount: 5,
            size: 40,
            wavetype: WaveType.start,
          ),
        ),
        FxBox.h20,
        _cardWidget(
          label: 'Circle Loader',
          widget: FxLoader(
            loaderType: LoaderType.circleLoader,
            color: ColorConst.warning,
            itemCount: 5,
            size: 50,
            wavetype: WaveType.start,
          ),
        ),
        FxBox.h20,
        _cardWidget(
          label: 'Cube Grid Loader',
          widget: FxLoader(
            loaderType: LoaderType.cubeGridLoader,
            color: ColorConst.error,
            itemCount: 5,
            size: 50,
            wavetype: WaveType.start,
          ),
        ),
        FxBox.h20,
        _cardWidget(
          label: 'Double Bounce Loader',
          widget: const FxLoader(
            loaderType: LoaderType.doubleBounceLoader,
            color: ColorConst.primary,
            itemCount: 5,
            size: 50,
            wavetype: WaveType.start,
          ),
        ),
        FxBox.h20,
        _cardWidget(
          label: 'Fading circle Loader',
          widget: const FxLoader(
            loaderType: LoaderType.fadingCircleLoader,
            color: ColorConst.white,
            itemCount: 5,
            size: 50,
            wavetype: WaveType.start,
          ),
        ),
        FxBox.h20,
        _cardWidget(
          label: 'Pulse circle Loader',
          widget: FxLoader(
            loaderType: LoaderType.pulseCircleLoader,
            color: ColorConst.info,
            itemCount: 5,
            size: 50,
            wavetype: WaveType.start,
          ),
        ),
        FxBox.h20,
        _cardWidget(
          label: 'Rotating circle Loader',
          widget: FxLoader(
            loaderType: LoaderType.rotatingCircleLoader,
            color: ColorConst.warning,
            itemCount: 5,
            size: 50,
            wavetype: WaveType.start,
          ),
        ),
        FxBox.h20,
        _cardWidget(
          label: 'Rotating Plain Square Loader',
          widget: FxLoader(
            loaderType: LoaderType.rotatingPlainLoader,
            color: ColorConst.error,
            itemCount: 5,
            size: 50,
            wavetype: WaveType.start,
          ),
        ),
      ],
    );
  }

  Widget _cardWidget({required String label, required Widget widget}) {
    return Card(
      child: Column(
        children: [
          Text(
            label,
            style: const TextStyle(
              color: Color(0XFF5B626B),
              fontWeight: FontWeight.w600,
              fontSize: 16,
            ),
          ),
          FxBox.h12,
          widget,
          FxBox.h12,
        ],
      ),
    );
  }
}
