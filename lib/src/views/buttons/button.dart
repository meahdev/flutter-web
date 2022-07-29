import 'package:admin_dashboard/src/constant/color.dart';
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
        : Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              SizedBox(
                width: double.infinity,
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
              FxBox.h12,
              SizedBox(
                width: double.infinity,
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
              FxBox.h12,
              SizedBox(
                width: double.infinity,
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
              FxBox.h12,
              SizedBox(
                width: double.infinity,
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
              FxBox.h12,
              SizedBox(
                width: double.infinity,
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
              FxBox.h12,
              SizedBox(
                width: double.infinity,
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
              FxBox.h12,
              SizedBox(
                width: double.infinity,
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
              FxBox.h12,
              SizedBox(
                width: double.infinity,
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
          );
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
          spacing: 10,
          runSpacing: 10,
          children: [
            FxButton(
              height: 40,
              onPressed: () {},
              radius: 4,
              child: const Text('Primary'),

              // roundedFromSide: true,
            ),
            FxButton(
              color: Theme.of(context).colorScheme.secondary,
              height: 40,
              onPressed: () {},
              radius: 4,
              child: const Text('Secondary'),
              // roundedFromSide: true,
            ),
            FxButton(
              buttonType: ButtonType.success,
              height: 40,
              onPressed: () {},
              radius: 4,
              child: const Text('Success'),
              // roundedFromSide: true,
            ),
            FxButton(
              buttonType: ButtonType.info,
              height: 40,
              onPressed: () {},
              radius: 4,
              child: const Text('Info'),
              // roundedFromSide: true,
            ),
            FxButton(
              buttonType: ButtonType.warning,
              height: 40,
              onPressed: () {},
              radius: 4,
              child: const Text('Warning'),
              // roundedFromSide: true,
            ),
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
          spacing: 10,
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
            FxButton(
              isOutlineButton: true,
              // color: Theme.of(context).colorScheme.secondary,
              height: 40,
              onPressed: () {},
              radius: 4,
              child: const Text('Secondary'),
              // roundedFromSide: true,
            ),
            FxButton(
              isOutlineButton: true,
              buttonType: ButtonType.success,
              height: 40,
              onPressed: () {},
              radius: 4,
              child: const Text('Success'),
              // roundedFromSide: true,
            ),
            FxButton(
              isOutlineButton: true,
              buttonType: ButtonType.info,
              height: 40,
              onPressed: () {},
              radius: 4,
              child: const Text('Info'),
              // roundedFromSide: true,
            ),
            FxButton(
              isOutlineButton: true,
              buttonType: ButtonType.warning,
              height: 40,
              onPressed: () {},
              radius: 4,
              child: const Text('Warning'),
              // roundedFromSide: true,
            ),
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
          spacing: 10,
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
            FxButton(
              icon: Icons.ac_unit,
              height: 40,
              onPressed: () {},
              radius: 4,
              child: const Text('Secondary'),
              // roundedFromSide: true,
            ),
            FxButton(
              icon: Icons.ac_unit,
              buttonType: ButtonType.success,
              height: 40,
              onPressed: () {},
              radius: 4,
              child: const Text('Success'),
              // roundedFromSide: true,
            ),
            FxButton(
              icon: Icons.ac_unit,
              buttonType: ButtonType.info,
              height: 40,
              onPressed: () {},
              radius: 4,
              child: const Text('Info'),
              // roundedFromSide: true,
            ),
            FxButton(
              icon: Icons.ac_unit,
              buttonType: ButtonType.warning,
              height: 40,
              onPressed: () {},
              radius: 4,
              child: const Text('Warning'),
              // roundedFromSide: true,
            ),
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
          spacing: 10,
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
            FxButton(
              isOutlineButton: true,
              icon: Icons.ac_unit_outlined,
              height: 40,
              onPressed: () {},
              radius: 4,
              child: const Text('Secondary'),
              // roundedFromSide: true,
            ),
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
          spacing: 10,
          runSpacing: 10,
          children: [
            FxButton(
              icon: Icons.ac_unit,
              height: 40,
              onPressed: () {},
              radius: 4,
            ),
            FxButton(
              // color: Theme.of(context).colorScheme.secondary,
              height: 40,
              onPressed: () {},
              radius: 4,
              icon: Icons.ac_unit,
              // roundedFromSide: true,
            ),
            FxButton(
              buttonType: ButtonType.success,
              height: 40,
              onPressed: () {},
              radius: 4,
              icon: Icons.ac_unit,
              // roundedFromSide: true,
            ),
            FxButton(
              buttonType: ButtonType.info,
              height: 40,
              onPressed: () {},
              radius: 4,
              icon: Icons.ac_unit,
              // roundedFromSide: true,
            ),
            FxButton(
              buttonType: ButtonType.warning,
              height: 40,
              onPressed: () {},
              radius: 4,
              icon: Icons.ac_unit,
              // roundedFromSide: true,
            ),
            FxButton(
              buttonType: ButtonType.error,
              height: 40,
              onPressed: () {},
              radius: 4,
              icon: Icons.ac_unit,
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
          spacing: 10,
          runSpacing: 10,
          children: [
            FxButton(
              isOutlineButton: true,
              height: 40,
              onPressed: () {},
              radius: 4,
              icon: Icons.ac_unit,
              // roundedFromSide: true,
            ),
            FxButton(
              isOutlineButton: true,
              // color: Theme.of(context).colorScheme.secondary,
              height: 40,
              onPressed: () {},
              radius: 4,
              icon: Icons.ac_unit,
              // roundedFromSide: true,
            ),
            FxButton(
              isOutlineButton: true,
              buttonType: ButtonType.success,
              height: 40,
              onPressed: () {},
              radius: 4,
              icon: Icons.ac_unit,
              // roundedFromSide: true,
            ),
            FxButton(
              isOutlineButton: true,
              buttonType: ButtonType.info,
              height: 40,
              onPressed: () {},
              radius: 4,
              icon: Icons.ac_unit,
              // roundedFromSide: true,
            ),
            FxButton(
              isOutlineButton: true,
              buttonType: ButtonType.warning,
              height: 40,
              onPressed: () {},
              radius: 4,
              icon: Icons.ac_unit,
              // roundedFromSide: true,
            ),
            FxButton(
              isOutlineButton: true,
              buttonType: ButtonType.error,
              height: 40,
              onPressed: () {},
              radius: 4,
              icon: Icons.ac_unit,
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
          spacing: 10,
          runSpacing: 10,
          children: [
            FxButton.apple(
              height: 40,
              onPressed: () {},
            ),
            FxButton.facebook(
              height: 40,
              onPressed: () {},
              radius: 4,
            ),
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
          spacing: 10,
          runSpacing: 10,
          children: [
            FxButton.apple(
              isOutlineButton: true,
              height: 40,
              onPressed: () {},
            ),
            FxButton.facebook(
              isOutlineButton: true,
              height: 40,
              onPressed: () {},
              radius: 4,
            ),
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
