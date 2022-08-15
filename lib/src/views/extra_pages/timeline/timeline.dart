import 'dart:math';
import 'package:admin_dashboard/src/constant/color.dart';
import 'package:admin_dashboard/src/constant/custom_text.dart';
import 'package:admin_dashboard/src/utils/models/steps.dart';
import 'package:admin_dashboard/src/utils/responsive.dart';
import 'package:flutter/material.dart';
import 'package:timeline_tile/timeline_tile.dart';

class TimelineScreen extends StatefulWidget {
  const TimelineScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _TimelineScreenState();
}

class _TimelineScreenState extends State<TimelineScreen> {
  List<Steps> _steps = [];

  @override
  void initState() {
    _steps = _generateData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: ColorConst.white,
        borderRadius: BorderRadius.all(Radius.circular(4.0)),
        boxShadow: [
          BoxShadow(
            color: ColorConst.appbarLightBG,
            blurRadius: 0.2,
            spreadRadius: 0.2,
          )
        ],
      ),
      child: SafeArea(
        child: Column(
          children: [
            CustomScrollView(
              shrinkWrap: true,
              physics: const ScrollPhysics(),
              slivers: <Widget>[_timelineSteps(steps: _steps)],
            ),
            const SizedBox(height: 8),
          ],
        ),
      ),
    );
  }

  List<Steps> _generateData() {
    return <Steps>[
      Steps(
        step: 1,
        title: 'Decide What You Want',
        message:
            'Step number one, decide exactly what it is you want in each part of your life. Become a "meaningful specific" rather than a "wandering generality."',
      ),
      Steps(
        step: 2,
        title: 'Write it Down',
        message:
            'Second, write it down, clearly and in detail. Always think on paper. A goal that is not in writing is not a goal at all. It is merely a wish and it has no energy behind it.',
      ),
      Steps(
        step: 3,
        title: 'Set a Deadline',
        message:
            'Third, set a deadline for your goal. A deadline acts as a "forcing system” in your subconscious mind. It motivates you to do the things necessary to make your goal come true. If it is a big enough goal, set sub-deadlines as well. Don’t leave this to chance.',
      ),
      const Steps(
        step: 4,
        title: 'Make a List',
        message:
            'Fourth, make a list of everything that you can think of that you are going to have to do to achieve your goal. When you think of new tasks and activities, write them on your list until your list is complete.',
      ),
    ];
  }

  Widget _timelineSteps({List<Steps>? steps}) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          if (index.isOdd) {
            return const TimelineDivider(
              color: ColorConst.darkFontColor,
              thickness: 3,
              begin: 0.05,
              end: 0.95,
            );
          }

          final int itemIndex = index ~/ 2;
          final Steps step = steps![itemIndex];

          final bool isLeftAlign = itemIndex.isEven;

          final child = _timelineStepsChild(
            step.title,
            step.message,
            isLeftAlign,
          );

          final isFirst = itemIndex == 0;
          final isLast = itemIndex == steps.length - 1;
          double indicatorY;
          if (isFirst) {
            indicatorY = 0.2;
          } else if (isLast) {
            indicatorY = 0.8;
          } else {
            indicatorY = 0.5;
          }

          return TimelineTile(
            alignment: TimelineAlign.manual,
            endChild: isLeftAlign ? child : null,
            startChild: isLeftAlign ? null : child,
            lineXY: isLeftAlign ? 0.05 : 0.95,
            isFirst: isFirst,
            isLast: isLast,
            indicatorStyle: IndicatorStyle(
              width: 70,
              height: 130,
              indicatorXY: indicatorY,
              indicator: _timelineStepIndicator(step.step.toInt()),
            ),
            beforeLineStyle: const LineStyle(
              color: ColorConst.darkFontColor,
              thickness: 5,
            ),
          );
        },
        childCount: max(0, steps!.length * 2 - 1),
      ),
    );
  }

  Widget _timelineStepIndicator(int step) {
    return Container(
      margin: const EdgeInsets.only(top: 30),
      decoration: const BoxDecoration(
        shape: BoxShape.rectangle,
        color: ColorConst.primary,
        borderRadius: BorderRadius.all(Radius.circular(4.0)),
      ),
      child: Center(
        child: CustomText(
          title: step.toString(),
          textColor: ColorConst.white,
        ),
      ),
    );
  }

  Widget _timelineStepsChild(
    String title,
    String subtitle,
    bool isLeftAlign,
  ) {
    return Padding(
      padding: isLeftAlign
          ? (Responsive.isWeb(context))
              ? EdgeInsets.only(
                  right: MediaQuery.of(context).size.width / 3.5,
                  top: 16,
                  bottom: 16,
                  left: 10)
              : const EdgeInsets.only(right: 32, top: 16, bottom: 16, left: 10)
          : (Responsive.isWeb(context))
              ? EdgeInsets.only(
                  left: MediaQuery.of(context).size.width / 3.5,
                  top: 16,
                  bottom: 16,
                  right: 10)
              : const EdgeInsets.only(left: 32, top: 16, bottom: 16, right: 10),
      child: Container(
        margin: const EdgeInsets.only(left: 15, top: 35, right: 15, bottom: 25),
        padding:
            const EdgeInsets.only(left: 20, top: 25, right: 20, bottom: 25),
        decoration: const BoxDecoration(
          color: ColorConst.darkFontColor,
          borderRadius: BorderRadius.all(Radius.circular(4.0)),
        ),
        child: Column(
          crossAxisAlignment:
              isLeftAlign ? CrossAxisAlignment.start : CrossAxisAlignment.end,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            CustomText(
              title: title,
              textAlign: isLeftAlign ? TextAlign.left : TextAlign.right,
              fontSize: 16,
              fontWeight: FontWeight.w700,
              textColor: ColorConst.lightFontColor,
            ),
            const SizedBox(height: 16),
            CustomText(
              title: subtitle,
              textAlign: isLeftAlign ? TextAlign.left : TextAlign.right,
              fontSize: 14,
              fontWeight: FontWeight.w600,
              textColor: ColorConst.lightFontColor,
            ),
          ],
        ),
      ),
    );
  }
}
