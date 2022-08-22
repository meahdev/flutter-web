import 'package:admin_dashboard/src/constant/color.dart';
import 'package:admin_dashboard/src/utils/responsive.dart';
import 'package:flutter/material.dart';
import 'package:flutterx/flutterx.dart';

class WizardForm extends StatefulWidget {
  const WizardForm({Key? key}) : super(key: key);

  @override
  State<WizardForm> createState() => _WizardFormState();
}

class _WizardFormState extends State<WizardForm> {
  int index = 0;
  int clickCount = 0;
  bool isFinish = false;

  @override
  Widget build(BuildContext context) {
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
                          onTap: () {
                            setState(() {
                              index = 0;
                            });
                            if (isFinish) {
                              setState(() {
                                isFinish = false;
                              });
                            }
                          },
                          child: _stepperTitle(
                              '1.', 'Seller Deatils', index, context),
                        ),
                      ),
                      FxBox.w8,
                      Expanded(
                        child: GestureDetector(
                            onTap: () {
                              if (clickCount > 0) {
                                setState(() {
                                  index = 1;
                                });
                              }
                              if (isFinish) {
                                setState(() {
                                  isFinish = false;
                                });
                              }
                            },
                            child: _stepperTitle(
                                '2.', 'Company Document', index, context)),
                      ),
                      FxBox.w8,
                      Expanded(
                        child: GestureDetector(
                            onTap: () {
                              if (clickCount > 1) {
                                setState(() {
                                  index = 2;
                                });
                              }
                              if (isFinish) {
                                setState(() {
                                  isFinish = false;
                                });
                              }
                            },
                            child: _stepperTitle(
                                '3.', 'Bank Deatils', index, context)),
                      ),
                      FxBox.w8,
                      Expanded(
                        child: GestureDetector(
                            onTap: () {
                              if (clickCount > 2) {
                                setState(() {
                                  index = 3;
                                });
                              }
                            },
                            child: _stepperTitle(
                                '4.', 'Confirm Deatil', index, context)),
                      ),
                    ],
                  )
                : Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  index = 0;
                                });
                                if (isFinish) {
                                  setState(() {
                                    isFinish = false;
                                  });
                                }
                              },
                              child: _stepperTitle(
                                  '1.', 'Seller Deatils', index, context),
                            ),
                          ),
                          FxBox.w8,
                          Expanded(
                            child: GestureDetector(
                                onTap: () {
                                  if (clickCount > 0) {
                                    setState(() {
                                      index = 1;
                                    });
                                  }
                                  if (isFinish) {
                                    setState(() {
                                      isFinish = false;
                                    });
                                  }
                                },
                                child: _stepperTitle(
                                    '2.', 'Company Document', index, context)),
                          ),
                        ],
                      ),
                      FxBox.h8,
                      Row(
                        children: [
                          Expanded(
                            child: GestureDetector(
                                onTap: () {
                                  if (clickCount > 1) {
                                    setState(() {
                                      index = 2;
                                    });
                                  }
                                  if (isFinish) {
                                    setState(() {
                                      isFinish = false;
                                    });
                                  }
                                },
                                child: _stepperTitle(
                                    '3.', 'Bank Deatils', index, context)),
                          ),
                          FxBox.w8,
                          Expanded(
                            child: GestureDetector(
                                onTap: () {
                                  if (clickCount > 2) {
                                    setState(() {
                                      index = 3;
                                    });
                                  }
                                },
                                child: _stepperTitle(
                                    '4.', 'Confirm Deatil', index, context)),
                          ),
                        ],
                      )
                    ],
                  ),
            FxBox.h24,
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                FxButton(
                  borderRadius: 4.0,
                  onPressed: index == 0
                      ? null
                      : () {
                          if (isFinish) {
                            setState(() {
                              isFinish = false;
                            });
                          }
                          setState(() {
                            index--;
                          });
                        },
                  text: 'Previous',
                ),
                FxBox.w16,
                FxButton(
                  borderRadius: 4.0,
                  onPressed: () {
                    if (index < 3) {
                      setState(() {
                        index++;
                        clickCount++;
                      });
                    } else if (index == 3) {
                      setState(() {
                        isFinish = true;
                      });
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
  }

  Widget _stepperTitle(
      String number, String title, int index, BuildContext context) {
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
}
