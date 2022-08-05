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
            DropdownButton<String>(
              value: dropdownValue,
              icon: const Icon(Icons.arrow_downward),
              elevation: 16,
              style: const TextStyle(color: Colors.deepPurple),
              underline: Container(
                height: 2,
                color: Colors.deepPurpleAccent,
              ),
              onChanged: (String? newValue) {
                setState(() {
                  dropdownValue = newValue!;
                });
              },
              items: <String>['One', 'Two', 'Free', 'Four']
                  .map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
            PopupMenuButton(
              itemBuilder: (context) {
                return [
                  const PopupMenuItem<String>(
                    value: 'Menu.itemOne',
                    child: Text('Item 1'),
                  ),
                  const PopupMenuItem<String>(
                    value: 'Menu.itemTwo',
                    child: Text('Item 2'),
                  ),
                  const PopupMenuItem<String>(
                    value: 'Menu.itemThree',
                    child: Text('Item 3'),
                  ),
                  const PopupMenuItem<String>(
                    value: 'Menu.itemFour',
                    child: Text('Item 4'),
                  ),
                ];
              },
            )
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
