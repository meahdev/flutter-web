import 'package:flutter/material.dart';
import 'package:flutterx/src/constant/enum.dart';
import 'package:flutterx/src/widget/loader/components/basic_loader.dart';
import 'package:flutterx/src/widget/loader/components/circle_loader.dart';
import 'package:flutterx/src/widget/loader/components/cube_grid_loader.dart';
import 'package:flutterx/src/widget/loader/components/double_bounce_loader.dart';
import 'package:flutterx/src/widget/loader/components/fading_circle_loader.dart';
import 'package:flutterx/src/widget/loader/components/pulse_circle_loader.dart';
import 'package:flutterx/src/widget/loader/components/rotating_circle_loader.dart';
import 'package:flutterx/src/widget/loader/components/rotating_plain_loader.dart';
import 'package:flutterx/src/widget/loader/components/spining_lines_loader.dart';
import 'package:flutterx/src/widget/loader/components/wave_loader.dart';

class FxLoader extends StatelessWidget {
  final LoaderType loaderType;
  final Color color;
  final double size;
  final double? lineWidth;
  final int? itemCount;
  final WaveType? wavetype;
  FxLoader(
      {Key? key,
      required this.loaderType,
      required this.color,
      required this.size,
      this.lineWidth,
      this.itemCount,
      this.wavetype})
      : assert(
            loaderType == LoaderType.spiningLinesLoader &&
                itemCount == null &&
                lineWidth == null,
            'You should specify lineWidth and itemCount in spiningLinesLoader'),
        assert(loaderType == LoaderType.waveLoader && itemCount == null,
            'You should specify itemCount in waveLoader'),
        assert(loaderType == LoaderType.waveLoader && itemCount! >= 2,
            'itemCount Can\'t be less then 2'),
        super(key: key);

  const FxLoader.spinningLinesLoader({
    Key? key,
    required this.color,
    required this.size,
    required this.lineWidth,
    required this.itemCount,
  })  : wavetype = null,
        loaderType = LoaderType.spiningLinesLoader,
        super(key: key);

  FxLoader.waveLoader({
    Key? key,
    required this.color,
    required this.size,
    required this.itemCount,
    this.wavetype = WaveType.start,
  })  : assert(itemCount! >= 2, 'itemCount Can\'t be less then 2'),
        loaderType = LoaderType.waveLoader,
        lineWidth = null,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return getLoader();
  }

  Widget getLoader() {
    if (loaderType == LoaderType.basicLoader) {
      return BasicLoader(
        color: color,
        size: size,
      );
    } else if (loaderType == LoaderType.circleLoader) {
      return CircleLoader(
        color: color,
        size: size,
      );
    } else if (loaderType == LoaderType.cubeGridLoader) {
      return CubeGridLoader(
        color: color,
        size: size,
      );
    } else if (loaderType == LoaderType.doubleBounceLoader) {
      return DoubleBounceLoader(
        color: color,
        size: size,
      );
    } else if (loaderType == LoaderType.fadingCircleLoader) {
      return FadingCircleLoader(
        color: color,
        size: size,
      );
    } else if (loaderType == LoaderType.pulseCircleLoader) {
      return PulseCircleLoader(
        color: color,
        size: size,
      );
    } else if (loaderType == LoaderType.rotatingCircleLoader) {
      return RotatingCircleLoader(
        color: color,
        size: size,
      );
    } else if (loaderType == LoaderType.rotatingPlainLoader) {
      return RotatingPlainLoader(
        color: color,
        size: size,
      );
    } else if (loaderType == LoaderType.spiningLinesLoader) {
      return SpinningLinesLoader(
        color: color,
        size: size,
        itemCount: itemCount!,
        lineWidth: lineWidth!,
      );
    } else if (loaderType == LoaderType.waveLoader) {
      return WaveLoader(
        color: color,
        size: size,
        itemCount: itemCount!,
        type: wavetype!,
      );
    } else {
      return BasicLoader(
        color: color,
        size: size,
      );
    }
  }
}
