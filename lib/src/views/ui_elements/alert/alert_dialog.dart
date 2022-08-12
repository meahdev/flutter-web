import 'package:admin_dashboard/src/constant/color.dart';
import 'package:admin_dashboard/src/utils/responsive.dart';
import 'package:flutter/material.dart';
import 'package:flutterx/flutterx.dart';

class AlertDialogBox extends StatefulWidget {
  const AlertDialogBox({Key? key}) : super(key: key);

  @override
  State<AlertDialogBox> createState() => _AlertDialogBoxState();
}

class _AlertDialogBoxState extends State<AlertDialogBox> {
  double _getWidth() {
    if (MediaQuery.of(context).size.width <= 550) {
      return double.infinity;
    } else if (MediaQuery.of(context).size.width <= 750) {
      return (MediaQuery.of(context).size.width / 2) - 68;
    } else if (Responsive.isWeb(context)) {
      return ((MediaQuery.of(context).size.width - 240) / 4) - 34;
    } else {
      return (MediaQuery.of(context).size.width / 3) - 46;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4.0),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 32.0, horizontal: 40.0),
        child: Wrap(
          spacing: 0,
          runSpacing: 56,
          children: [
            _alertButton(
              title: 'Simple Alert',
              text: 'Simple Alert',
              buttons: [
                FxButton(
                  onPressed: () => Navigator.pop(context),
                  text: 'OK',
                ),
              ],
            ),
            _alertButton(
              title: 'Icon Alert',
              text: 'Icon Alert',
              icon: const Icon(Icons.error_rounded, size: 30.0),
              buttons: [
                FxButton(
                  onPressed: () => Navigator.pop(context),
                  text: 'OK',
                ),
              ],
            ),
            _alertButton(
              title: 'Alert With Two Button',
              text: 'Alert With Two Button',
              buttons: [
                FxButton(
                  onPressed: () => Navigator.pop(context),
                  text: 'OK',
                ),
                FxButton(
                  onPressed: () => Navigator.pop(context),
                  text: 'Cancel',
                  buttonType: ButtonType.secondary,
                ),
              ],
            ),
            _alertButton(
              title: 'Icon Alert With Two Button',
              text: 'Alert With Two Button',
              icon: Icon(
                Icons.check_circle_outline_rounded,
                size: 30.0,
                color: ColorConst.success,
              ),
              buttons: [
                FxButton(
                  onPressed: () => Navigator.pop(context),
                  text: 'Confirm',
                  buttonType: ButtonType.success,
                ),
                FxButton(
                  onPressed: () => Navigator.pop(context),
                  text: 'Cancel',
                  buttonType: ButtonType.secondary,
                ),
              ],
            ),
            _alertButton(
              title: 'Gif Alert',
              text: 'Git alert',
              icon: Image.asset('assets/rocket.gif', height: 40, width: 40),
              buttons: [
                FxButton(
                  onPressed: () => Navigator.pop(context),
                  text: 'OK',
                ),
              ],
            ),
            _alertButton(
              title: 'Alert With Textfield',
              text: 'alert with textfield',
              content: const SizedBox(
                width: 300,
                height: 40,
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    isDense: true,
                  ),
                ),
              ),
              icon: Image.asset('assets/rocket.gif', height: 40, width: 40),
              buttons: [
                FxButton(
                  onPressed: () => Navigator.pop(context),
                  text: 'OK',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _alertButton({
    required String title,
    required String text,
    Widget? content,
    List<Widget>? buttons,
    Widget? icon,
  }) {
    return SizedBox(
      width: _getWidth(),
      child: Column(
        children: [
          Text(
            title,
            style: const TextStyle(fontSize: 15.0, fontWeight: FontWeight.w700),
          ),
          FxBox.h16,
          FxButton(
            text: 'Click Me',
            onPressed: () {
              FxAlert.showAlert(
                icon: icon,
                context: context,
                title: text,
                content: content ??
                    Text('This is ${title.toLowerCase()} dialog box.'),
                actions: buttons!,
              );
            },
          ),
        ],
      ),
    );
  }
}