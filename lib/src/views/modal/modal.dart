import 'package:admin_dashboard/src/constant/icons.dart';
import 'package:admin_dashboard/src/utils/responsive.dart';
import 'package:admin_dashboard/src/widget/svg_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutterx/flutterx.dart';

class Modal extends StatefulWidget {
  const Modal({Key? key}) : super(key: key);

  @override
  State<Modal> createState() => _ModalState();
}

class _ModalState extends State<Modal> {
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
            _modelButton(
              title: 'Simple modal',
              content: const Text(
                'Cras mattis consectetur purus sit amet fermentum. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.\n\nPraesent commodo cursus magna, vel scelerisque nisl consectetur et. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.\n\nAenean lacinia bibendum nulla sed consectetur. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Donec sed odio dui. Donec ullamcorper nulla non metus auctor fringilla.',
              ),
            ),
            _modelButton(
              title: 'Modal with button',
              content: const Text(
                'Cras mattis consectetur purus sit amet fermentum. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.\n\nPraesent commodo cursus magna, vel scelerisque nisl consectetur et. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.\n\nAenean lacinia bibendum nulla sed consectetur. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Donec sed odio dui. Donec ullamcorper nulla non metus auctor fringilla.',
              ),
              actions: [
                FxButton(
                  onPressed: () => Navigator.pop(context),
                  text: 'Close',
                  buttonType: ButtonType.secondary,
                ),
                FxButton(
                  onPressed: () => Navigator.pop(context),
                  text: 'Save changes',
                ),
              ],
            ),
            _modelButton(
              title: 'Large modal',
              modalType: ModalType.large,
              content: const Text(
                'Cras mattis consectetur purus sit amet fermentum. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.\n\nPraesent commodo cursus magna, vel scelerisque nisl consectetur et. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.\n\nAenean lacinia bibendum nulla sed consectetur. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Donec sed odio dui. Donec ullamcorper nulla non metus auctor fringilla.',
              ),
              actions: [
                FxButton(
                  onPressed: () => Navigator.pop(context),
                  text: 'Close',
                  buttonType: ButtonType.secondary,
                ),
                FxButton(
                  onPressed: () => Navigator.pop(context),
                  text: 'Save changes',
                ),
              ],
            ),
            _modelButton(
              title: 'Extra Large modal',
              modalType: ModalType.extraLarge,
              content: const Text(
                'Cras mattis consectetur purus sit amet fermentum. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.\n\nPraesent commodo cursus magna, vel scelerisque nisl consectetur et. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.\n\nAenean lacinia bibendum nulla sed consectetur. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Donec sed odio dui. Donec ullamcorper nulla non metus auctor fringilla.',
              ),
              actions: [
                FxButton(
                  onPressed: () => Navigator.pop(context),
                  text: 'Close',
                  buttonType: ButtonType.secondary,
                ),
                FxButton(
                  onPressed: () => Navigator.pop(context),
                  text: 'Save changes',
                ),
              ],
            ),
            _modelButton(
              title: 'Scrollable modal',
              content: const Text(
                'Cras mattis consectetur purus sit amet fermentum. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.\n\nPraesent commodo cursus magna, vel scelerisque nisl consectetur et. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.\n\nAenean lacinia bibendum nulla sed consectetur. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Donec sed odio dui. Donec ullamcorper nulla non metus auctor fringilla.\n\nCras mattis consectetur purus sit amet fermentum. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.\n\nPraesent commodo cursus magna, vel scelerisque nisl consectetur et. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.\n\nAenean lacinia bibendum nulla sed consectetur. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Donec sed odio dui. Donec ullamcorper nulla non metus auctor fringilla.\n\nCras mattis consectetur purus sit amet fermentum. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.\n\nPraesent commodo cursus magna, vel scelerisque nisl consectetur et. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.\n\nAenean lacinia bibendum nulla sed consectetur. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Donec sed odio dui. Donec ullamcorper nulla non metus auctor fringilla.\n\nCras mattis consectetur purus sit amet fermentum. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.\n\nPraesent commodo cursus magna, vel scelerisque nisl consectetur et. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.\n\nAenean lacinia bibendum nulla sed consectetur. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Donec sed odio dui. Donec ullamcorper nulla non metus auctor fringilla.',
              ),
              actions: [
                FxButton(
                  onPressed: () => Navigator.pop(context),
                  text: 'Close',
                  buttonType: ButtonType.secondary,
                ),
                FxButton(
                  onPressed: () => Navigator.pop(context),
                  text: 'Save changes',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _modelButton(
      {required String title,
      required Widget content,
      List<Widget>? actions,
      ModalType? modalType = ModalType.normal}) {
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
              FxModal.showModel(
                context: context,
                title: title,
                content: content,
                trailingIcon: const SvgIcon(icon: IconlyBroken.closeSquare),
                actions: actions,
                modelType: modalType,
              );
            },
          ),
        ],
      ),
    );
  }
}
