import 'package:admin_dashboard/src/constant/color.dart';
import 'package:admin_dashboard/src/provider/form_checkbox/bloc/form_check_bloc.dart';
import 'package:admin_dashboard/src/provider/form_submit/bloc/form_submit_bloc.dart';
import 'package:admin_dashboard/src/provider/form_validation_dropdown/bloc/form_validate_dropdown_bloc.dart';
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
  final _formKey = GlobalKey<FormState>();

  final FormValidateDropdownBloc formValidateDropdownBloc =
      FormValidateDropdownBloc();
  final FormCheckBloc formCheckBloc = FormCheckBloc();
  final FormSubmitBloc formSubmitBloc = FormSubmitBloc();

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

  @override
  void dispose() {
    _firstNameController.dispose();
    _lastNameController.dispose();
    _userNameController.dispose();
    _cityController.dispose();
    _zipController.dispose();
    _stateController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => formValidateDropdownBloc,
        ),
        BlocProvider(
          create: (context) => formCheckBloc,
        ),
        BlocProvider(
          create: (context) => formSubmitBloc,
        ),
      ],
      child: BlocBuilder<FormSubmitBloc, FormSubmitState>(
        builder: (context, state) {
          state.when(
            initial: () {},
            success: (value) {
              _iconValidateMode = AutovalidateMode.always;
            },
          );
          return BlocBuilder<FormCheckBloc, FormCheckState>(
            builder: (context, state) {
              state.when(
                initial: () {},
                success: (value) {
                  _isCheck = value;
                },
              );
              return Column(
                children: [
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Container(
                      padding: const EdgeInsets.all(20.0),
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Validation type',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w600),
                          ),
                          FxBox.h24,
                          Form(
                            key: _formKey,
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
                          _submitButton()
                        ],
                      ),
                    ),
                  )
                ],
              );
            },
          );
        },
      ),
    );
  }

  Widget _validationWithIcon() {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [_commomText('First Name'), _firstNameTextField()],
              ),
            ),
            FxBox.w12,
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _commomText('Last Name'),
                  _lastfirstNameTextField(),
                ],
              ),
            ),
            FxBox.w12,
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _commomText('Username'),
                  _userNameTextField(),
                ],
              ),
            ),
          ],
        ),
        FxBox.h16,
        Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _commomText('City'),
                  _cityTextField(),
                ],
              ),
            ),
            FxBox.w12,
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _commomText('State'),
                  _stateTextField(),
                ],
              ),
            ),
            FxBox.w12,
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _commomText('Zip'),
                  _zipTextField(),
                ],
              ),
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
        _commomText('First Name'),
        _firstNameTextField(),
        _commomText('Last Name'),
        _lastfirstNameTextField(),
        _commomText('Username'),
        _userNameTextField(),
        _commomText('City'),
        _cityTextField(),
        _commomText('State'),
        _stateTextField(),
        _commomText('Zip'),
        _zipTextField(),
      ],
    );
  }

  Widget _submitButton() {
    return FxButton(
      borderRadius: 4,
      onPressed: () {
        formSubmitBloc.add(const FormSubmitEvent.onTap(true));
      },
      text: 'Submit form',
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
              formCheckBloc.add(FormCheckEvent.onCheck(value!));
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

  Widget _commomText(String text) {
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
    return BlocConsumer<FormValidateDropdownBloc, FormValidateDropdownState>(
      listener: (context, state) {
        state.when(
          initial: () {},
          success: (value) {
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
                  formValidateDropdownBloc
                      .add(FormValidateDropdownEvent.onTap(value.toString()));
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
}
