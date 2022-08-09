import 'package:admin_dashboard/src/utils/responsive.dart';
import 'package:flutter/material.dart';
import 'package:flutterx/flutterx.dart';

class Calendar extends StatefulWidget {
  const Calendar({Key? key}) : super(key: key);

  @override
  State<Calendar> createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Responsive.isWeb(context)
        ? Container(
            color: Colors.red,
            height: 150,
            width: 100,
          )
        : _mobileView();
  }

  Widget _mobileView() {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            // color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width - 50,
                  height: 34,
                  child: ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                          primary: const Color(0xFF626ed4),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4.0))),
                      onPressed: () {
                        _displayTextInputDialog(context);
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
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width - 100,
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
          )
        ],
      ),
    );
  }

  Widget _eventButtons(
      {required String label,
      required Color color,
      void Function()? onPressed}) {
    return SizedBox(
      width: MediaQuery.of(context).size.width - 80,
      height: 34,
      child: MouseRegion(
        cursor: SystemMouseCursors.zoomIn,
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

  Future<void> _displayTextInputDialog(BuildContext context) async {
    String dropdownValue = '--Select--';
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
                        onPressed: () => Navigator.pop(context),
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
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.grey)),
                  width: MediaQuery.of(context).size.width,
                  child: StatefulBuilder(
                    builder: (context, setState) {
                      return DropdownButtonHideUnderline(
                        child: DropdownButton<String>(
                          value: dropdownValue,
                          icon: const Icon(Icons.keyboard_arrow_down_sharp),
                          elevation: 16,
                          style: const TextStyle(color: Colors.black),
                          underline: Container(
                            height: 2,
                            color: Colors.black,
                          ),
                          onChanged: (String? newValue) {
                            setState(() {
                              dropdownValue = newValue!;
                            });
                          },
                          items: <String>[
                            '--Select--',
                            'Danger',
                            'Success',
                            'Primary',
                            'Info',
                            'Dark',
                            'Warning'
                          ].map<DropdownMenuItem<String>>((String value) {
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
                        onPressed: () {},
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
                        onPressed: () => Navigator.pop(context),
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
                        onPressed: () {},
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
