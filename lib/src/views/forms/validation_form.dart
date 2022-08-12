import 'package:admin_dashboard/src/constant/color.dart';
import 'package:admin_dashboard/src/provider/form_validation/bloc/form_validation_bloc.dart';
import 'package:admin_dashboard/src/utils/responsive.dart';
import 'package:admin_dashboard/src/widget/textformfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterx/flutterx.dart';

class ValidationForm extends StatefulWidget {
  const ValidationForm({
    Key? key,
  }) : super(key: key);

  @override
  State<ValidationForm> createState() => _ValidationFormState();
}

class _ValidationFormState extends State<ValidationForm> {
  //first form

  final FormValidationBloc _formValidationBloc = FormValidationBloc();

  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _userNameController = TextEditingController();
  final TextEditingController _cityController = TextEditingController();
  final TextEditingController _zipController = TextEditingController();
  final TextEditingController _stateController = TextEditingController();
  AutovalidateMode _iconValidateMode = AutovalidateMode.disabled;

  final List<String> _stateList = ['Gujarat', 'Assam', 'Bihar'];
  String? _dropDownValue;
  bool _isCheck = false;

  //second form
  final FormValidationBloc formValidationBloc2 = FormValidationBloc();
  AutovalidateMode _secondValidateMode = AutovalidateMode.disabled;
  final TextEditingController _requiredController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _rePasswordController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _urlController = TextEditingController();
  final TextEditingController _digitController = TextEditingController();
  final TextEditingController _numberController = TextEditingController();
  final TextEditingController _alphaNumericController = TextEditingController();
  final TextEditingController _textAreaController = TextEditingController();

  //Third form
  final FormValidationBloc formValidationBloc3 = FormValidationBloc();
  AutovalidateMode _thirdValidateMode = AutovalidateMode.disabled;
  final TextEditingController _minLengthController = TextEditingController();
  final TextEditingController _maxLengthController = TextEditingController();
  final TextEditingController _rangeLengthController = TextEditingController();
  final TextEditingController _minValueController = TextEditingController();
  final TextEditingController _maxValueController = TextEditingController();
  final TextEditingController _rangeValueController = TextEditingController();
  final TextEditingController _regularExpController = TextEditingController();

  @override
  void dispose() {
    _firstNameController.dispose();
    _lastNameController.dispose();
    _userNameController.dispose();
    _cityController.dispose();
    _zipController.dispose();
    _stateController.dispose();
    _requiredController.dispose();
    _passwordController.dispose();
    _rePasswordController.dispose();
    _emailController.dispose();
    _urlController.dispose();
    _digitController.dispose();
    _numberController.dispose();
    _alphaNumericController.dispose();
    _textAreaController.dispose();
    _minLengthController.dispose();
    _maxLengthController.dispose();
    _rangeLengthController.dispose();
    _minValueController.dispose();
    _maxValueController.dispose();
    _rangeValueController.dispose();
    _regularExpController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BlocProvider(
          create: (context) => _formValidationBloc,
          child: BlocBuilder<FormValidationBloc, FormValidationState>(
            builder: (context, state) {
              state.whenOrNull(
                formSubmitSuccess: () {
                  _iconValidateMode = AutovalidateMode.always;
                },
                checkBoxSuccess: (value) {
                  _isCheck = value;
                },
              );
              return Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _formHeadingCommon('Validation type'),
                      FxBox.h24,
                      Form(
                        autovalidateMode: _iconValidateMode,
                        child: Responsive.isWeb(context) ||
                                Responsive.isTablet(context)
                            ? _validationWithIcon()
                            : __validationWithIconMobile(),
                      ),
                      FxBox.h24,
                      _termNConditionField(),
                      _isCheck == false &&
                              _iconValidateMode == AutovalidateMode.always
                          ? _termNConditionErrorMsg()
                          : const SizedBox.shrink(),
                      FxBox.h24,
                      FxButton(
                        borderRadius: 4,
                        onPressed: () {
                          _formValidationBloc
                              .add(const FormValidationEvent.submit());
                        },
                        text: 'Submit form',
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
        FxBox.h12,
        Responsive.isWeb(context) || Responsive.isTablet(context)
            ? Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(child: _validationForm2()),
                  FxBox.w12,
                  Expanded(child: _validationRangeForm())
                ],
              )
            : Column(
                children: [
                  _validationForm2(),
                  FxBox.h12,
                  _validationRangeForm()
                ],
              ),
      ],
    );
  }

  Widget _formHeadingCommon(String text) {
    return Text(
      text,
      style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
    );
  }

  Widget _termNConditionErrorMsg() {
    return Padding(
      padding: const EdgeInsets.only(left: 24.0, top: 8.0),
      child: Text(
        'You must agree before submitting.',
        style: TextStyle(fontSize: 12, color: ColorConst.error),
      ),
    );
  }

  Widget _termNConditionField() {
    return Row(
      children: [
        SizedBox(
          height: 24,
          width: 24,
          child: Checkbox(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4),
            ),
            value: _isCheck,
            onChanged: (value) {
              _formValidationBloc.add(FormValidationEvent.checkBox(value!));
            },
          ),
        ),
        const Text(
          'Agree to terms and conditions',
          style: TextStyle(fontWeight: FontWeight.w600),
        )
      ],
    );
  }

  Widget _validationWithIcon() {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            __validationWithIconCommon(
              _commonText('First Name'),
              _firstNameTextField(),
            ),
            FxBox.w12,
            __validationWithIconCommon(
              _commonText('Last Name'),
              _lastfirstNameTextField(),
            ),
            FxBox.w12,
            __validationWithIconCommon(
              _commonText('Username'),
              _userNameTextField(),
            ),
          ],
        ),
        FxBox.h16,
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            __validationWithIconCommon(
              _commonText('City'),
              _cityTextField(),
            ),
            FxBox.w12,
            __validationWithIconCommon(
              _commonText('State'),
              _stateTextField(),
            ),
            FxBox.w12,
            __validationWithIconCommon(
              _commonText('Zip'),
              _zipTextField(),
            ),
          ],
        ),
      ],
    );
  }

  Widget __validationWithIconMobile() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _commonText('First Name'),
        _firstNameTextField(),
        _commonText('Last Name'),
        _lastfirstNameTextField(),
        _commonText('Username'),
        _userNameTextField(),
        _commonText('City'),
        _cityTextField(),
        _commonText('State'),
        _stateTextField(),
        _commonText('Zip'),
        _zipTextField(),
      ],
    );
  }

  Widget __validationWithIconCommon(Widget text, Widget textField) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [text, textField],
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

  Widget _firstNameTextField() {
    return CustomTextField(
      keyboardType: TextInputType.name,
      controller: _firstNameController,
      validator: (value) {
        if (value!.isEmpty) {
          return 'Please provide valid name.';
        }
        return null;
      },
      border: const OutlineInputBorder(),
      hintText: 'Mark',
      isDense: true,
      contentPadding: const EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 12,
      ),
    );
  }

  Widget _lastfirstNameTextField() {
    return CustomTextField(
      keyboardType: TextInputType.name,
      controller: _lastNameController,
      validator: (value) {
        if (value!.isEmpty) {
          return 'Please provide valid name.';
        }
        return null;
      },
      border: const OutlineInputBorder(),
      hintText: 'Otto',
      isDense: true,
      contentPadding: const EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 12,
      ),
    );
  }

  Widget _userNameTextField() {
    return CustomTextField(
      prefixIcon: const Icon(Icons.alternate_email_sharp),
      keyboardType: TextInputType.name,
      controller: _userNameController,
      validator: (value) {
        if (value!.isEmpty) {
          return 'Please choose username.';
        }
        return null;
      },
      border: const OutlineInputBorder(),
      isDense: true,
      contentPadding: const EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 12,
      ),
    );
  }

  Widget _cityTextField() {
    return CustomTextField(
      keyboardType: TextInputType.name,
      controller: _cityController,
      validator: (value) {
        if (value!.isEmpty) {
          return 'Please provide valid city.';
        }
        return null;
      },
      border: const OutlineInputBorder(),
      isDense: true,
      contentPadding: const EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 12,
      ),
    );
  }

  Widget _stateTextField() {
    return BlocConsumer<FormValidationBloc, FormValidationState>(
      listener: (context, state) {
        state.whenOrNull(
          dropeDownSuccess: (value) {
            _dropDownValue = value;
            _stateController.text = value;
          },
        );
      },
      builder: (context, state) {
        return CustomTextField(
          suffixIcon: DropdownButtonHideUnderline(
            child: ButtonTheme(
              alignedDropdown: true,
              child: DropdownButton(
                hint: const Text('Choose...'),
                borderRadius: BorderRadius.circular(4),
                elevation: 0,
                isExpanded: true,
                isDense: true,
                focusColor: ColorConst.transparent,
                value: _dropDownValue,
                items: _stateList.map((String items) {
                  return DropdownMenuItem(
                    value: items,
                    child: Text(items),
                  );
                }).toList(),
                onChanged: (value) {
                  _formValidationBloc
                      .add(FormValidationEvent.dropDown(value.toString()));
                },
              ),
            ),
          ),
          controller: _stateController,
          validator: (value) {
            if (value!.isEmpty) {
              return 'Please choose state.';
            }
            return null;
          },
          border: const OutlineInputBorder(),
          isDense: true,
          readOnly: true,
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 15,
            vertical: 12,
          ),
        );
      },
    );
  }

  Widget _zipTextField() {
    return CustomTextField(
      keyboardType: TextInputType.name,
      controller: _zipController,
      validator: (value) {
        if (value!.isEmpty) {
          return 'Please provide valid zip.';
        }
        return null;
      },
      border: const OutlineInputBorder(),
      isDense: true,
      contentPadding: const EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 12,
      ),
    );
  }

  Widget _validationForm2() {
    return BlocProvider(
      create: (context) => formValidationBloc2,
      child: BlocBuilder<FormValidationBloc, FormValidationState>(
        builder: (context, state) {
          state.whenOrNull(
            formSubmitSuccess: () {
              _secondValidateMode = AutovalidateMode.always;
            },
          );
          return Form(
            autovalidateMode: _secondValidateMode,
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _formHeadingCommon('Validation type'),
                    FxBox.h24,
                    _commonText('Required'),
                    _requiredTextField(),
                    _commonText('Equal To'),
                    _passwordTextField(),
                    FxBox.h8,
                    _rePasswordTextField(),
                    _commonText('E-Mail'),
                    _emailTextField(),
                    _commonText('URL'),
                    _urlTextField(),
                    _commonText('Digits'),
                    _digitsTextField(),
                    _commonText('Number'),
                    _numberTextField(),
                    _commonText('Alphanumeric'),
                    _alphanumericTextField(),
                    _commonText('Textarea'),
                    _textAreaTextField(),
                    FxBox.h24,
                    Row(
                      children: [
                        FxButton(
                          borderRadius: 4,
                          onPressed: () {
                            formValidationBloc2
                                .add(const FormValidationEvent.submit());
                          },
                          text: 'Submit',
                        ),
                        FxBox.w8,
                        FxButton(
                          buttonType: ButtonType.secondary,
                          borderRadius: 4,
                          onPressed: () {
                            _requiredController.clear();
                            _passwordController.clear();
                            _rePasswordController.clear();
                            _emailController.clear();
                            _urlController.clear();
                            _digitController.clear();
                            _numberController.clear();
                            _alphaNumericController.clear();
                            _textAreaController.clear();
                          },
                          text: 'Cancel',
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _requiredTextField() {
    return CustomTextField(
      keyboardType: TextInputType.name,
      controller: _requiredController,
      validator: (value) {
        if (value!.isEmpty) {
          return "This value is required.";
        }
        return null;
      },
      border: const OutlineInputBorder(),
      hintText: 'Type something',
      isDense: true,
      contentPadding: const EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 12,
      ),
    );
  }

  Widget _passwordTextField() {
    return CustomTextField(
      obscureText: true,
      keyboardType: TextInputType.name,
      controller: _passwordController,
      validator: (value) {
        if (value!.isEmpty) {
          return "This value is required.";
        }
        return null;
      },
      border: const OutlineInputBorder(),
      hintText: 'Password',
      isDense: true,
      contentPadding: const EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 12,
      ),
    );
  }

  Widget _rePasswordTextField() {
    return CustomTextField(
      obscureText: true,
      keyboardType: TextInputType.name,
      controller: _rePasswordController,
      validator: (value) {
        if (value!.isEmpty) {
          return "This value is required.";
        } else if (value != _passwordController.text) {
          return "This value should be the same";
        }
        return null;
      },
      border: const OutlineInputBorder(),
      hintText: 'Re-Type Password',
      isDense: true,
      contentPadding: const EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 12,
      ),
    );
  }

  Widget _emailTextField() {
    return CustomTextField(
      keyboardType: TextInputType.emailAddress,
      controller: _emailController,
      validator: (value) {
        if (value!.isEmpty) {
          return "This value is required.";
        } else if (!RegExp(r'^.+@[a-zA-Z]+\.{1}[a-zA-Z]+(\.{0,1}[a-zA-Z]+)$')
            .hasMatch(value)) {
          return "This value should be a valid email.";
        }
        return null;
      },
      border: const OutlineInputBorder(),
      hintText: 'Enter a valid email',
      isDense: true,
      contentPadding: const EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 12,
      ),
    );
  }

  Widget _urlTextField() {
    return CustomTextField(
      keyboardType: TextInputType.url,
      controller: _urlController,
      validator: (value) {
        if (value!.isEmpty) {
          return "This value is required.";
        } else if (!RegExp(
                r'^((?:.|\n)*?)((http:\/\/www\.|https:\/\/www\.|http:\/\/|https:\/\/)?[a-z0-9]+([\-\.]{1}[a-z0-9]+)([-A-Z0-9.]+)(/[-A-Z0-9+&@#/%=~_|!:,.;]*)?(\?[A-Z0-9+&@#/%=~_|!:‌​,.;]*)?)')
            .hasMatch(value)) {
          return "This value should be a valid url.";
        }
        return null;
      },
      border: const OutlineInputBorder(),
      hintText: 'URL',
      isDense: true,
      contentPadding: const EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 12,
      ),
    );
  }

  Widget _digitsTextField() {
    return CustomTextField(
      keyboardType: TextInputType.number,
      controller: _digitController,
      validator: (value) {
        if (value!.isEmpty) {
          return "This value is required.";
        } else if (!RegExp(r'[0-9]+$').hasMatch(value)) {
          return "This value should be digits.";
        }
        return null;
      },
      border: const OutlineInputBorder(),
      hintText: 'Enter only digits',
      isDense: true,
      contentPadding: const EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 12,
      ),
    );
  }

  Widget _numberTextField() {
    return CustomTextField(
      keyboardType: const TextInputType.numberWithOptions(decimal: true),
      controller: _numberController,
      validator: (value) {
        if (value!.isEmpty) {
          return "This value is required.";
        } else if (!RegExp(r'^[+-]?([0-9]+([.][0-9]*)?|[.][0-9]+)$')
            .hasMatch(value)) {
          return "This value should be a valid number.";
        }
        return null;
      },
      border: const OutlineInputBorder(),
      hintText: 'Enter only numbers',
      isDense: true,
      contentPadding: const EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 12,
      ),
    );
  }

  Widget _alphanumericTextField() {
    return CustomTextField(
      controller: _alphaNumericController,
      validator: (value) {
        if (value!.isEmpty) {
          return "This value is required.";
        } else if (!RegExp("^[a-zA-Z0-9_]*\$").hasMatch(value)) {
          return "This value should be alphanumeric.";
        }
        return null;
      },
      border: const OutlineInputBorder(),
      hintText: 'Enter alphanumeric numbers',
      isDense: true,
      contentPadding: const EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 12,
      ),
    );
  }

  Widget _textAreaTextField() {
    return CustomTextField(
      keyboardType: TextInputType.multiline,
      maxLines: 5,
      controller: _textAreaController,
      validator: (value) {
        if (value!.isEmpty) {
          return "This value is required.";
        }
        return null;
      },
      border: const OutlineInputBorder(),
      hintText: 'Type here',
      isDense: true,
      contentPadding: const EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 12,
      ),
    );
  }

  Widget _validationRangeForm() {
    return BlocProvider(
      create: (context) => formValidationBloc3,
      child: BlocBuilder<FormValidationBloc, FormValidationState>(
        builder: (context, state) {
          state.whenOrNull(
            formSubmitSuccess: () {
              _thirdValidateMode = AutovalidateMode.always;
            },
          );
          return Form(
            autovalidateMode: _thirdValidateMode,
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _formHeadingCommon('Range validation'),
                    FxBox.h24,
                    _commonText('Min Length'),
                    _minLengthTextField(),
                    _commonText('Max Length'),
                    _maxLengthTextField(),
                    _commonText('Range Length'),
                    _rangeLengthTextField(),
                    _commonText('Min Value'),
                    _minValueTextField(),
                    _commonText('Max Value'),
                    _maxValueTextField(),
                    _commonText('Range Value'),
                    _rangeValueTextField(),
                    _commonText('Regular Exp'),
                    _regularExpTextField(),
                    FxBox.h24,
                    Row(
                      children: [
                        FxButton(
                          borderRadius: 4,
                          onPressed: () {
                            formValidationBloc3
                                .add(const FormValidationEvent.submit());
                          },
                          text: 'Submit',
                        ),
                        FxBox.w8,
                        FxButton(
                          buttonType: ButtonType.secondary,
                          borderRadius: 4,
                          onPressed: () {
                            _minLengthController.clear();
                            _maxLengthController.clear();
                            _rangeLengthController.clear();
                            _minValueController.clear();
                            _maxValueController.clear();
                            _rangeValueController.clear();
                            _regularExpController.clear();
                          },
                          text: 'Cancel',
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _minLengthTextField() {
    return CustomTextField(
      keyboardType: TextInputType.name,
      controller: _minLengthController,
      validator: (value) {
        if (value!.isEmpty) {
          return "This value is required.";
        } else if (value.length < 6) {
          return "This value is too short. It should have 6 characters or more.";
        }
        return null;
      },
      border: const OutlineInputBorder(),
      hintText: 'Min 6 chars.',
      isDense: true,
      contentPadding: const EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 12,
      ),
    );
  }

  Widget _maxLengthTextField() {
    return CustomTextField(
      keyboardType: TextInputType.name,
      controller: _maxLengthController,
      validator: (value) {
        if (value!.isEmpty) {
          return "This value is required.";
        } else if (value.length > 6) {
          return "This value is too long. It should have 6 characters or fewer.";
        }
        return null;
      },
      border: const OutlineInputBorder(),
      hintText: 'Max 6 chars.',
      isDense: true,
      contentPadding: const EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 12,
      ),
    );
  }

  Widget _rangeLengthTextField() {
    return CustomTextField(
      keyboardType: TextInputType.name,
      controller: _rangeLengthController,
      validator: (value) {
        if (value!.isEmpty) {
          return "This value is required.";
        } else if (value.length < 5 || value.length > 10) {
          return "This value length is invalid. It should be between 5 and 10 characters long.";
        }
        return null;
      },
      border: const OutlineInputBorder(),
      hintText: 'Text Between 5 - 10 chars lenght',
      isDense: true,
      contentPadding: const EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 12,
      ),
    );
  }

  Widget _minValueTextField() {
    return CustomTextField(
      keyboardType: TextInputType.number,
      controller: _minValueController,
      validator: (value) {
        if (value!.isEmpty) {
          return "This value is required.";
        } else if (double.tryParse(value) == null ||
            double.tryParse(value)! < 6) {
          return "This value should be greater than or equal to 6.";
        }
        return null;
      },
      border: const OutlineInputBorder(),
      hintText: 'Min value is 6',
      isDense: true,
      contentPadding: const EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 12,
      ),
    );
  }

  Widget _maxValueTextField() {
    return CustomTextField(
      keyboardType: TextInputType.number,
      controller: _maxValueController,
      validator: (value) {
        if (value!.isEmpty) {
          return "This value is required.";
        } else if (double.tryParse(value) == null ||
            double.tryParse(value)! > 6) {
          return "This value should be lower than or equal to 6.";
        }
        return null;
      },
      border: const OutlineInputBorder(),
      hintText: 'Max value is 6',
      isDense: true,
      contentPadding: const EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 12,
      ),
    );
  }

  Widget _rangeValueTextField() {
    return CustomTextField(
      keyboardType: TextInputType.number,
      controller: _rangeValueController,
      validator: (value) {
        if (value!.isEmpty) {
          return "This value is required.";
        } else if (double.tryParse(value) == null ||
            double.tryParse(value)! < 6 ||
            double.tryParse(value)! > 100) {
          return "This value should be between 6 and 100.";
        }
        return null;
      },
      border: const OutlineInputBorder(),
      hintText: 'Number between  6 - 100',
      isDense: true,
      contentPadding: const EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 12,
      ),
    );
  }

  Widget _regularExpTextField() {
    return CustomTextField(
      controller: _regularExpController,
      validator: (value) {
        if (value!.isEmpty) {
          return "This value is required.";
        } else if (!RegExp("^#([A-Fa-f0-9]{6}|[A-Fa-f0-9]{3})\$")
            .hasMatch(value)) {
          return "This value seems to be invalid.";
        }
        return null;
      },
      border: const OutlineInputBorder(),
      hintText: 'Hex. Color',
      isDense: true,
      contentPadding: const EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 12,
      ),
    );
  }
}
