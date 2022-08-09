import 'package:admin_dashboard/src/constant/string.dart';
import 'package:admin_dashboard/src/constant/text.dart';

import 'package:flutter/material.dart';

class Activity extends StatefulWidget {
  const Activity({Key? key}) : super(key: key);

  @override
  State<Activity> createState() => _ActivityState();
}

class _ActivityState extends State<Activity> {
  List<Step> steps = [
    Step(
      title: ConstText.lightText(text: 'JAN 22'),
      content: ConstText.lightText(text: ''),
      subtitle:
          ConstText.lightText(text: 'Responded to need “Volunteer Activities”'),
      isActive: true,
    ),
    Step(
      title: ConstText.lightText(text: 'JAN 20'),
      content: ConstText.lightText(text: ''),
      subtitle: ConstText.lightText(
          text:
              'At vero eos et accusamus et iusto odio dignissimos ducimus qui deleniti atque...'),
      isActive: true,
      state: StepState.complete,
    ),
    Step(
      title: ConstText.lightText(text: 'JAN 19'),
      content: ConstText.lightText(text: ''),
      subtitle:
          ConstText.lightText(text: 'Joined the group “Boardsmanship Forum”'),
      isActive: true,
      state: StepState.complete,
    ),
    Step(
      title: ConstText.lightText(text: 'JAN 17'),
      content: ConstText.lightText(text: ''),
      subtitle:
          ConstText.lightText(text: 'Responded to need “In-Kind Opportunity”'),
      isActive: true,
      state: StepState.complete,
    ),
  ];
  int _currentStep = 0;
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4),
      ),
      child: ConstrainedBox(
        constraints: const BoxConstraints(minHeight: 450),
        child: Container(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ConstText.lightText(
                text: Strings.activity,
                // color: ColorConst.grey800,
                fontWeight: FontWeight.bold,
              ),
              Stepper(
                controlsBuilder:
                    (BuildContext context, ControlsDetails details) {
                  return Row(
                    children: <Widget>[
                      TextButton(
                        onPressed: details.onStepContinue,
                        child: const Text('Continue'),
                      ),
                      TextButton(
                        onPressed: details.onStepCancel,
                        child: const Text('cancle'),
                      ),
                    ],
                  );
                },
                steps: steps,
                currentStep: _currentStep,
                onStepTapped: (step) {
                  setState(() {
                    _currentStep = step;
                  });
                },
                onStepContinue: () {
                  if (_currentStep < steps.length - 1) {
                    _currentStep = _currentStep + 1;
                  } else {
                    _currentStep = 0;
                  }
                  setState(() {});
                },
                onStepCancel: () {
                  if (_currentStep > 0) {
                    _currentStep = _currentStep - 1;
                  } else {
                    _currentStep = 0;
                  }
                  setState(() {});
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
