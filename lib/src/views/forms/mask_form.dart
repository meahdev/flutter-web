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
    mask: '##/mm/dddd',
    filter: {
      '##/': RegExp("(0[1-9]|[12][0-9]|3[01])/"),
      'mm/': RegExp("(0[1-9]|[12][0-9]|3[01])/"),
      'dddd/': RegExp("(0[1-9]|[12][0-9]|3[01])"),
    },
    type: MaskAutoCompletionType.lazy,
  );

  final TextEditingController _dateStyle1Controller = TextEditingController();
  final TextEditingController _repeatController = TextEditingController();
  final TextEditingController _dateStyle2Controller = TextEditingController();
  final TextEditingController _maskController = TextEditingController();
  final TextEditingController _dateTimeController = TextEditingController();
  final TextEditingController _ipAddressController = TextEditingController();
  final TextEditingController _currencyController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();

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
                            _repeatTextField(),
                            'e.g "9999999999"',
                          ),
                        ],
                      ),
                      FxBox.h12,
                      Row(
                        children: [
                          _maskTextFieldCommonView(
                            _commonText('Date Style 2'),
                            _dateStyle2TextField(),
                            'e.g "mm/dd/yyyy"',
                          ),
                          FxBox.w24,
                          _maskTextFieldCommonView(
                            _commonText('Mask'),
                            _maskTextField(),
                            'e.g "99-9999999"',
                          ),
                        ],
                      ),
                      FxBox.h12,
                      Row(
                        children: [
                          _maskTextFieldCommonView(
                            _commonText('Date Time'),
                            _dateTimeTextField(),
                            'e.g "yyyy-mm-dd\'T\'HH:MM:ss"',
                          ),
                          FxBox.w24,
                          _maskTextFieldCommonView(
                            _commonText('IP address'),
                            _ipAddressTextField(),
                            'e.g "99.99.99.99"',
                          ),
                        ],
                      ),
                      FxBox.h12,
                      Row(
                        children: [
                          _maskTextFieldCommonView(
                            _commonText('Currency:'),
                            _currencyTextField(),
                            'e.g "\$ 0.00"',
                          ),
                          FxBox.w24,
                          _maskTextFieldCommonView(
                            _commonText('Email address::'),
                            _emailTextField(),
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
                      _repeatTextField(),
                      const Text('e.g "9999999999"'),
                      FxBox.h12,
                      _commonText('Date Style 2'),
                      _dateStyle2TextField(),
                      const Text('e.g "mm/dd/yyyy"'),
                      FxBox.h12,
                      _commonText('Mask'),
                      _maskTextField(),
                      const Text('e.g "99-9999999"'),
                      FxBox.h12,
                      _commonText('Date Time'),
                      _dateTimeTextField(),
                      const Text('e.g "yyyy-mm-dd\'T\'HH:MM:ss"'),
                      FxBox.h12,
                      _commonText('IP address'),
                      _ipAddressTextField(),
                      const Text('e.g "99.99.99.99"'),
                      FxBox.h12,
                      _commonText('Currency:'),
                      _currencyTextField(),
                      const Text('e.g "\$ 0.00"'),
                      FxBox.h12,
                      _commonText('Email address::'),
                      _emailTextField(),
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

  Widget _repeatTextField() {
    return CustomTextField(
      controller: _repeatController,
      border: const OutlineInputBorder(),
      isDense: true,
      contentPadding: const EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 12,
      ),
    );
  }

  Widget _dateStyle2TextField() {
    return FxHover(
      builder: (isHover) {
        return CustomTextField(
          controller: _dateStyle2Controller,
          border: const OutlineInputBorder(),
          hintText: isHover ? 'mm/dd/yyyy' : '',
          isDense: true,
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 15,
            vertical: 12,
          ),
        );
      },
    );
  }

  Widget _maskTextField() {
    return FxHover(
      builder: (isHover) {
        return CustomTextField(
          controller: _maskController,
          border: const OutlineInputBorder(),
          hintText: isHover ? '__-_______' : '',
          isDense: true,
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 15,
            vertical: 12,
          ),
        );
      },
    );
  }

  Widget _dateTimeTextField() {
    return FxHover(
      builder: (isHover) {
        return CustomTextField(
          controller: _dateTimeController,
          border: const OutlineInputBorder(),
          hintText: isHover ? 'yyyy-mm-dd\'T\'HH:MM:ss' : '',
          isDense: true,
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 15,
            vertical: 12,
          ),
        );
      },
    );
  }

  Widget _ipAddressTextField() {
    return FxHover(
      builder: (isHover) {
        return CustomTextField(
          controller: _ipAddressController,
          border: const OutlineInputBorder(),
          hintText: isHover ? '_._._._' : '',
          isDense: true,
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 15,
            vertical: 12,
          ),
        );
      },
    );
  }

  Widget _currencyTextField() {
    return FxHover(
      builder: (isHover) {
        return CustomTextField(
          controller: _currencyController,
          border: const OutlineInputBorder(),
          hintText: isHover ? '\$ 0.00' : '',
          isDense: true,
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 15,
            vertical: 12,
          ),
        );
      },
    );
  }

  Widget _emailTextField() {
    return FxHover(
      builder: (isHover) {
        return CustomTextField(
          controller: _emailController,
          border: const OutlineInputBorder(),
          hintText: isHover ? '_@_._' : '',
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
