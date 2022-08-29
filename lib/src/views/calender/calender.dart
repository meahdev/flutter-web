import 'dart:math';

import 'package:admin_dashboard/src/constant/color.dart';
import 'package:admin_dashboard/src/constant/theme.dart';
import 'package:admin_dashboard/src/provider/calendar/calendar_dialog/bloc/calendar_dialog_bloc.dart';
import 'package:admin_dashboard/src/provider/calendar/calendar_format/calendar_format_bloc.dart';
import 'package:admin_dashboard/src/utils/responsive.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterx/flutterx.dart';
import 'package:table_calendar/table_calendar.dart';

class Calendar extends StatefulWidget {
  const Calendar({Key? key}) : super(key: key);

  @override
  State<Calendar> createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {
  late final CalendarFormatBloc _calendarFormatBloc = CalendarFormatBloc()
    ..add(CalendarFormatEvent.loading(
        calendarFormat: CalendarFormat.month, eventsList: eventMap));

  TextEditingController eventController = TextEditingController();

  PageController? newpageController;

  String dropdownValue = '--Select--';

  double currentMonthPageIndex = 0.0;

  CalendarFormat _calendarFormat = CalendarFormat.month;

  String creatRandomDate({required bool currentmonth}) {
    DateTime date = DateTime(
        DateTime.now().year, DateTime.now().month + (currentmonth ? 1 : 2), 0);
    int rng = Random().nextInt(date.day);

    if (rng == 0) {
      rng = rng + 1;
    }
    String month = DateTime.now().month <= 9
        ? '0${DateTime.now().month + (currentmonth ? 0 : 1)}'
        : (DateTime.now().month + (currentmonth ? 0 : 1)).toString();
    String day = rng <= 9 ? '0$rng' : rng.toString();
    return DateTime.parse('${DateTime.now().year}-$month-$day')
        .toString()
        .split(" ")[0];
  }

  late Map<DateTime, List<Map<String, dynamic>>> eventMap = {
    DateTime.parse('${creatRandomDate(currentmonth: true)} 00:00:00.000Z'): [
      {'eventName': 'Holiday', 'dropdownValue': 4}
    ],
    DateTime.parse('${creatRandomDate(currentmonth: true)} 00:00:00.000Z'): [
      {'eventName': 'Shoping', 'dropdownValue': 5}
    ],
    DateTime.parse('${creatRandomDate(currentmonth: true)} 00:00:00.000Z'): [
      {'eventName': 'summit', 'dropdownValue': 1}
    ],
    DateTime.parse('${creatRandomDate(currentmonth: true)} 00:00:00.000Z'): [
      {'eventName': 'lunch', 'dropdownValue': 3},
      {'eventName': 'Meeting', 'dropdownValue': 4}
    ],
    DateTime.parse('${creatRandomDate(currentmonth: true)} 00:00:00.000Z'): [
      {'eventName': 'Trip', 'dropdownValue': 6}
    ],
    DateTime.parse('${creatRandomDate(currentmonth: true)} 00:00:00.000Z'): [
      {'eventName': 'Visit showroom', 'dropdownValue': 2}
    ],
    DateTime.parse('${creatRandomDate(currentmonth: true)} 00:00:00.000Z'): [
      {'eventName': 'GD', 'dropdownValue': 0}
    ],
    DateTime.parse('${creatRandomDate(currentmonth: false)} 00:00:00.000Z'): [
      {'eventName': 'BirthDay Party', 'dropdownValue': 5}
    ],
    DateTime.parse('${creatRandomDate(currentmonth: false)} 00:00:00.000Z'): [
      {'eventName': 'Repeating Event', 'dropdownValue': 2}
    ],
  };

  List<String> dropDownList = const [
    '--Select--',
    'Danger',
    'Success',
    'Primary',
    'Info',
    'Dark',
    'Warning'
  ];

  List<Color> coloredList = [
    ColorConst.primary,
    ColorConst.error,
    ColorConst.success,
    ColorConst.primary,
    ColorConst.info,
    ColorConst.dark,
    ColorConst.warning,
  ];

  List<String> months = <String>[
    'Jan',
    'Feb',
    'Mar',
    'Apr',
    'May',
    'Jun',
    'Jul',
    'Aug',
    'Sep',
    'Oct',
    'Nov',
    'Dec'
  ];

  @override
  void dispose() {
    newpageController!.dispose();
    eventController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => _calendarFormatBloc,
      child: Responsive.isWeb(context)
          ? Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(flex: 2, child: _mobileView()),
                FxBox.w20,
                Expanded(
                  flex: 4,
                  child: Card(
                    // color: isDark ? ColorConst.cardDark : ColorConst.white,
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: _tableCalendar(context: context),
                    ),
                  ),
                ),
              ],
            )
          : Column(
              children: [
                _mobileView(),
                FxBox.h20,
                Card(
                  // color: isDark ? ColorConst.cardDark : ColorConst.white,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: _tableCalendar(context: context),
                  ),
                ),
              ],
            ),
    );
  }

  Widget _mobileView() {
    return Card(
      color: isDark ? ColorConst.cardDark : ColorConst.white,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 34,
              child: FxButton(
                onPressed: () {
                  _displayTextInputDialog(
                    context: context,
                    savePressed: () {
                      _handleSaveTap(
                        date: DateTime.parse(
                          '${DateTime.now().toString().split(" ")[0]} 00:00:00.000Z',
                        ),
                      );
                    },
                    deletePressed: () {},
                  );
                },
                icon: const Icon(
                  Icons.add_circle_outline,
                  size: 15,
                ),
                text: 'Create New Event',
                borderRadius: 5,
              ),
            ),
            FxBox.h24,
            Text(
              'Drag and drop your event or click in the calendar',
              style: TextStyle(
                  color: isDark
                      ? const Color(0xFF9ca8b3)
                      : ColorConst.lightFontColor,
                  fontSize: 14),
            ),
            FxBox.h12,
            _addEventButtons(
                color: ColorConst.teal, label: 'New Event Planning'),
            FxBox.h6,
            _addEventButtons(color: ColorConst.info, label: 'Meeting'),
            FxBox.h6,
            _addEventButtons(
                color: ColorConst.warning, label: 'Generating Reports'),
            FxBox.h6,
            _addEventButtons(
                color: ColorConst.error.withOpacity(0.8),
                label: 'Create New theme'),
            FxBox.h40,
            Text(
              'Activity',
              style: TextStyle(
                  color: isDark
                      ? ColorConst.darkFontColor
                      : ColorConst.lightFontColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w600),
            ),
            FxBox.h16,
            SizedBox(
              width: double.infinity,
              height: 250,
              child: Stack(
                fit: StackFit.loose,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 1.5),
                    child: VerticalDivider(
                      endIndent: 5,
                      indent: 5,
                      color: ColorConst.lightFontColor,
                    ),
                  ),
                  Positioned(
                    left: 25,
                    right: 1,
                    child: SizedBox(
                      height: 250,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Andrei Coman magna sed porta finibus, risus posted a new article: Forget UX Rowland',
                            maxLines: 3,
                            style: TextStyle(
                              color: isDark
                                  ? ColorConst.darkFontColor
                                  : ColorConst.lightFontColor,
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'Zack Wetass, sed porta finibus, risus Chris Wallace Commented Developer Moreno',
                            style: TextStyle(
                              color: isDark
                                  ? ColorConst.darkFontColor
                                  : ColorConst.lightFontColor,
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'Zack Wetass, Chris combined Commented UX Murphy',
                            style: TextStyle(
                              color: isDark
                                  ? ColorConst.darkFontColor
                                  : ColorConst.lightFontColor,
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Icon(
                        Icons.fiber_manual_record,
                        size: 20,
                        color: ColorConst.teal,
                      ),
                      Icon(
                        Icons.fiber_manual_record,
                        size: 20,
                        color: ColorConst.teal,
                      ),
                      Icon(
                        Icons.fiber_manual_record,
                        size: 20,
                        color: ColorConst.teal,
                      ),
                    ],
                  ),
                  FxBox.h20
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _addEventButtons({required String label, required Color color}) {
    return SizedBox(
      width: double.infinity,
      height: 34,
      child: Padding(
        padding: const EdgeInsets.only(right: 8),
        child: ElevatedButton.icon(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                enabledMouseCursor: SystemMouseCursors.allScroll,
                primary: color,
                alignment: Alignment.centerLeft,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(2.0))),
            icon: const Icon(
              Icons.fiber_manual_record,
              color: ColorConst.white,
              size: 12,
            ),
            label: Text(
              label,
              style: const TextStyle(
                color: ColorConst.white,
                fontSize: 14,
              ),
            )),
      ),
    );
  }

  Widget _eventButton(
      {required List<Map<String, dynamic>> list, required DateTime date}) {
    return Positioned(
        top: 20,
        left: 0,
        right: 0,
        child: ListView.builder(
            itemCount: list.length,
            shrinkWrap: true,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.all(2),
                child: MaterialButton(
                  minWidth: 10,
                  onPressed: () {
                    eventController.text = list[index]["eventName"];
                    dropdownValue = dropDownList
                        .elementAt(list[index]["dropdownValue"] ?? 0);
                    _displayTextInputDialog(
                        context: context,
                        savePressed: () {
                          _handleSaveTap(date: date);
                        },
                        deletePressed: () {
                          list.removeAt(index);
                          eventMap[date] = list;
                          eventController.clear();
                          dropdownValue = '--Select--';
                          _calendarFormatBloc.add(CalendarFormatEvent.loading(
                              calendarFormat: _calendarFormat,
                              eventsList: eventMap));
                          Navigator.pop(context);
                        });
                  },
                  color:
                      coloredList.elementAt(list[index]["dropdownValue"] ?? 0),
                  child: Text(list[index]["eventName"],
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      style: const TextStyle(color: ColorConst.white)),
                ),
              );
            }));
  }

  void _handleSaveTap({required DateTime date}) {
    if (eventController.text.isNotEmpty) {
      bool isContains = eventMap.containsKey(date);
      if (isContains) {
        final values = eventMap[date] as List<Map<String, dynamic>>;
        values.add({
          'eventName': eventController.text.trim(),
          'dropdownValue': dropDownList.indexOf(dropdownValue)
        });
        eventController.clear();
        eventMap[date] = values;
        debugPrint(eventMap.toString());
        dropdownValue = '--Select--';
        _calendarFormatBloc.add(CalendarFormatEvent.loading(
            calendarFormat: _calendarFormat, eventsList: eventMap));
        Navigator.pop(context);
      } else {
        eventMap[date] = [
          {
            'eventName': eventController.text.trim(),
            'dropdownValue': dropDownList.indexOf(dropdownValue)
          }
        ];
        eventController.clear();
        dropdownValue = '--Select--';
        _calendarFormatBloc.add(CalendarFormatEvent.loading(
            calendarFormat: _calendarFormat, eventsList: eventMap));
        Navigator.pop(context);
      }
    }
  }

  Widget _tableCalendar({required BuildContext context}) {
    return BlocBuilder<CalendarFormatBloc, CalendarFormatState>(
      builder: (context, state) {
        return state.when(
          initial: () => const CircularProgressIndicator(),
          loaded: (calendarFormat, eventsList) {
            return TableCalendar(
              onCalendarCreated: (pageController) async {
                newpageController = pageController;
                await Future.delayed(const Duration(seconds: 2));
                currentMonthPageIndex == 0.0
                    ? currentMonthPageIndex = pageController.page!
                    : null;
              },
              currentDay: DateTime.now(),
              rowHeight: 100,
              availableGestures: AvailableGestures.none,
              daysOfWeekHeight: 40,
              startingDayOfWeek: StartingDayOfWeek.monday,
              firstDay: DateTime.utc(2015, 10, 16),
              lastDay: DateTime.utc(2030, 10, 14),
              focusedDay: DateTime.now(),
              headerVisible: true,
              calendarFormat: calendarFormat,
              daysOfWeekStyle: DaysOfWeekStyle(
                weekdayStyle: TextStyle(
                    color: isDark
                        ? ColorConst.darkFontColor
                        : ColorConst.lightFontColor),
                weekendStyle: TextStyle(
                    color: isDark
                        ? ColorConst.darkFontColor
                        : ColorConst.lightFontColor),
              ),
              calendarStyle: CalendarStyle(
                defaultDecoration: BoxDecoration(
                  border: Border.all(
                      color: isDark
                          ? ColorConst.appbarLightBG
                          : ColorConst.cardDark,
                      width: 0.5),
                ),
                cellMargin: const EdgeInsets.all(0.0),
                canMarkersOverflow: true,
                tableBorder: TableBorder.all(
                  color: isDark
                      ? const Color(0xFF454D66)
                      : const Color(0xFFE9ECEF),
                ),
              ),
              headerStyle: const HeaderStyle(
                titleCentered: true,
                formatButtonShowsNext: false,
                formatButtonVisible: false,
                leftChevronVisible: false,
                rightChevronVisible: false,
              ),
              onDaySelected: (date, events) {
                _displayTextInputDialog(
                  context: context,
                  savePressed: () {
                    _handleSaveTap(date: date);
                  },
                  deletePressed: () {},
                );
              },
              calendarBuilders: CalendarBuilders(
                headerTitleBuilder: (context, day) => Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        FxButton(
                          minWidth: 24,
                          color: isDark ? ColorConst.primary : null,
                          onPressed: () {
                            if (newpageController != null) {
                              newpageController!.previousPage(
                                duration: const Duration(microseconds: 400),
                                curve: Curves.easeInOut,
                              );
                            }
                          },
                          icon: const Icon(
                            Icons.navigate_before,
                            color: ColorConst.white,
                          ),
                          borderRadius: 3,
                        ),
                        FxBox.w2,
                        FxButton(
                          minWidth: 24,
                          color: isDark ? ColorConst.primary : null,
                          onPressed: () {
                            if (newpageController != null) {
                              newpageController!.nextPage(
                                  duration: const Duration(milliseconds: 400),
                                  curve: Curves.easeIn);
                            }
                          },
                          icon: const Icon(
                            Icons.navigate_next,
                            color: ColorConst.white,
                          ),
                          borderRadius: 3,
                        ),
                        Responsive.isWeb(context)
                            ? FxBox.w10
                            : const SizedBox.shrink(),
                        Responsive.isWeb(context)
                            ? FxButton(
                                onPressed: () {
                                  if (newpageController!.page !=
                                      currentMonthPageIndex) {
                                    if (newpageController != null) {
                                      newpageController!.jumpToPage(
                                          currentMonthPageIndex.toInt());
                                    }
                                  }
                                },
                                text: 'Today',
                                textColor: Colors.white,
                                borderRadius: 3,
                                color: ColorConst.primary.withOpacity(
                                  day.month == DateTime.now().month ? 0.8 : 1,
                                ),
                                height: 43,
                              )
                            : const SizedBox.shrink(),
                      ],
                    ),
                    Text(
                      '${months.elementAt(day.month - 1)} ${day.year}'
                          .toUpperCase(),
                      style: TextStyle(
                          fontSize: 16,
                          color: isDark
                              ? ColorConst.darkFontColor
                              : ColorConst.lightFontColor,
                          fontWeight: FontWeight.w600),
                    ),
                    Row(
                      children: [
                        FxButton(
                          onPressed: () {
                            calendarFormat != CalendarFormat.month
                                ? _calendarFormat = CalendarFormat.month
                                : null;
                            calendarFormat != CalendarFormat.month
                                ? _calendarFormatBloc.add(
                                    CalendarFormatEvent.loading(
                                      calendarFormat: CalendarFormat.month,
                                      eventsList: eventMap,
                                    ),
                                  )
                                : null;
                          },
                          text: 'Month',
                          textColor: ColorConst.darkFontColor,
                          borderRadius: 0,
                          color: calendarFormat == CalendarFormat.month
                              ? isDark
                                  ? ColorConst.primary
                                  : null
                              : ColorConst.primary.withOpacity(0.7),
                          height: 43,
                        ),
                        FxButton(
                          onPressed: () {
                            calendarFormat != CalendarFormat.week
                                ? _calendarFormat = CalendarFormat.week
                                : null;
                            calendarFormat != CalendarFormat.week
                                ? _calendarFormatBloc.add(
                                    CalendarFormatEvent.loading(
                                      calendarFormat: CalendarFormat.week,
                                      eventsList: eventMap,
                                    ),
                                  )
                                : null;
                          },
                          text: 'Week',
                          textColor: ColorConst.darkFontColor,
                          borderRadius: 0,
                          color: calendarFormat == CalendarFormat.week
                              ? isDark
                                  ? ColorConst.primary
                                  : null
                              : ColorConst.primary.withOpacity(0.7),
                          height: 43,
                        ),
                        FxButton(
                          onPressed: () {
                            calendarFormat != CalendarFormat.twoWeeks
                                ? _calendarFormat = CalendarFormat.twoWeeks
                                : null;

                            calendarFormat != CalendarFormat.twoWeeks
                                ? _calendarFormatBloc.add(
                                    CalendarFormatEvent.loading(
                                      calendarFormat: CalendarFormat.twoWeeks,
                                      eventsList: eventMap,
                                    ),
                                  )
                                : null;
                          },
                          text: '2 Week',
                          textColor: ColorConst.darkFontColor,
                          borderRadius: 0,
                          color: calendarFormat == CalendarFormat.twoWeeks
                              ? isDark
                                  ? ColorConst.primary
                                  : null
                              : ColorConst.primary.withOpacity(0.7),
                          height: 43,
                        ),
                      ],
                    ),
                  ],
                ),
                todayBuilder: (context, date, events) {
                  List<Map<String, dynamic>> list = eventsList[date] ?? [];
                  return Stack(
                    children: [
                      Container(
                        alignment: Alignment.topRight,
                        color: ColorConst.info.withOpacity(0.2),
                        padding: const EdgeInsets.all(3),
                        child: Text(
                          date.day.toString(),
                          style: TextStyle(
                              color: isDark
                                  ? ColorConst.darkFontColor
                                  : ColorConst.primary),
                        ),
                      ),
                      _eventButton(list: list, date: date)
                    ],
                  );
                },
                defaultBuilder: (context, day, focusedDay) {
                  List<Map<String, dynamic>> list = eventsList[day] ?? [];
                  return Stack(
                    children: [
                      Container(
                        alignment: Alignment.topRight,
                        padding: const EdgeInsets.all(3),
                        child: Text(
                          day.day.toString(),
                          style: TextStyle(
                            color: isDark
                                ? ColorConst.darkFontColor
                                : ColorConst.lightFontColor,
                          ),
                        ),
                      ),
                      _eventButton(list: list, date: day),
                    ],
                  );
                },
              ),
            );
          },
        );
      },
    );
  }

  Future<void> _displayTextInputDialog(
      {required BuildContext context,
      required void Function() savePressed,
      required void Function() deletePressed}) async {
    CalendarDialogBloc calendarDialogBloc = CalendarDialogBloc();
    return showDialog(
        barrierDismissible: false,
        context: context,
        builder: (context) {
          return BlocProvider(
            create: (context) => calendarDialogBloc
              ..add(CalendarDialogEvent.loading(
                  autovalidateMode: AutovalidateMode.disabled,
                  category: dropdownValue,
                  isValidate:
                      eventController.text.trim().isEmpty ? false : true)),
            child: AlertDialog(
              actionsPadding: const EdgeInsets.only(left: 20.0),
              titlePadding: EdgeInsets.zero,
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5.0))),
              title: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 8.0, top: 8.0, right: 8.0),
                    child: Row(
                      children: [
                        FxBox.w20,
                        const Text(
                          'Event',
                          style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.w600,
                              color: ColorConst.lightFontColor),
                        ),
                        const Spacer(),
                        IconButton(
                            splashRadius: 25,
                            onPressed: () {
                              eventController.clear();
                              dropdownValue = '--Select--';
                              Navigator.pop(context);
                            },
                            icon: const Icon(
                              Icons.clear,
                              color: ColorConst.lightFontColor,
                            )),
                      ],
                    ),
                  ),
                  const Divider(color: Colors.grey),
                ],
              ),
              content: BlocBuilder<CalendarDialogBloc, CalendarDialogState>(
                  builder: (context, state) {
                return state.when(
                    initial: () => const CircularProgressIndicator(),
                    loaded: (autovalidateMode, category, isValidate) {
                      return Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Event Name",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                  color: ColorConst.lightFontColor),
                            ),
                            FxBox.h10,
                            TextFormField(
                              controller: eventController,
                              autovalidateMode: autovalidateMode,
                              validator: (value) {
                                if (eventController.text.isEmpty) {
                                  return 'Please provide a valid event name';
                                } else {
                                  calendarDialogBloc.add(
                                      CalendarDialogEvent.loading(
                                          autovalidateMode:
                                              AutovalidateMode.disabled,
                                          category: dropdownValue,
                                          isValidate: true));
                                  return null;
                                }
                              },
                              decoration: InputDecoration(
                                  hintText: "Insert Event Name",
                                  hintStyle: const TextStyle(fontSize: 15),
                                  isDense: true,
                                  contentPadding: const EdgeInsets.symmetric(
                                    horizontal: 15,
                                    vertical: 10,
                                  ),
                                  suffixIcon: autovalidateMode ==
                                          AutovalidateMode.always
                                      ? Icon(
                                          Icons.error_outline,
                                          color: ColorConst.error,
                                        )
                                      : isValidate
                                          ? const Icon(
                                              Icons.done,
                                              size: 25,
                                              color: ColorConst.teal,
                                            )
                                          : null,
                                  errorBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(3),
                                      borderSide: const BorderSide(
                                          color: Colors.red, width: 0.5)),
                                  border: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          color: ColorConst.black),
                                      borderRadius: BorderRadius.circular(3))),
                            ),
                            FxBox.h20,
                            const Text(
                              "Category",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                  color: ColorConst.lightFontColor),
                            ),
                            FxBox.h10,
                            Container(
                              height: 35,
                              width: 350,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(3),
                                border: Border.all(
                                  color: ColorConst.grey800,
                                ),
                              ),
                              child: DropdownButtonHideUnderline(
                                child: ButtonTheme(
                                  alignedDropdown: true,
                                  child: DropdownButton<String>(
                                    isExpanded: true,
                                    value: category,
                                    icon: const Icon(
                                        Icons.keyboard_arrow_down_sharp),
                                    elevation: 16,
                                    style: const TextStyle(
                                        color: ColorConst.black),
                                    onChanged: (String? newValue) {
                                      dropdownValue = newValue!;
                                      calendarDialogBloc.add(
                                        CalendarDialogEvent.loading(
                                          autovalidateMode:
                                              AutovalidateMode.always,
                                          category: newValue,
                                          isValidate: eventController.text
                                                  .trim()
                                                  .isEmpty
                                              ? false
                                              : true,
                                        ),
                                      );
                                    },
                                    items: dropDownList
                                        .map<DropdownMenuItem<String>>(
                                            (String value) {
                                      return DropdownMenuItem<String>(
                                        value: value,
                                        child: Text(value),
                                      );
                                    }).toList(),
                                  ),
                                ),
                              ),
                            )
                          ]);
                    });
              }),
              actions: <Widget>[
                Row(
                  children: [
                    FxButton(
                      onPressed: deletePressed,
                      text: 'Delete',
                      textColor: ColorConst.white,
                      borderRadius: 5,
                      hoverColor: ColorConst.error,
                      color: ColorConst.error.withOpacity(0.7),
                      height: 35,
                    ),
                    const Spacer(),
                    FxButton(
                      onPressed: () {
                        eventController.clear();
                        dropdownValue = '--Select--';
                        Navigator.pop(context);
                      },
                      text: 'Close',
                      textColor: ColorConst.black,
                      borderRadius: 5,
                      hoverColor: ColorConst.white,
                      color: ColorConst.white12,
                      height: 35,
                    ),
                    FxBox.w10,
                    FxButton(
                      onPressed: () {
                        if (eventController.text.trim().isEmpty) {
                          calendarDialogBloc.add(
                            CalendarDialogEvent.loading(
                              autovalidateMode: AutovalidateMode.always,
                              category: dropdownValue,
                              isValidate: false,
                            ),
                          );
                        } else {
                          savePressed();
                        }
                      },
                      text: 'Save',
                      textColor: ColorConst.white,
                      borderRadius: 5,
                      hoverColor: ColorConst.teal,
                      color: ColorConst.teal.withOpacity(0.7),
                      height: 35,
                    ),
                  ],
                )
              ],
            ),
          );
        });
  }
}