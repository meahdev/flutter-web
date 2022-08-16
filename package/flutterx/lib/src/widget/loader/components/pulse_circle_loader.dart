import 'package:flutter/widgets.dart';

class PulseCircleLoader extends StatefulWidget {
  final double size;
  final Color color;
  const PulseCircleLoader({Key? key, this.size = 32, required this.color})
      : super(key: key);

  @override
  State<PulseCircleLoader> createState() => _PulseCircleLoaderState();
}

class _PulseCircleLoaderState extends State<PulseCircleLoader>
    with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    _controller = (AnimationController(
        vsync: this, duration: const Duration(milliseconds: 1200)))
      ..addListener(() => setState(() {}))
      ..repeat();
    _animation = CurveTween(curve: Curves.easeInOut).animate(_controller);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Opacity(
        opacity: 1.0 - _animation.value,
        child: Transform.scale(
          scale: _animation.value,
          child: SizedBox.fromSize(
            size: Size.square(widget.size),
            child: DecoratedBox(
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: widget.color)),
          ),
        ),
      ),
    );
  }
}
