import 'package:flutter/widgets.dart';

class RotatingCircleLoader extends StatefulWidget {
  final Color color;
  final double size;
  const RotatingCircleLoader({Key? key, required this.color, this.size = 50.0})
      : super(key: key);

  @override
  State<RotatingCircleLoader> createState() => _RotatingCircleLoaderState();
}

class _RotatingCircleLoaderState extends State<RotatingCircleLoader>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation1;
  late Animation<double> _animation2;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 1200))
      ..addListener(() => setState(() {}))
      ..repeat();
    _animation1 = Tween(begin: 0.0, end: 180.0).animate(CurvedAnimation(
        parent: _controller,
        curve: const Interval(0.0, 0.5, curve: Curves.easeIn)));
    _animation2 = Tween(begin: 0.0, end: 180.0).animate(CurvedAnimation(
        parent: _controller,
        curve: const Interval(0.5, 1.0, curve: Curves.easeOut)));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Transform(
        transform: Matrix4.identity()
          ..rotateX((0 - _animation1.value) * 0.0174533)
          ..rotateY((0 - _animation2.value) * 0.0174533),
        alignment: FractionalOffset.center,
        child: SizedBox.fromSize(
            size: Size.square(widget.size), child: _itemBuilder(0)),
      ),
    );
  }

  Widget _itemBuilder(int index) => DecoratedBox(
      decoration: BoxDecoration(color: widget.color, shape: BoxShape.circle));
}
