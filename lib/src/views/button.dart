import 'package:admin_dashboard/src/utils/responsive.dart';
import 'package:flutter/material.dart';
import 'package:flutterx/flutterx.dart';

class Button extends StatelessWidget {
  const Button({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Responsive.isWeb(context)
        ? Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: _exampleButton(context),
                      ),
                    ),
                  ),
                  FxBox.w12,
                  Expanded(
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: _outlinedButton(context),
                      ),
                    ),
                  ),
                ],
              ),
              FxBox.h12,
              Row(
                children: [
                  Expanded(
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: _exampleWithIconButton(context),
                      ),
                    ),
                  ),
                  FxBox.w12,
                  Expanded(
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: _outlineWithIconButton(context),
                      ),
                    ),
                  ),
                ],
              ),
              FxBox.h12,
              Row(
                children: [
                  Expanded(
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: _iconButton(context),
                      ),
                    ),
                  ),
                  FxBox.w12,
                  Expanded(
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: _outlineIconButton(context),
                      ),
                    ),
                  ),
                ],
              ),
              FxBox.h12,
              Row(
                children: [
                  Expanded(
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: _socialButton(context),
                      ),
                    ),
                  ),
                  FxBox.w12,
                  Expanded(
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: _outlinedSocialButton(context),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          )
        : const SizedBox();
  }

  Widget _exampleButton(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Examples',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
        FxBox.h10,
        Wrap(
          runSpacing: 10,
          children: [
            FxButton(
              height: 40,
              onPressed: () {},
              radius: 4,
              child: const Text('Primary'),
              // roundedFromSide: true,
            ),
            FxBox.w10,
            FxButton(
              color: Theme.of(context).colorScheme.secondary,
              height: 40,
              onPressed: () {},
              radius: 4,
              child: const Text('Secondary'),
              // roundedFromSide: true,
            ),
            FxBox.w10,
            FxButton(
              buttonType: ButtonType.success,
              height: 40,
              onPressed: () {},
              radius: 4,
              child: const Text('Success'),
              // roundedFromSide: true,
            ),
            FxBox.w10,
            FxButton(
              buttonType: ButtonType.info,
              height: 40,
              onPressed: () {},
              radius: 4,
              child: const Text('Info'),
              // roundedFromSide: true,
            ),
            FxBox.w10,
            FxButton(
              buttonType: ButtonType.warning,
              height: 40,
              onPressed: () {},
              radius: 4,
              child: const Text('Warning'),
              // roundedFromSide: true,
            ),
            FxBox.w10,
            FxButton(
              buttonType: ButtonType.error,
              height: 40,
              onPressed: () {},
              radius: 4,
              child: const Text('Error'),
              // roundedFromSide: true,
            ),
          ],
        )
      ],
    );
  }

  Widget _outlinedButton(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Outlined buttons',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
        FxBox.h10,
        Wrap(
          runSpacing: 10,
          children: [
            FxButton(
              isOutlineButton: true,
              height: 40,
              onPressed: () {},
              radius: 4,
              child: const Text('Primary'),
              // roundedFromSide: true,
            ),
            FxBox.w10,
            FxButton(
              isOutlineButton: true,
              // color: Theme.of(context).colorScheme.secondary,
              height: 40,
              onPressed: () {},
              radius: 4,
              child: const Text('Secondary'),
              // roundedFromSide: true,
            ),
            FxBox.w10,
            FxButton(
              isOutlineButton: true,
              buttonType: ButtonType.success,
              height: 40,
              onPressed: () {},
              radius: 4,
              child: const Text('Success'),
              // roundedFromSide: true,
            ),
            FxBox.w10,
            FxButton(
              isOutlineButton: true,
              buttonType: ButtonType.info,
              height: 40,
              onPressed: () {},
              radius: 4,
              child: const Text('Info'),
              // roundedFromSide: true,
            ),
            FxBox.w10,
            FxButton(
              isOutlineButton: true,
              buttonType: ButtonType.warning,
              height: 40,
              onPressed: () {},
              radius: 4,
              child: const Text('Warning'),
              // roundedFromSide: true,
            ),
            FxBox.w10,
            FxButton(
              isOutlineButton: true,
              buttonType: ButtonType.error,
              height: 40,
              onPressed: () {},
              radius: 4,
              child: const Text('Error'),
              // roundedFromSide: true,
            ),
          ],
        )
      ],
    );
  }

  Widget _exampleWithIconButton(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Example with icon buttons',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
        FxBox.h10,
        Wrap(
          runSpacing: 10,
          children: [
            FxButton(
              icon: Icons.ac_unit,
              height: 40,
              onPressed: () {},
              radius: 4,
              child: const Text('Primary'),
              // roundedFromSide: true,
            ),
            FxBox.w10,
            FxButton(
              icon: Icons.ac_unit,
              height: 40,
              onPressed: () {},
              radius: 4,
              child: const Text('Secondary'),
              // roundedFromSide: true,
            ),
            FxBox.w10,
            FxButton(
              icon: Icons.ac_unit,
              buttonType: ButtonType.success,
              height: 40,
              onPressed: () {},
              radius: 4,
              child: const Text('Success'),
              // roundedFromSide: true,
            ),
            FxBox.w10,
            FxButton(
              icon: Icons.ac_unit,
              buttonType: ButtonType.info,
              height: 40,
              onPressed: () {},
              radius: 4,
              child: const Text('Info'),
              // roundedFromSide: true,
            ),
            FxBox.w10,
            FxButton(
              icon: Icons.ac_unit,
              buttonType: ButtonType.warning,
              height: 40,
              onPressed: () {},
              radius: 4,
              child: const Text('Warning'),
              // roundedFromSide: true,
            ),
            FxBox.w10,
            FxButton(
              icon: Icons.ac_unit,
              buttonType: ButtonType.error,
              height: 40,
              onPressed: () {},
              radius: 4,
              child: const Text('Error'),
              // roundedFromSide: true,
            ),
          ],
        )
      ],
    );
  }

  Widget _outlineWithIconButton(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Outlined with icon buttons',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
        FxBox.h10,
        Wrap(
          runSpacing: 10,
          children: [
            FxButton(
              isOutlineButton: true,
              icon: Icons.ac_unit_outlined,
              height: 40,
              onPressed: () {},
              radius: 4,
              child: const Text('Primary'),
              // roundedFromSide: true,
            ),
            FxBox.w10,
            FxButton(
              isOutlineButton: true,
              icon: Icons.ac_unit_outlined,
              height: 40,
              onPressed: () {},
              radius: 4,
              child: const Text('Secondary'),
              // roundedFromSide: true,
            ),
            FxBox.w10,
            FxButton(
              isOutlineButton: true,
              icon: Icons.ac_unit_outlined,
              buttonType: ButtonType.success,
              height: 40,
              onPressed: () {},
              radius: 4,
              child: const Text('Success'),
              // roundedFromSide: true,
            ),
            FxBox.w10,
            FxButton(
              isOutlineButton: true,
              icon: Icons.ac_unit_outlined,
              buttonType: ButtonType.info,
              height: 40,
              onPressed: () {},
              radius: 4,
              child: const Text('Info'),
              // roundedFromSide: true,
            ),
            FxBox.w10,
            FxButton(
              isOutlineButton: true,
              icon: Icons.ac_unit_outlined,
              buttonType: ButtonType.warning,
              height: 40,
              onPressed: () {},
              radius: 4,
              child: const Text('Warning'),
              // roundedFromSide: true,
            ),
            FxBox.w10,
            FxButton(
              isOutlineButton: true,
              icon: Icons.ac_unit_outlined,
              buttonType: ButtonType.error,
              height: 40,
              onPressed: () {},
              radius: 4,
              child: const Text('Error'),
              // roundedFromSide: true,
            ),
          ],
        )
      ],
    );
  }

  Widget _iconButton(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Icon buttons',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
        FxBox.h10,
        Wrap(
          runSpacing: 10,
          children: [
            FxButton(
              height: 40,
              onPressed: () {},
              radius: 4,
              child: const Icon(Icons.ac_unit),
            ),
            FxBox.w10,
            FxButton(
              // color: Theme.of(context).colorScheme.secondary,
              height: 40,
              onPressed: () {},
              radius: 4,
              child: const Icon(Icons.ac_unit),
              // roundedFromSide: true,
            ),
            FxBox.w10,
            FxButton(
              buttonType: ButtonType.success,
              height: 40,
              onPressed: () {},
              radius: 4,
              child: const Icon(Icons.ac_unit),
              // roundedFromSide: true,
            ),
            FxBox.w10,
            FxButton(
              buttonType: ButtonType.info,
              height: 40,
              onPressed: () {},
              radius: 4,
              child: const Icon(Icons.ac_unit),
              // roundedFromSide: true,
            ),
            FxBox.w10,
            FxButton(
              buttonType: ButtonType.warning,
              height: 40,
              onPressed: () {},
              radius: 4,
              child: const Icon(Icons.ac_unit),
              // roundedFromSide: true,
            ),
            FxBox.w10,
            FxButton(
              buttonType: ButtonType.error,
              height: 40,
              onPressed: () {},
              radius: 4,
              child: const Icon(Icons.ac_unit),
              // roundedFromSide: true,
            ),
          ],
        )
      ],
    );
  }

  Widget _outlineIconButton(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Outlined icon buttons',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
        FxBox.h10,
        Wrap(
          runSpacing: 10,
          children: [
            FxButton(
              isOutlineButton: true,
              height: 40,
              onPressed: () {},
              radius: 4,
              child: const Icon(Icons.ac_unit),
              // roundedFromSide: true,
            ),
            FxBox.w10,
            FxButton(
              isOutlineButton: true,
              // color: Theme.of(context).colorScheme.secondary,
              height: 40,
              onPressed: () {},
              radius: 4,
              child: const Icon(Icons.ac_unit),
              // roundedFromSide: true,
            ),
            FxBox.w10,
            FxButton(
              isOutlineButton: true,
              buttonType: ButtonType.success,
              height: 40,
              onPressed: () {},
              radius: 4,
              child: const Icon(Icons.ac_unit),
              // roundedFromSide: true,
            ),
            FxBox.w10,
            FxButton(
              isOutlineButton: true,
              buttonType: ButtonType.info,
              height: 40,
              onPressed: () {},
              radius: 4,
              child: const Icon(Icons.ac_unit),
              // roundedFromSide: true,
            ),
            FxBox.w10,
            FxButton(
              isOutlineButton: true,
              buttonType: ButtonType.warning,
              height: 40,
              onPressed: () {},
              radius: 4,
              child: const Icon(Icons.ac_unit),
              // roundedFromSide: true,
            ),
            FxBox.w10,
            FxButton(
              isOutlineButton: true,
              buttonType: ButtonType.error,
              height: 40,
              onPressed: () {},
              radius: 4,
              child: const Icon(Icons.ac_unit),
              // roundedFromSide: true,
            ),
          ],
        )
      ],
    );
  }

  Widget _socialButton(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Social buttons',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
        FxBox.h10,
        Wrap(
          runSpacing: 10,
          children: [
            FxButton.apple(
              height: 40,
              onPressed: () {},
            ),
            FxBox.w10,
            FxButton.facebook(
              height: 40,
              onPressed: () {},
              radius: 4,
            ),
            FxBox.w10,
            FxButton.whatsapp(
              height: 40,
              onPressed: () {},
              radius: 4,
            ),
          ],
        )
      ],
    );
  }

  Widget _outlinedSocialButton(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Outlined social buttons',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
        FxBox.h10,
        Wrap(
          runSpacing: 10,
          children: [
            FxButton.apple(
              isOutlineButton: true,
              height: 40,
              onPressed: () {},
            ),
            FxBox.w10,
            FxButton.facebook(
              isOutlineButton: true,
              height: 40,
              onPressed: () {},
              radius: 4,
            ),
            FxBox.w10,
            FxButton.whatsapp(
              isOutlineButton: true,
              height: 40,
              onPressed: () {},
              radius: 4,
            ),
          ],
        )
      ],
    );
  }
}
