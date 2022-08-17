import 'package:admin_dashboard/src/utils/hover.dart';
import 'package:admin_dashboard/src/utils/responsive.dart';
import 'package:admin_dashboard/src/widget/textformfield.dart';
import 'package:flutter/material.dart';
import 'package:flutterx/flutterx.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class MaskForm extends StatefulWidget {
  const MaskForm({Key? key}) : super(key: key);

  @override
  State<MaskForm> createState() => _MaskFormState();
}

class _MaskFormState extends State<MaskForm> {
  MaskTextInputFormatter dateStyle1Formatter = MaskTextInputFormatter(
    mask: 'dt/mm/yyyy',
    filter: {'d': RegExp(r'[0-3]'), 't': RegExp(r'[0-1]')},
    type: MaskAutoCompletionType.lazy,
  );

  final TextEditingController _dateStyle1Controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Example',
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.w600,
              ),
            ),
            FxBox.h12,
            Responsive.isWeb(context)
                ? Column(
                    children: [
                      Row(
                        children: [
                          _maskTextFieldCommonView(
                            _commonText('Date Style 1'),
                            _dateStyle1TextField(),
                            'e.g "dd/mm/yyyy"',
                          ),
                          FxBox.w24,
                          _maskTextFieldCommonView(
                            _commonText('repeat'),
                            _dateStyle1TextField(),
                            'e.g "9999999999"',
                          ),
                        ],
                      ),
                      FxBox.h12,
                      Row(
                        children: [
                          _maskTextFieldCommonView(
                            _commonText('Date Style 2'),
                            _dateStyle1TextField(),
                            'e.g "mm/dd/yyyy"',
                          ),
                          FxBox.w24,
                          _maskTextFieldCommonView(
                            _commonText('Mask'),
                            _dateStyle1TextField(),
                            'e.g "99-9999999"',
                          ),
                        ],
                      ),
                      FxBox.h12,
                      Row(
                        children: [
                          _maskTextFieldCommonView(
                            _commonText('Date Time'),
                            _dateStyle1TextField(),
                            'e.g "yyyy-mm-dd\'T\'HH:MM:ss"',
                          ),
                          FxBox.w24,
                          _maskTextFieldCommonView(
                            _commonText('IP address'),
                            _dateStyle1TextField(),
                            'e.g "99.99.99.99"',
                          ),
                        ],
                      ),
                      FxBox.h12,
                      Row(
                        children: [
                          _maskTextFieldCommonView(
                            _commonText('Currency:'),
                            _dateStyle1TextField(),
                            'e.g "\$ 0.00"',
                          ),
                          FxBox.w24,
                          _maskTextFieldCommonView(
                            _commonText('Email address::'),
                            _dateStyle1TextField(),
                            '_@_._',
                          ),
                        ],
                      ),
                    ],
                  )
                : Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _commonText('Date Style 1'),
                      _dateStyle1TextField(),
                      const Text('e.g "dd/mm/yyyy"'),
                      FxBox.h12,
                      _commonText('repeat'),
                      _dateStyle1TextField(),
                      const Text('e.g "9999999999"'),
                      FxBox.h12,
                      _commonText('Date Style 2'),
                      _dateStyle1TextField(),
                      const Text('e.g "mm/dd/yyyy"'),
                      FxBox.h12,
                      _commonText('Mask'),
                      _dateStyle1TextField(),
                      const Text('e.g "99-9999999"'),
                      FxBox.h12,
                      _commonText('Date Time'),
                      _dateStyle1TextField(),
                      const Text('e.g "yyyy-mm-dd\'T\'HH:MM:ss"'),
                      FxBox.h12,
                      _commonText('IP address'),
                      _dateStyle1TextField(),
                      const Text('e.g "99.99.99.99"'),
                      FxBox.h12,
                      _commonText('Currency:'),
                      _dateStyle1TextField(),
                      const Text('e.g "\$ 0.00"'),
                      FxBox.h12,
                      _commonText('Email address::'),
                      _dateStyle1TextField(),
                      const Text('_@_._'),
                    ],
                  )
          ],
        ),
      ),
    );
  }

  Widget _commonText(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Text(
        text,
        style: const TextStyle(fontWeight: FontWeight.w600),
      ),
    );
  }

  Widget _dateStyle1TextField() {
    return FxHover(
      builder: (isHover) {
        return CustomTextField(
          controller: _dateStyle1Controller,
          inputFormatters: [dateStyle1Formatter],
          border: const OutlineInputBorder(),
          hintText: isHover ? 'dd/mm/yyyy' : '',
          isDense: true,
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 15,
            vertical: 12,
          ),
        );
      },
    );
  }

  Widget _maskTextFieldCommonView(
      Widget title, Widget textField, String egText) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [title, textField, Text(egText)],
      ),
    );
  }
}
