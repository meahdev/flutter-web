import 'package:flutter/material.dart';
import 'package:flutterx/flutterx.dart';

class ElementsForm extends StatefulWidget {
  const ElementsForm({Key? key}) : super(key: key);

  @override
  State<ElementsForm> createState() => _ElementsFormState();
}

class _ElementsFormState extends State<ElementsForm> {
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Textual inputs',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
            FxBox.h24,
            Row(
              children: [
                Text('Text'),
                FxBox.w36,
                Flexible(
                  child: SizedBox(
                    height: 35,
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Artisanal kale',
                        border: OutlineInputBorder(),
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                      ),
                    ),
                  ),
                )
              ],
            ),
            FxBox.h16,
            Row(
              children: [
                Text('Text'),
                FxBox.w36,
                Flexible(
                  child: SizedBox(
                    height: 35,
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Artisanal kale',
                        border: OutlineInputBorder(),
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
