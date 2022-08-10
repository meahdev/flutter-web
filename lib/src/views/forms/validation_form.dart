import 'package:admin_dashboard/src/constant/color.dart';
import 'package:admin_dashboard/src/provider/form_validation_dropdown/bloc/form_validate_dropdown_bloc.dart';
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

  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _userNameController = TextEditingController();
  final TextEditingController _cityController = TextEditingController();
  final TextEditingController _zipController = TextEditingController();
  final TextEditingController _stateController = TextEditingController();
  final TextEditingController _checkController = TextEditingController();

  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  List<String> stateList = ['Gujarat', 'Assam', 'Bihar'];
  String? dropDownValue;

  @override
  void dispose() {
    _firstNameController.dispose();
    _lastNameController.dispose();
    _userNameController.dispose();
    _cityController.dispose();
    _zipController.dispose();
    _stateController.dispose();
    _checkController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => formValidateDropdownBloc,
      child: Column(
        children: [
          Form(
              autovalidateMode: autovalidateMode,
              key: _formKey,
              child: _validationWithIcon())
        ],
      ),
    );
  }

  Widget _validationWithIcon() {
    return Card(
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
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
            FxBox.h24,
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'First Name',
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                      FxBox.h8,
                      CustomTextField(
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
                      )
                    ],
                  ),
                ),
                FxBox.w12,
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Last Name',
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                      FxBox.h8,
                      CustomTextField(
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
                      )
                    ],
                  ),
                ),
                FxBox.w12,
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Username',
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                      FxBox.h8,
                      CustomTextField(
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
                      )
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
                      const Text(
                        'City',
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                      FxBox.h8,
                      CustomTextField(
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
                      )
                    ],
                  ),
                ),
                FxBox.w12,
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'State',
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                      FxBox.h8,
                      BlocConsumer<FormValidateDropdownBloc,
                          FormValidateDropdownState>(
                        listener: (context, state) {
                          state.when(
                            initial: () {},
                            success: (value) {
                              dropDownValue = value;
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
                                  value: dropDownValue,
                                  items: stateList.map((String items) {
                                    return DropdownMenuItem(
                                      value: items,
                                      child: Text(items),
                                    );
                                  }).toList(),
                                  onChanged: (value) {
                                    formValidateDropdownBloc.add(
                                        FormValidateDropdownEvent.onTap(
                                            value.toString()));
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
                      ),
                    ],
                  ),
                ),
                FxBox.w12,
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Zip',
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                      FxBox.h8,
                      CustomTextField(
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
                      )
                    ],
                  ),
                ),
              ],
            ),
            FxBox.h16,
            Row(
              children: [
                Checkbox(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4),
                  ),
                  value: true,
                  onChanged: (value) {},
                ),
                const Text(
                  'Agree to terms and conditions',
                  style: TextStyle(fontWeight: FontWeight.w600),
                )
              ],
            ),
            Text(
              'You must agree before submitting.',
              style: TextStyle(fontSize: 12, color: ColorConst.error),
            ),
            FxBox.h24,
            FxButton(
              borderRadius: 4,
              onPressed: () {
                setState(() {
                  autovalidateMode = AutovalidateMode.always;
                });
              },
              text: 'Submit form',
            )
          ],
        ),
      ),
    );
  }
}
