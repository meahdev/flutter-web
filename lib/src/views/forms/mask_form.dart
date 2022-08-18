import 'package:admin_dashboard/src/utils/hover.dart';
import 'package:admin_dashboard/src/utils/responsive.dart';
import 'package:admin_dashboard/src/widget/textformfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutterx/flutterx.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class MaskForm extends StatefulWidget {
  const MaskForm({Key? key}) : super(key: key);

  @override
  State<MaskForm> createState() => _MaskFormState();
}

class _MaskFormState extends State<MaskForm> {
  final MaskTextInputFormatter _dateStyle1Formatter = MaskTextInputFormatter(
    mask: '##/##/####',
    filter: {'#': RegExp(r'[0-9]')},
    type: MaskAutoCompletionType.eager,
  );
  final MaskTextInputFormatter _dateStyle2Formatter = MaskTextInputFormatter(
    mask: '##/##/####',
    filter: {'#': RegExp(r'[0-9]')},
    type: MaskAutoCompletionType.eager,
  );
  final MaskTextInputFormatter _dateTimeFormatter = MaskTextInputFormatter(
    mask: '####-##-##\'T\'##:##:##',
    filter: {'#': RegExp(r'[0-9]')},
    type: MaskAutoCompletionType.eager,
  );

  final MaskTextInputFormatter _maskFormatter = MaskTextInputFormatter(
    mask: '##-#######',
    filter: {'#': RegExp(r'[0-9]')},
    type: MaskAutoCompletionType.eager,
  );
  final MaskTextInputFormatter _ipAddressFormatter = MaskTextInputFormatter(
    mask: '##.##.##.##',
    filter: {
      '#': RegExp(r'[0-9]'),
    },
    type: MaskAutoCompletionType.eager,
  );
  final MaskTextInputFormatter _currencyFormatter = MaskTextInputFormatter(
    mask: '\$ #',
    filter: {
      '#': RegExp(r'[0-9]'),
    },
    // type: MaskAutoCompletionType.eager,
  );

  final TextEditingController _dateStyle1Controller = TextEditingController();
  final TextEditingController _repeatController = TextEditingController();
  final TextEditingController _dateStyle2Controller = TextEditingController();
  final TextEditingController _maskController = TextEditingController();
  final TextEditingController _dateTimeController = TextEditingController();
  final TextEditingController _ipAddressController = TextEditingController();
  final TextEditingController _currencyController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  String hash = '#';
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
                        crossAxisAlignment: CrossAxisAlignment.start,
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
          autovalidateMode: AutovalidateMode.always,
          controller: _dateStyle1Controller,
          inputFormatters: [_dateStyle1Formatter],
          validator: (value) {
            if (value == null || value.isEmpty) {
              return null;
            }
            final components = value.split("/");
            if (components.length == 3) {
              final day = int.tryParse(components[0]);
              final month = int.tryParse(components[1]);
              final year = int.tryParse(components[2]);
              if (day != null && month != null && year != null) {
                final date = DateTime(year, month, day);
                if (date.year == year &&
                    date.month == month &&
                    date.day == day) {
                  return null;
                }
              }
            }
            return "wrong date";
          },
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
      inputFormatters: [
        FilteringTextInputFormatter.digitsOnly,
        LengthLimitingTextInputFormatter(10),
      ],
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
          autovalidateMode: AutovalidateMode.always,
          controller: _dateStyle2Controller,
          inputFormatters: [_dateStyle2Formatter],
          validator: (value) {
            if (value == null || value.isEmpty) {
              return null;
            }
            final components = value.split("-");
            if (components.length == 3) {
              final month = int.tryParse(components[0]);
              final day = int.tryParse(components[1]);
              final year = int.tryParse(components[2]);

              if (day != null && month != null && year != null) {
                final date = DateTime(year, month, day);
                if (date.year == year &&
                    date.month == month &&
                    date.day == day) {
                  return null;
                }
              }
            }
            return "wrong date";
          },
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
          inputFormatters: [_maskFormatter],
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
          autovalidateMode: AutovalidateMode.always,
          controller: _dateTimeController,
          border: const OutlineInputBorder(),
          inputFormatters: [_dateTimeFormatter],
          hintText: isHover ? 'yyyy-mm-dd\'T\'HH:MM:ss' : '',
          isDense: true,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return null;
            }
            final components = value.split("-");
            if (components.length == 3) {
              final year = int.tryParse(components[0]);
              final month = int.tryParse(components[1]);
              final day = int.tryParse(
                  components[2].length == 2 ? components[2].split("'")[0] : '');

              if (day != null && month != null && year != null) {
                final date = DateTime(year, month, day);
                if (date.year == year &&
                    date.month == month &&
                    date.day == day) {
                  return null;
                }
                final hour =
                    int.tryParse(components[2].split("'")[2].split(":")[0]);
                final minute =
                    int.tryParse(components[2].split("'")[2].split(":")[1]);
                final second =
                    int.tryParse(components[2].split("'")[2].split(":")[2]);
                if (hour != null && minute != null && second != null) {
                  final time = DateTime(hour, minute, second);
                  if (time.hour == hour &&
                      time.minute == minute &&
                      time.second == second) {
                    return null;
                  }
                }
              }
            }
            return "wrong date";
          },
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
          inputFormatters: [
            _ipAddressFormatter,
          ],
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
          inputFormatters: [
            _currencyFormatter,
          ],
          onChanged: (value) {
            if (value.length >= 2) {
              if ((value.length - 2) == hash.length) {
                hash += '#';
              } else {
                hash = hash.substring(0, hash.length - 1);
              }

              _currencyController.value = _currencyFormatter.updateMask(
                mask: '\$ $hash',
              );
            }
          },
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
