import 'package:admin_dashboard/src/utils/hover.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoIcon extends StatefulWidget {
  const CupertinoIcon({Key? key}) : super(key: key);

  @override
  State<CupertinoIcon> createState() => _CupertinoIconState();
}

class _CupertinoIconState extends State<CupertinoIcon> {
  String dropdownValue = 'One';
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4.0),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
        child: Wrap(
          spacing: 32,
          runSpacing: 56,
          children: [
            _iconBox(),
            _iconBox(),
            _iconBox(),
          ],
        ),
      ),
    );
  }

  Widget _iconBox() {
    return FxHover(builder: (isHover) {
      double size = isHover ? 32.0 : 24.0;
      double padding = isHover ? 0.0 : 4.0;
      return Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: EdgeInsets.all(padding),
            child: AnimatedSize(
              curve: Curves.easeIn,
              duration: const Duration(milliseconds: 200),
              child: Icon(CupertinoIcons.add, size: size),
            ),
          ),
          const Text('add')
        ],
      );
    });
  }
}
