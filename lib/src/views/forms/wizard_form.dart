import 'package:admin_dashboard/src/constant/color.dart';
import 'package:admin_dashboard/src/provider/form_wizard/bloc/form_wizard_bloc.dart';
import 'package:admin_dashboard/src/utils/responsive.dart';
import 'package:admin_dashboard/src/widget/textformfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterx/flutterx.dart';

class WizardForm extends StatefulWidget {
  const WizardForm({Key? key}) : super(key: key);

  @override
  State<WizardForm> createState() => _WizardFormState();
}

class _WizardFormState extends State<WizardForm> {
  final FormWizardBloc _formWizardBloc = FormWizardBloc();

  int index = 0;
  int clickCount = 0;
  bool isFinish = false;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => _formWizardBloc,
      child: BlocConsumer<FormWizardBloc, FormWizardState>(
        listener: (context, state) {
          state.whenOrNull(
            nextSuccess: (nextIndex, clickCounter) {
              index = nextIndex;
              clickCount = clickCounter;
            },
            finishSuccess: (isFinished) {
              isFinish = isFinished;
            },
            previousSuccess: (previousIndex) {
              index = previousIndex;
            },
            stepperSuccess: (stepperIndex) {
              index = stepperIndex;
            },
          );
        },
        builder: (context, state) {
          return Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4),
            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Jquery Steps Wizard",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                  FxBox.h24,
                  Responsive.isWeb(context)
                      ? Row(
                          children: [
                            Expanded(
                              child: GestureDetector(
                                onTap: _selleronTap,
                                child: _stepperTitle(
                                    '1.', 'Seller Deatils', index),
                              ),
                            ),
                            FxBox.w8,
                            Expanded(
                              child: GestureDetector(
                                  onTap: _companyonTap,
                                  child: _stepperTitle(
                                      '2.', 'Company Document', index)),
                            ),
                            FxBox.w8,
                            Expanded(
                              child: GestureDetector(
                                  onTap: _bankonTap,
                                  child: _stepperTitle(
                                      '3.', 'Bank Deatils', index)),
                            ),
                            FxBox.w8,
                            Expanded(
                              child: GestureDetector(
                                  onTap: _confirmonTap,
                                  child: _stepperTitle(
                                      '4.', 'Confirm Deatil', index)),
                            ),
                          ],
                        )
                      : Responsive.isTablet(context)
                          ? Column(
                              children: [
                                Row(
                                  children: [
                                    Expanded(
                                      child: GestureDetector(
                                        onTap: _selleronTap,
                                        child: _stepperTitle(
                                          '1.',
                                          'Seller Deatils',
                                          index,
                                        ),
                                      ),
                                    ),
                                    FxBox.w8,
                                    Expanded(
                                      child: GestureDetector(
                                          onTap: _companyonTap,
                                          child: _stepperTitle(
                                            '2.',
                                            'Company Document',
                                            index,
                                          )),
                                    ),
                                  ],
                                ),
                                FxBox.h8,
                                Row(
                                  children: [
                                    Expanded(
                                      child: GestureDetector(
                                          onTap: _bankonTap,
                                          child: _stepperTitle(
                                              '3.', 'Bank Deatils', index)),
                                    ),
                                    FxBox.w8,
                                    Expanded(
                                      child: GestureDetector(
                                        onTap: _confirmonTap,
                                        child: _stepperTitle(
                                          '4.',
                                          'Confirm Deatil',
                                          index,
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            )
                          : Column(
                              children: [
                                GestureDetector(
                                  onTap: _selleronTap,
                                  child: _stepperTitle(
                                    '1.',
                                    'Seller Deatils',
                                    index,
                                  ),
                                ),
                                FxBox.h8,
                                GestureDetector(
                                  onTap: _companyonTap,
                                  child: _stepperTitle(
                                    '2.',
                                    'Company Document',
                                    index,
                                  ),
                                ),
                                FxBox.h8,
                                GestureDetector(
                                  onTap: _bankonTap,
                                  child: _stepperTitle(
                                    '3.',
                                    'Bank Deatils',
                                    index,
                                  ),
                                ),
                                FxBox.h8,
                                GestureDetector(
                                  onTap: _confirmonTap,
                                  child: _stepperTitle(
                                    '4.',
                                    'Confirm Deatil',
                                    index,
                                  ),
                                ),
                              ],
                            ),
                  FxBox.h24,
                  Column(
                    children: [
                      Row(
                        children: [
                          Expanded(child: _commonTitle('Contact Person')),
                          FxBox.w16,
                          Expanded(
                              flex: 4,
                              child: _commonTextField('Enter your name')),
                          FxBox.w48,
                          Expanded(child: _commonTitle('Mobile No.')),
                          FxBox.w16,
                          Expanded(
                              flex: 4,
                              child: _commonTextField('Enter your number')),
                        ],
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      FxButton(
                        borderRadius: 4.0,
                        onPressed: index == 0
                            ? null
                            : () {
                                if (isFinish) {
                                  _formWizardBloc.add(
                                      const FormWizardEvent.finishClick(false));
                                }
                                _formWizardBloc.add(
                                    FormWizardEvent.previousClick(index - 1));
                              },
                        text: 'Previous',
                      ),
                      FxBox.w16,
                      FxButton(
                        borderRadius: 4.0,
                        onPressed: () {
                          if (index < 3) {
                            _formWizardBloc.add(FormWizardEvent.nextClick(
                                index + 1, clickCount + 1));
                          } else if (index == 3) {
                            _formWizardBloc
                                .add(const FormWizardEvent.finishClick(true));
                          }
                        },
                        text: index != 3 ? 'Next' : 'Finish',
                      ),
                    ],
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _stepperTitle(String number, String title, int index) {
    final isSelected = index == (int.parse(number.substring(0, 1)) - 1);

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5.0),
        color: isSelected && !isFinish
            ? ColorConst.primary
            : ColorConst.stepperBackGround,
      ),
      padding: const EdgeInsets.all(15.0),
      child: Row(
        children: [
          Container(
            alignment: Alignment.center,
            height: 38,
            width: 38,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                width: 2.0,
                color: isSelected && !isFinish
                    ? ColorConst.white
                    : ColorConst.primary,
              ),
            ),
            child: Text(
              number,
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.w500,
                color: isSelected && !isFinish
                    ? ColorConst.white
                    : ColorConst.primary,
              ),
            ),
          ),
          FxBox.w10,
          Expanded(
            child: Text(
              title,
              style: TextStyle(
                color: isSelected && !isFinish
                    ? ColorConst.white
                    : ColorConst.primary,
              ),
            ),
          )
        ],
      ),
    );
  }

  void _selleronTap() {
    _formWizardBloc.add(const FormWizardEvent.stepperClick(0));
    if (isFinish) {
      _formWizardBloc.add(const FormWizardEvent.finishClick(false));
    }
  }

  void _companyonTap() {
    if (clickCount > 0) {
      _formWizardBloc.add(const FormWizardEvent.stepperClick(1));
    }
    if (isFinish) {
      _formWizardBloc.add(const FormWizardEvent.finishClick(false));
    }
  }

  void _bankonTap() {
    if (clickCount > 1) {
      _formWizardBloc.add(const FormWizardEvent.stepperClick(2));
    }
    if (isFinish) {
      _formWizardBloc.add(const FormWizardEvent.finishClick(false));
    }
  }

  void _confirmonTap() {
    if (clickCount > 2) {
      _formWizardBloc.add(const FormWizardEvent.stepperClick(3));
    }
  }

  Widget _commonTitle(String text) {
    return Text(
      text,
      style: const TextStyle(
        fontWeight: FontWeight.w500,
      ),
    );
  }

  Widget _commonTextField(String hintText, {int? maxLines = 1}) {
    return CustomTextField(
      maxLines: maxLines,
      border: const OutlineInputBorder(),
      hintText: hintText,
      isDense: true,
      contentPadding: const EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 12,
      ),
    );
  }
}
