import 'dart:developer';

import 'package:admin_dashboard/src/utils/responsive.dart';
import 'package:flutter/material.dart';
import 'package:flutterx/flutterx.dart';
import 'package:table_calendar/table_calendar.dart';

class Calendar extends StatefulWidget {
  const Calendar({Key? key}) : super(key: key);

  @override
  State<Calendar> createState() => _CalendarState();
}

//     DateTime.parse('22022-08-07 00:00:00.000Z'): [
//       {'eventName': 'lunch', 'dropdownValue': 'Primary'},
//       {'eventName': 'get lunch', 'dropdownValue': 'Primary'}
//     ]

class _CalendarState extends State<Calendar> {
  TextEditingController eventController = TextEditingController();
  String dropdownValue = '--Select--';
  CalendarFormat calendarFormat = CalendarFormat.month;

  Map<DateTime, List<Map<String, dynamic>>> eventsList = {
    DateTime.parse('2022-08-13 00:00:00.000Z'): [
      {'eventName': 'Holiday', 'dropdownValue': 4}
    ],
    DateTime.parse('2022-08-07 00:00:00.000Z'): [
      {'eventName': 'lunch', 'dropdownValue': 3},
      {'eventName': 'get lunch', 'dropdownValue': 4}
    ],
    DateTime.parse('2022-08-26 00:00:00.000Z'): [
      {'eventName': 'Trip', 'dropdownValue': 6}
    ]
  };

  List<String> dropDownList = [
    '--Select--',
    'Danger',
    'Success',
    'Primary',
    'Info',
    'Dark',
    'Warning'
  ];

  List<Color> coloredList = [
    Colors.white,
    const Color(0xFFec4561),
    const Color(0xFF02A499),
    const Color(0xFF626ED4),
    const Color(0xFF38A4F8),
    const Color(0xFF343A40),
    const Color(0xFFF8B425),
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
    'Dec',
  ];

  Map<String, dynamic> encodeMap(Map<DateTime, dynamic> map) {
    Map<String, dynamic> newMap = {};
    map.forEach((key, value) {
      newMap[key.toString()] = map[key];
    });
    return newMap;
  }

  Map<DateTime, dynamic> decodeMap(Map<String, dynamic> map) {
    Map<DateTime, dynamic> newMap = {};
    map.forEach((key, value) {
      newMap[DateTime.parse(key)] = map[key];
    });
    return newMap;
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      controller: ScrollController(),
      child: Responsive.isWeb(context)
          ? SizedBox(
              child: Row(
                children: [
                  Expanded(flex: 2, child: _mobileView()),
                  Expanded(
                    flex: 4,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        TableCalendar(
                          rowHeight: 100,
                          daysOfWeekHeight: 40,
                          startingDayOfWeek: StartingDayOfWeek.sunday,
                          daysOfWeekStyle: const DaysOfWeekStyle(
                            decoration: BoxDecoration(
                              border: Border.symmetric(
                                  vertical: BorderSide(color: Colors.red)),
                            ),
                            weekdayStyle: TextStyle(color: Color(0xFF4F4F4F)),
                            weekendStyle: TextStyle(color: Color(0xFF6A6A6A)),
                          ),
                          firstDay: DateTime.utc(2010, 10, 16),
                          lastDay: DateTime.utc(2030, 3, 14),
                          focusedDay: DateTime.now(),
                          headerVisible: true,
                          availableCalendarFormats: const {
                            CalendarFormat.month: 'Month',
                            CalendarFormat.week: 'Week',
                            CalendarFormat.twoWeeks: 'twoWeeks',
                          },
                          onFormatChanged: (format) =>
                              setState(() => calendarFormat = format),
                          calendarFormat: calendarFormat,
                          calendarStyle: CalendarStyle(
                            defaultDecoration: BoxDecoration(
                              border:
                                  Border.all(color: Colors.black, width: 0.5),
                            ),
                            cellMargin: const EdgeInsets.all(0.0),
                            canMarkersOverflow: true,
                            selectedDecoration:
                                const BoxDecoration(color: Colors.red),
                            todayTextStyle: const TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color(0xFFFAFAFA),
                                fontSize: 18.0),
                            tableBorder: const TableBorder(
                              top: BorderSide(color: Color(0xFFe9ecef)),
                              bottom: BorderSide(color: Color(0xFFe9ecef)),
                              left: BorderSide(color: Color(0xFFe9ecef)),
                              right: BorderSide(color: Color(0xFFe9ecef)),
                            ),
                            todayDecoration: const BoxDecoration(
                                color: Colors.orange, shape: BoxShape.circle),
                          ),
                          headerStyle: HeaderStyle(
                            titleCentered: true,
                            formatButtonShowsNext: false,
                            formatButtonDecoration: BoxDecoration(
                              color: Colors.orange,
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            formatButtonTextStyle:
                                const TextStyle(color: Colors.black),
                          ),
                          onDaySelected: (date, events) {
                            _displayTextInputDialog(context, () {
                              _handleSaveTap(date: date);
                            });
                          },
                          calendarBuilders: CalendarBuilders(
                              headerTitleBuilder: (context, day) => Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          MaterialButton(
                                              onPressed: () {},
                                              color: const Color(0xFF626DE4),
                                              visualDensity:
                                                  VisualDensity.compact,
                                              shape:
                                                  const RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.only(
                                                              topLeft: Radius
                                                                  .circular(5),
                                                              bottomLeft: Radius
                                                                  .circular(
                                                                      5))),
                                              minWidth: 15,
                                              height: 43,
                                              child: const Icon(
                                                Icons.navigate_before,
                                                color: Colors.white,
                                              )),
                                          MaterialButton(
                                              color: const Color(0xFF626DE4),
                                              visualDensity:
                                                  VisualDensity.compact,
                                              shape:
                                                  const RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.only(
                                                              topRight: Radius
                                                                  .circular(5),
                                                              bottomRight:
                                                                  Radius
                                                                      .circular(
                                                                          5))),
                                              minWidth: 15,
                                              height: 43,
                                              onPressed: () {},
                                              child: const Icon(
                                                Icons.navigate_next,
                                                color: Colors.white,
                                              )),
                                          FxBox.w10,
                                          MaterialButton(
                                              onPressed: () {},
                                              color: const Color(0xFF626DE4)
                                                  .withOpacity(day.month ==
                                                          DateTime.now().month
                                                      ? 0.5
                                                      : 1),
                                              visualDensity:
                                                  VisualDensity.compact,
                                              minWidth: 15,
                                              height: 43,
                                              child: const Text(
                                                ' Today ',
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    color: Colors.white),
                                              )),
                                        ],
                                      ),
                                      Text(
                                        '${months.elementAt(day.month - 1)} ${day.year}'
                                            .toUpperCase(),
                                        style: const TextStyle(
                                            fontSize: 16,
                                            color: Color(0xFF5B626B),
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Row(
                                        children: [
                                          MaterialButton(
                                              onPressed: () {
                                                calendarFormat !=
                                                        CalendarFormat.month
                                                    ? setState(() {
                                                        calendarFormat =
                                                            CalendarFormat
                                                                .month;
                                                      })
                                                    : null;
                                              },
                                              color: calendarFormat !=
                                                      CalendarFormat.month
                                                  ? const Color(0xFF626DE4)
                                                  : const Color(0xFF4E58AA),
                                              visualDensity:
                                                  VisualDensity.compact,
                                              shape:
                                                  const RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.only(
                                                              topLeft: Radius
                                                                  .circular(5),
                                                              bottomLeft: Radius
                                                                  .circular(
                                                                      5))),
                                              minWidth: 15,
                                              height: 43,
                                              child: const Text(
                                                ' Month ',
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    color: Colors.white),
                                              )),
                                          MaterialButton(
                                              color: calendarFormat !=
                                                      CalendarFormat.week
                                                  ? const Color(0xFF626DE4)
                                                  : const Color(0xFF4E58AA),
                                              minWidth: 15,
                                              height: 43,
                                              visualDensity:
                                                  VisualDensity.compact,
                                              shape:
                                                  const RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.all(
                                                              Radius.zero)),
                                              onPressed: () {
                                                calendarFormat !=
                                                        CalendarFormat.week
                                                    ? setState(() {
                                                        calendarFormat =
                                                            CalendarFormat.week;
                                                      })
                                                    : null;
                                              },
                                              child: const Text(
                                                ' Week ',
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    color: Colors.white),
                                              )),
                                          MaterialButton(
                                              color: calendarFormat !=
                                                      CalendarFormat.twoWeeks
                                                  ? const Color(0xFF626DE4)
                                                  : const Color(0xFF4E58AA),
                                              minWidth: 15,
                                              height: 43,
                                              visualDensity:
                                                  VisualDensity.compact,
                                              shape:
                                                  const RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.only(
                                                              topRight: Radius
                                                                  .circular(5),
                                                              bottomRight:
                                                                  Radius
                                                                      .circular(
                                                                          5))),
                                              onPressed: () {
                                                calendarFormat !=
                                                        CalendarFormat.twoWeeks
                                                    ? setState(() {
                                                        calendarFormat =
                                                            CalendarFormat
                                                                .twoWeeks;
                                                      })
                                                    : null;
                                              },
                                              child: const Text(
                                                ' 2 Week ',
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    color: Colors.white),
                                              )),
                                        ],
                                      ),
                                    ],
                                  ),
                              todayBuilder: (context, date, events) {
                                List<Map<String, dynamic>> list =
                                    eventsList[date] ?? [];
                                return Stack(
                                  children: [
                                    Container(
                                        alignment: Alignment.topRight,
                                        padding: const EdgeInsets.all(3),
                                        decoration: const BoxDecoration(
                                          color: Color(0xFFd7edfe),
                                        ),
                                        child: Text(
                                          '${date.day} ',
                                          style: const TextStyle(
                                              color: Color(0xFF226295)),
                                        )),
                                    _eventButton(list: list, date: date)
                                  ],
                                );
                              },
                              defaultBuilder: (context, day, focusedDay) {
                                log(eventsList[day].toString());
                                List<Map<String, dynamic>> list =
                                    eventsList[day] ?? [];
                                return Stack(
                                  children: [
                                    Container(
                                        alignment: Alignment.topRight,
                                        padding: const EdgeInsets.all(3),
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                                color: const Color(0xFFe9ecef),
                                                width: 0.5)),
                                        child: Text(
                                          '${day.day}',
                                          style: const TextStyle(
                                              color: Colors.black),
                                        )),
                                    _eventButton(list: list, date: day),
                                  ],
                                );
                              }),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )
          : _mobileView(),
    );
  }

  Widget _mobileView() {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Container(
        // width: MediaQuery.of(context).size.width,
        // height: MediaQuery.of(context).size.height,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                // width: MediaQuery.of(context).size.width - 70,
                width: MediaQuery.of(context).size.width,
                height: 34,
                child: ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                        primary: const Color(0xFF626ed4),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4.0))),
                    onPressed: () {
                      _displayTextInputDialog(context, () {});
                    },
                    icon: const Icon(
                      Icons.add_circle_outline,
                      color: Colors.white,
                      size: 15,
                    ),
                    label: const Text(
                      'Create New Event',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    )),
              ),
              FxBox.h24,
              const Text(
                'Drag and drop your event or click in the calendar',
                style: TextStyle(color: Color(0xFF707070), fontSize: 14),
              ),
              FxBox.h12,
              _eventButtons(
                  color: const Color(0xFF02A499),
                  label: 'New Event Planning',
                  onPressed: () {}),
              FxBox.h6,
              _eventButtons(
                  color: const Color(0xFF38A4F8),
                  label: 'Meeting',
                  onPressed: () {}),
              FxBox.h6,
              _eventButtons(
                  color: const Color(0xFFF8B425),
                  label: 'Generating Reports',
                  onPressed: () {}),
              FxBox.h6,
              _eventButtons(
                  color: const Color(0xFFEC4561),
                  label: 'Create New theme',
                  onPressed: () {}),
              FxBox.h40,
              const Text(
                'Activity',
                style: TextStyle(
                    color: Color(0xFF5B626B),
                    fontSize: 16,
                    fontWeight: FontWeight.w800),
              ),
              FxBox.h16,
              SizedBox(
                width: double.infinity,
                height: 250,
                child: Stack(
                  fit: StackFit.loose,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 2.0),
                      child: VerticalDivider(
                        endIndent: 5,
                        indent: 5,
                        color: Color(0xFF5B626B),
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
                          children: const [
                            Text(
                              'Andrei Coman magna sed porta finibus, risus posted a new article: Forget UX Rowland',
                              maxLines: 3,
                              style: TextStyle(
                                  color: Color(0xFF5B626B),
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'Zack Wetass, sed porta finibus, risus Chris Wallace Commented Developer Moreno',
                              style: TextStyle(
                                  color: Color(0xFF5B626B),
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'Zack Wetass, Chris combined Commented UX Murphy',
                              style: TextStyle(
                                  color: Color(0xFF5B626B),
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold),
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
                          color: Color(0xFF02A499),
                        ),
                        Icon(
                          Icons.fiber_manual_record,
                          size: 20,
                          color: Color(0xFF02A499),
                        ),
                        Icon(
                          Icons.fiber_manual_record,
                          size: 20,
                          color: Color(0xFF02A499),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _eventButtons(
      {required String label,
      required Color color,
      void Function()? onPressed}) {
    return SizedBox(
      // width: MediaQuery.of(context).size.width,
      width: double.infinity,
      height: 34,
      child: MouseRegion(
        cursor: SystemMouseCursors.move,
        child: ElevatedButton.icon(
            onPressed: onPressed,
            style: ElevatedButton.styleFrom(
                primary: color,
                alignment: Alignment.centerLeft,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(2.0))),
            icon: const Icon(
              Icons.fiber_manual_record,
              color: Colors.white,
              size: 12,
            ),
            label: Text(
              label,
              style: const TextStyle(color: Colors.white, fontSize: 14),
            )),
      ),
    );
  }

  Future<void> _displayTextInputDialog(
      BuildContext context, void Function()? savePressed) async {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(5.0))),
            title: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Event',
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                    ),
                    IconButton(
                        onPressed: () {
                          eventController.text = '';
                          dropdownValue = '--Select--';
                          setState(() {});
                          Navigator.pop(context);
                        },
                        icon: const Icon(Icons.clear))
                  ],
                ),
                const Divider(color: Colors.grey),
              ],
            ),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Event Name",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                FxBox.h10,
                SizedBox(
                  height: 40,
                  child: TextField(
                    controller: eventController,
                    decoration: InputDecoration(
                        hintText: "Insert Event Name",
                        contentPadding: const EdgeInsets.all(8),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10))),
                  ),
                ),
                FxBox.h20,
                const Text(
                  "Category",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                FxBox.h10,
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  height: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.grey)),
                  width: 350,
                  child: StatefulBuilder(
                    builder: (context, setState) {
                      return DropdownButtonHideUnderline(
                        child: DropdownButton<String>(
                          value: dropdownValue,
                          icon: const Icon(Icons.keyboard_arrow_down_sharp),
                          elevation: 16,
                          style: const TextStyle(color: Colors.black),
                          onChanged: (String? newValue) {
                            setState(() {
                              dropdownValue = newValue!;
                            });
                          },
                          items: dropDownList
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                        ),
                      );
                    },
                  ),
                )
              ],
            ),
            actions: <Widget>[
              Row(
                children: [
                  SizedBox(
                    height: 40,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(6.0)),
                            primary: Colors.red,
                            elevation: 0),
                        onPressed: () {
                          eventController.text = '';
                          dropdownValue = '--Select--';
                          setState(() {});
                          Navigator.pop(context);
                        },
                        child: const Text("Delete",
                            style:
                                TextStyle(color: Colors.white, fontSize: 14))),
                  ),
                  const Spacer(),
                  SizedBox(
                    height: 40,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(6.0)),
                            primary: Colors.grey.shade200,
                            elevation: 0),
                        onPressed: () {
                          eventController.text = '';
                          dropdownValue = '--Select--';
                          setState(() {});
                          Navigator.pop(context);
                        },
                        child: const Text(
                          "Close",
                          style: TextStyle(color: Colors.black),
                        )),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  SizedBox(
                    height: 40,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(6.0)),
                            primary: Colors.teal,
                            elevation: 0),
                        onPressed: savePressed,
                        child: const Text("Save",
                            style:
                                TextStyle(color: Colors.white, fontSize: 14))),
                  )
                ],
              )
            ],
          );
        });
  }

  Widget _eventButton(
      {required List<Map<String, dynamic>> list, required DateTime date}) {
    return Positioned(
        top: 20,
        left: 0,
        right: 0,
        bottom: 0,
        child: ListView.builder(
            itemCount: list.length,
            shrinkWrap: true,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.all(2),
                child: MaterialButton(
                  minWidth: 10,
                  onPressed: () {
                    setState(() {
                      eventController.text = list[index]["eventName"];
                      dropdownValue = dropDownList
                          .elementAt(list[index]["dropdownValue"] ?? 0);
                    });
                    _displayTextInputDialog(context, () {
                      _handleSaveTap(date: date);
                    });
                  },
                  color:
                      coloredList.elementAt(list[index]["dropdownValue"] ?? 0),
                  child: Text(list[index]["eventName"],
                      style: const TextStyle(color: Colors.white)),
                ),
              );
            }));
  }

  void _handleSaveTap({required DateTime date}) {
    if (eventController.text.isNotEmpty) {
      bool isContains = eventsList.containsKey(date);
      log('isContains ==== $isContains');
      if (isContains) {
        final values = eventsList[date] as List<Map<String, dynamic>>;
        values.add({
          'eventName': eventController.text.trim(),
          'dropdownValue':
              dropDownList.indexWhere((element) => element == dropdownValue)
        });
        eventsList[date] = values;
        eventController.text = '';
        dropdownValue = '--Select--';
        setState(() {});
        log(eventsList.toString());
        Navigator.pop(context);
      } else {
        eventsList[date] = [
          {
            'eventName': eventController.text.trim(),
            'dropdownValue':
                dropDownList.indexWhere((element) => element == dropdownValue)
          }
        ];
        eventController.text = '';
        dropdownValue = '--Select--';
        setState(() {});
        log(eventsList.toString());
        Navigator.pop(context);
      }
    }
  }
}
