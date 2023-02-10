import 'package:admin_dashboard/src/constant/icons.dart';
import 'package:admin_dashboard/src/widget/svg_icon.dart';
import 'package:admin_dashboard/src/widget/textformfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutterx/flutterx.dart';
import 'package:intl/intl.dart';

class DatePicker extends StatefulWidget {
  const DatePicker({super.key});

  @override
  State<DatePicker> createState() => _DatePickerState();
}

class _DatePickerState extends State<DatePicker> {
  final TextEditingController dateNtimeController = TextEditingController();
  final TextEditingController dayController = TextEditingController();
  final TextEditingController monthController = TextEditingController();
  final TextEditingController ddmmyyyy = TextEditingController();
  final TextEditingController MMMMddyyyy = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: SizedBox(
                height: 300,
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Basic',
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Divider(),
                        FxBox.h16,
                        _textField(
                            'Select Date', 'yearWithday', dateNtimeController),
                        FxBox.h32,
                        _textField('Select Day', 'day', dayController),
                        FxBox.h32,
                        _textField('Select Month', 'month', monthController),
                        FxBox.h32,
                      ],
                    ),
                  ),
                ),
              ),
            ),
            FxBox.w16,
            Expanded(
              child: SizedBox(
                height: 300,
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Date Formate',
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Divider(),
                        FxBox.h16,
                        _textField('eg .01/01/2015', 'ddmmyyyy', ddmmyyyy),
                        FxBox.h32,
                        _textField('eg .January,02,2015', 'MMMMddyyyy', MMMMddyyyy),
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        )
      ],
    );
  }

  Widget _textField(
      String hintText, String type, TextEditingController controller) {
    return SizedBox(
      height: 35,
      child: CustomTextField(
        hintText: hintText,
        readOnly: true,
        suffixIcon: const Padding(
          padding: EdgeInsets.all(8.0),
          child: SvgIcon(
            icon: IconlyBroken.calendar,
          ),
        ),
        controller: controller,
        inputFormatters: [
          LengthLimitingTextInputFormatter(10),
          FilteringTextInputFormatter.digitsOnly,
        ],
        onTap: () {
          _chooseDate(
              context,
              type == 'yearWithday'
                  ? 'yearWithday'
                  : type == 'day'
                      ? 'day'
                      : type == 'ddmmyyyy'
                          ? 'ddmmyyyy'
                          : type == 'MMMMddyyyy'
                              ? 'MMMMddyyyy'
                              : '');
        },
        keyboardType: TextInputType.phone,
        border: const OutlineInputBorder(),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 12,
          vertical: 6,
        ),
      ),
    );
  }

  Future<DateTime> _chooseDate(BuildContext context, String type) async {
    final DateTime? selecteTime = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime(2030),
    );

    if (selecteTime == null) {
      return DateTime.now();
    } else {
      type == 'yearWithday'
          ? dateNtimeController.text = selecteTime.toString()
          : type == 'day'
              ? dayController.text = DateFormat('EEEE').format(selecteTime)
              : type == 'month'
                  ? monthController.text =
                      DateFormat('MMMM').format(selecteTime)
                  : type == 'ddmmyyyy'
                      ? ddmmyyyy.text =
                          DateFormat('dd/MM/yyyy').format(selecteTime)
                      : MMMMddyyyy.text =
                          DateFormat('MMMM,dd,yyyy').format(selecteTime);
      return selecteTime;
    }
  }
}
