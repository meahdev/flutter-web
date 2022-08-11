import 'package:admin_dashboard/src/routes/routes.gr.dart';
import 'package:admin_dashboard/src/utils/responsive.dart';
import 'package:flutter/material.dart';
import 'package:flutterx/flutterx.dart';
import 'package:table_calendar/table_calendar.dart';

class Calendar extends StatefulWidget {
  const Calendar({Key? key}) : super(key: key);

  @override
  State<Calendar> createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {
  TextEditingController eventController = TextEditingController();
  String dropdownValue = '--Select--';
  CalendarFormat calendarFormat = CalendarFormat.month;

  Map<DateTime, List<Map<String, dynamic>>> eventsList = {
    DateTime.parse('2022-08-13 00:00:00.000Z'): [
      {'eventName': 'Holiday', 'dropdownValue': 4}
    ],
    DateTime.parse('2022-08-04 00:00:00.000Z'): [
      {'eventName': 'Shoping', 'dropdownValue': 5}
    ],
    DateTime.parse('2022-08-17 00:00:00.000Z'): [
      {'eventName': 'summit', 'dropdownValue': 1}
    ],
    DateTime.parse('2022-08-07 00:00:00.000Z'): [
      {'eventName': 'lunch', 'dropdownValue': 3},
      {'eventName': 'Meeting', 'dropdownValue': 4}
    ],
    DateTime.parse('2022-08-26 00:00:00.000Z'): [
      {'eventName': 'Trip', 'dropdownValue': 6}
    ],
    DateTime.parse('2022-08-26 00:00:00.000Z'): [
      {'eventName': 'GD', 'dropdownValue': 0}
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
    const Color(0xFF626ED4),
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

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      controller: ScrollController(),
      child: Responsive.isWeb(context)
          ? Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(flex: 2, child: _mobileView()),
                Expanded(
                  flex: 4,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: _tableCalendar(context: context),
                  ),
                )
              ],
            )
          : Column(
              children: [
                _mobileView(),
                Padding(
                  padding: const EdgeInsets.all(12),
                  child: _tableCalendar(context: context),
                )
              ],
            ),
    );
  }

  Widget _mobileView() {
    return Container(
      color: Colors.white,
      margin: const EdgeInsets.all(8),
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 34,
            child: ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                    primary: const Color(0xFF626ed4),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4.0))),
                onPressed: () {
                  _displayTextInputDialog(
                      context: context,
                      savePressed: () {},
                      deletePressed: () {});
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
          _addEventButtons(
              color: const Color(0xFF02A499), label: 'New Event Planning'),
          FxBox.h6,
          _addEventButtons(color: const Color(0xFF38A4F8), label: 'Meeting'),
          FxBox.h6,
          _addEventButtons(
              color: const Color(0xFFF8B425), label: 'Generating Reports'),
          FxBox.h6,
          _addEventButtons(
              color: const Color(0xFFEC4561), label: 'Create New theme'),
          FxBox.h40,
          const Text(
            'Activity',
            style: TextStyle(
                color: Color(0xFF5B626B),
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
                  padding: EdgeInsets.only(left: 0),
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
    );
  }

  Widget _addEventButtons({required String label, required Color color}) {
    return SizedBox(
      width: double.infinity,
      height: 34,
      child: ElevatedButton.icon(
          onPressed: () {},
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
    );
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
                    _displayTextInputDialog(
                        context: context,
                        savePressed: () {
                          _handleSaveTap(date: date);
                        },
                        deletePressed: () {
                          setState(() {
                            list.removeAt(index);
                            eventsList[date] = list;
                            eventController.text = '';
                            dropdownValue = '--Select--';
                          });
                          Navigator.pop(context);
                        });
                  },
                  color:
                      coloredList.elementAt(list[index]["dropdownValue"] ?? 0),
                  child: Text(list[index]["eventName"],
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      style: const TextStyle(color: Colors.white)),
                ),
              );
            }));
  }

  void _handleSaveTap({required DateTime date}) {
    if (eventController.text.isNotEmpty && dropdownValue != '--Select--') {
      bool isContains = eventsList.containsKey(date);
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
        Navigator.pop(context);
      }
    }
  }

  Widget _tableCalendar({required BuildContext context}) {
    return TableCalendar(
      rowHeight: 100,
      daysOfWeekHeight: 40,
      startingDayOfWeek: StartingDayOfWeek.sunday,
      daysOfWeekStyle: const DaysOfWeekStyle(
        decoration: BoxDecoration(
          border: Border.symmetric(vertical: BorderSide(color: Colors.red)),
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
      onFormatChanged: (format) => setState(() => calendarFormat = format),
      calendarFormat: calendarFormat,
      calendarStyle: CalendarStyle(
        defaultDecoration: BoxDecoration(
          border: Border.all(color: Colors.black, width: 0.5),
        ),
        cellMargin: const EdgeInsets.all(0.0),
        canMarkersOverflow: true,
        selectedDecoration: const BoxDecoration(color: Colors.red),
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
        todayDecoration:
            const BoxDecoration(color: Colors.orange, shape: BoxShape.circle),
      ),
      headerStyle: const HeaderStyle(
          titleCentered: true,
          formatButtonShowsNext: false,
          formatButtonVisible: false,
          leftChevronIcon: Icon(
            Icons.chevron_left,
            color: Colors.black,
            size: 30,
          ),
          rightChevronIcon: Icon(
            Icons.chevron_right,
            color: Colors.black,
            size: 30,
          ),
          leftChevronPadding: EdgeInsets.all(8),
          rightChevronPadding: EdgeInsets.all(8),
          leftChevronMargin: EdgeInsets.all(2),
          rightChevronMargin: EdgeInsets.all(2)
          // formatButtonDecoration: BoxDecoration(
          //   color: Colors.orange,
          //   borderRadius: BorderRadius.circular(20.0),
          // ),
          // formatButtonTextStyle: TextStyle(color: Colors.black),
          ),
      onDaySelected: (date, events) {
        _displayTextInputDialog(
            context: context,
            savePressed: () {
              _handleSaveTap(date: date);
            },
            deletePressed: () {});
      },
      calendarBuilders: CalendarBuilders(
          headerTitleBuilder: (context, day) => Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      // MaterialButton(
                      //     onPressed: () {},
                      //     color: const Color(0xFF626DE4),
                      //     visualDensity:
                      //         VisualDensity.compact,
                      //     shape:
                      //         const RoundedRectangleBorder(
                      //             borderRadius:
                      //                 BorderRadius.only(
                      //                     topLeft: Radius
                      //                         .circular(5),
                      //                     bottomLeft: Radius
                      //                         .circular(
                      //                             5))),
                      //     minWidth: 15,
                      //     height: 43,
                      //     child: const Icon(
                      //       Icons.navigate_before,
                      //       color: Colors.white,
                      //     )),
                      // MaterialButton(
                      //     color: const Color(0xFF626DE4),
                      //     visualDensity:
                      //         VisualDensity.compact,
                      //     shape:
                      //         const RoundedRectangleBorder(
                      //             borderRadius:
                      //                 BorderRadius.only(
                      //                     topRight: Radius
                      //                         .circular(5),
                      //                     bottomRight:
                      //                         Radius
                      //                             .circular(
                      //                                 5))),
                      //     minWidth: 15,
                      //     height: 43,
                      //     onPressed: () {},
                      //     child: const Icon(
                      //       Icons.navigate_next,
                      //       color: Colors.white,
                      //     )),
                      // FxBox.w10,
                      Responsive.isWeb(context)
                          ? MaterialButton(
                              onPressed: () {},
                              color: const Color(0xFF626DE4).withOpacity(
                                  day.month == DateTime.now().month ? 0.5 : 1),
                              visualDensity: VisualDensity.compact,
                              minWidth: 15,
                              // mouseCursor: SystemMouseCursors.allScroll,
                              height: 43,
                              child: const Text(
                                ' Today ',
                                style: TextStyle(
                                    fontSize: 14, color: Colors.white),
                              ))
                          : const SizedBox.shrink(),
                    ],
                  ),
                  Text(
                    '${months.elementAt(day.month - 1)} ${day.year}'
                        .toUpperCase(),
                    style: const TextStyle(
                        fontSize: 16,
                        color: Color(0xFF5B626B),
                        fontWeight: FontWeight.w600),
                  ),
                  Row(
                    children: [
                      MaterialButton(
                          onPressed: () {
                            calendarFormat != CalendarFormat.month
                                ? setState(() {
                                    calendarFormat = CalendarFormat.month;
                                  })
                                : null;
                          },
                          color: calendarFormat != CalendarFormat.month
                              ? const Color(0xFF626ED4)
                              : const Color(0xFF4E58AA),
                          visualDensity: VisualDensity.compact,
                          shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(5),
                                  bottomLeft: Radius.circular(5))),
                          minWidth: 15,
                          height: 43,
                          child: const Text(
                            ' Month ',
                            style: TextStyle(fontSize: 14, color: Colors.white),
                          )),
                      MaterialButton(
                          color: calendarFormat != CalendarFormat.week
                              ? const Color(0xFF626DE4)
                              : const Color(0xFF4E58AA),
                          minWidth: 15,
                          height: 43,
                          visualDensity: VisualDensity.compact,
                          shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(Radius.zero)),
                          onPressed: () {
                            calendarFormat != CalendarFormat.week
                                ? setState(() {
                                    calendarFormat = CalendarFormat.week;
                                  })
                                : null;
                          },
                          child: const Text(
                            ' Week ',
                            style: TextStyle(fontSize: 14, color: Colors.white),
                          )),
                      MaterialButton(
                          color: calendarFormat != CalendarFormat.twoWeeks
                              ? const Color(0xFF626DE4)
                              : const Color(0xFF4E58AA),
                          minWidth: 15,
                          height: 43,
                          visualDensity: VisualDensity.compact,
                          shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(5),
                                  bottomRight: Radius.circular(5))),
                          onPressed: () {
                            calendarFormat != CalendarFormat.twoWeeks
                                ? setState(() {
                                    calendarFormat = CalendarFormat.twoWeeks;
                                  })
                                : null;
                          },
                          child: const Text(
                            ' 2 Week ',
                            style: TextStyle(fontSize: 14, color: Colors.white),
                          )),
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
                    padding: const EdgeInsets.all(3),
                    decoration: const BoxDecoration(
                      color: Color(0xFFd7edfe),
                    ),
                    child: Text(
                      '${date.day} ',
                      style: const TextStyle(color: Color(0xFF226295)),
                    )),
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
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: const Color(0xFFe9ecef), width: 0.5)),
                    child: Text(
                      '${day.day}',
                      style: const TextStyle(color: Colors.black),
                    )),
                _eventButton(list: list, date: day),
              ],
            );
          }),
    );
  }

  Future<void> _displayTextInputDialog(
      {required BuildContext context,
      required void Function() savePressed,
      required void Function() deletePressed}) async {
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
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF5B626B)),
                    ),
                    IconButton(
                        splashRadius: 25,
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
                  style: TextStyle(
                      fontWeight: FontWeight.w600, color: Color(0xFF5B626B)),
                ),
                FxBox.h10,
                TextField(
                  controller: eventController,
                  decoration: InputDecoration(
                      hintText: "Insert Event Name",
                      hintStyle: const TextStyle(fontSize: 15),
                      constraints: const BoxConstraints(maxHeight: 35),
                      contentPadding: const EdgeInsets.all(8),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(3))),
                ),
                FxBox.h20,
                const Text(
                  "Category",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                FxBox.h10,
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  height: 35,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3),
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
                        onPressed: deletePressed,
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
}
