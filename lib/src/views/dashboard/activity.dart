import 'package:admin_dashboard/src/constant/string.dart';
import 'package:admin_dashboard/src/constant/text.dart';
import 'package:admin_dashboard/src/provider/stepper/bloc/stepper_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterx/flutterx.dart';

class Activity extends StatefulWidget {
  const Activity({Key? key}) : super(key: key);

  @override
  State<Activity> createState() => _ActivityState();
}

class _ActivityState extends State<Activity> {
  final StepperBloc _stepperBloc = StepperBloc();

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

  @override
  void initState() {
    _stepperBloc.add(const StepperEvent.changeIndex(0));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => _stepperBloc,
      child: Card(
        child: ConstrainedBox(
          constraints: const BoxConstraints(minHeight: 465),
          child: Container(
            padding: const EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ConstText.lightText(
                  text: Strings.activity,
                  fontWeight: FontWeight.bold,
                ),
                BlocBuilder<StepperBloc, StepperState>(
                  builder: (context, state) {
                    return state.when(
                      initial: () => FxBox.shrink,
                      success: (index) => Stepper(
                        controlsBuilder:
                            (BuildContext context, ControlsDetails details) {
                          return Row(
                            children: <Widget>[
                              TextButton(
                                onPressed: () {
                                  if (index + 1 != steps.length) {
                                    _stepperBloc.add(
                                        StepperEvent.changeIndex(index + 1));
                                  }
                                },
                                child: const Text('Continue'),
                              ),
                              TextButton(
                                onPressed: () {
                                  if (index != 0) {
                                    _stepperBloc.add(
                                        StepperEvent.changeIndex(index - 1));
                                  }
                                },
                                child: const Text('Cancle'),
                              ),
                            ],
                          );
                        },
                        steps: steps,
                        currentStep: index,
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
