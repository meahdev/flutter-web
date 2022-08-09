import 'package:admin_dashboard/src/constant/color.dart';
import 'package:admin_dashboard/src/provider/form_counter/bloc/form_textfield_counter_bloc.dart';
import 'package:admin_dashboard/src/provider/form_dropdown/bloc/form_dropdown_bloc.dart';
import 'package:admin_dashboard/src/widget/textformfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:flutterx/flutterx.dart';

class ElementsForm extends StatefulWidget {
  const ElementsForm({Key? key}) : super(key: key);

  @override
  State<ElementsForm> createState() => _ElementsFormState();
}

class _ElementsFormState extends State<ElementsForm> {
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _numberController = TextEditingController();
  final TextEditingController _dateNtimeController = TextEditingController();

  List<String> headingList = ['Text', 'Search', 'Email', 'URL', 'Telephone'];
  List<String> hintList = [
    'Artisanal kale',
    'How do I shoot web',
    'flutter@example.com',
    'https://flutter.com',
    '1-(555)-555-5555'
  ];
  List<String> dropDownList = ['One', 'Two', 'Three', 'Four'];
  String dropDownValue = 'One';

  @override
  void initState() {
    _passwordController.text = '1234567';
    _numberController.text = '42';
    super.initState();
  }

  @override
  void dispose() {
    _passwordController.dispose();
    _numberController.dispose();
    super.dispose();
  }

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
              'Textual inputs',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
            FxBox.h24,
            _textFieldNormal(headingList, hintList),
            FxBox.h8,
            _passwordTextField(),
            FxBox.h16,
            _numberTextField(),
            FxBox.h16,
            _dateNtimeTextField(),
            FxBox.h16,
            _colorTextField(),
            FxBox.h16,
            _selectTextField(),
          ],
        ),
      ),
    );
  }

  Widget _textFieldNormal(List<String> headingList, List<String> hintList) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: headingList.length,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Row(
            children: [
              Expanded(
                flex: 1,
                child: Text(
                  headingList[index],
                  style: const TextStyle(fontWeight: FontWeight.w600),
                ),
              ),
              Flexible(
                flex: 8,
                child: SizedBox(
                  height: 35,
                  child: CustomTextField(
                    border: const OutlineInputBorder(),
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 6,
                    ),
                    hintText: hintList[index],
                  ),
                ),
              )
            ],
          ),
        );
      },
    );
  }

  Widget _passwordTextField() {
    return Row(
      children: [
        const Expanded(
          flex: 1,
          child: Text(
            'Password',
            style: TextStyle(fontWeight: FontWeight.w600),
          ),
        ),
        Flexible(
          flex: 8,
          child: SizedBox(
            height: 35,
            child: CustomTextField(
              obscureText: true,
              controller: _passwordController,
              border: const OutlineInputBorder(),
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 12,
                vertical: 6,
              ),
            ),
          ),
        )
      ],
    );
  }

  Widget _numberTextField() {
    return Row(
      children: [
        const Expanded(
          flex: 1,
          child: Text(
            'Number',
            style: TextStyle(fontWeight: FontWeight.w600),
          ),
        ),
        Flexible(
          flex: 8,
          child: BlocProvider(
            create: (context) => formTextfieldCounterBloc,
            child: BlocBuilder<FormTextfieldCounterBloc,
                FormTextfieldCounterState>(
              builder: (context, state) {
                state.when(
                    initial: () {},
                    success: (value) {
                      _numberController.text = value.toString();
                    });
                return SizedBox(
                    height: 35,
                    child: CustomTextField(
                      controller: _numberController,
                      border: const OutlineInputBorder(),
                      contentPadding:
                          const EdgeInsets.fromLTRB(12.0, 6.0, 0.0, 6.0),
                      suffixIcon: Column(
                        children: [
                          Expanded(
                            child: InkWell(
                              onTap: () {
                                formTextfieldCounterBloc.add(
                                    FormTextfieldCounterEvent.increment(
                                        int.parse(_numberController.text)));
                              },
                              child: const Icon(
                                Icons.arrow_drop_up_sharp,
                              ),
                            ),
                          ),
                          Expanded(
                            child: InkWell(
                              onTap: () {
                                formTextfieldCounterBloc.add(
                                    FormTextfieldCounterEvent.decrement(
                                        int.parse(_numberController.text)));
                              },
                              child: const Icon(
                                Icons.arrow_drop_down_sharp,
                              ),
                            ),
                          )
                        ],
                      ),
                    ));
              },
            ),
          ),
        )
      ],
    );
  }

  Widget _dateNtimeTextField() {
    return Row(
      children: [
        const Expanded(
          flex: 1,
          child: Text(
            'Date and time',
            style: TextStyle(fontWeight: FontWeight.w600),
          ),
        ),
        Flexible(
          flex: 8,
          child: SizedBox(
            height: 35,
            child: CustomTextField(
              controller: _dateNtimeController,
              inputFormatters: [
                LengthLimitingTextInputFormatter(10),
                FilteringTextInputFormatter.digitsOnly,
              ],
              onChanged: (value) {},
              keyboardType: TextInputType.phone,
              border: const OutlineInputBorder(),
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 12,
                vertical: 6,
              ),
            ),
          ),
        )
      ],
    );
  }

  Widget _colorTextField() {
    return Row(
      children: [
        const Expanded(
          flex: 1,
          child: Text(
            'Color',
            style: TextStyle(fontWeight: FontWeight.w600),
          ),
        ),
        Flexible(
          flex: 8,
          child: InkWell(
            onTap: () {
              FxAlert.showAlert(
                context: context,
                title: 'Pick Color',
                content: ColorPicker(
                  portraitOnly: true,
                  pickerColor: Colors.red,
                  onColorChanged: (value) {},
                ),
                actions: [],
              );
            },
            child: Container(
                decoration: BoxDecoration(
                    border: Border.all(
                      color: Theme.of(context)
                          .colorScheme
                          .secondary
                          .withOpacity(0.5),
                    ),
                    borderRadius: BorderRadius.circular(4)),
                height: 35,
                padding:
                    const EdgeInsets.symmetric(vertical: 6.0, horizontal: 12.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.red,
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(4)),
                )),
          ),
        )
      ],
    );
  }

  Widget _selectTextField() {
    return Row(
      children: [
        const Expanded(
          flex: 1,
          child: Text(
            'Select',
            style: TextStyle(fontWeight: FontWeight.w600),
          ),
        ),
        Flexible(
          flex: 8,
          child: Container(
            height: 35,
            decoration: BoxDecoration(
                border: Border.all(
                  color:
                      Theme.of(context).colorScheme.secondary.withOpacity(0.5),
                ),
                borderRadius: BorderRadius.circular(4)),
            padding:
                const EdgeInsets.symmetric(vertical: 6.0, horizontal: 12.0),
            child: BlocProvider(
              create: (context) => formDropDownBloc,
              child: BlocBuilder<FormDropdownBloc, FormDropdownState>(
                builder: (context, state) {
                  state.when(
                    initial: () {},
                    success: (value) {
                      dropDownValue = value;
                    },
                  );
                  return DropdownButtonHideUnderline(
                    child: DropdownButton(
                      borderRadius: BorderRadius.circular(4),
                      elevation: 0,
                      isExpanded: true,
                      focusColor: ColorConst.transparent,
                      value: dropDownValue,
                      items: dropDownList.map((String items) {
                        return DropdownMenuItem(
                          value: items,
                          child: Text(items),
                        );
                      }).toList(),
                      onChanged: (value) {
                        formDropDownBloc
                            .add(FormDropdownEvent.onTap(value.toString()));
                      },
                    ),
                  );
                },
              ),
            ),
          ),
        )
      ],
    );
  }
}

// static void dateValidator(String value) {
//   final DateTime now = DateTime.now();
//   final DateFormat formatter = DateFormat('yyyy');
//   final String formatted = formatter.format(now);
//   String str1 = value;
//   List<String> str2 = str1.split('/');
//   String month = str2.isNotEmpty ? str2[0] : '';
//   String day = str2.length > 1 ? str2[1] : '';
//   String year = str2.length > 2 ? str2[2] : '';
//   if (int.parse(month) > 13) {
//   } else if (int.parse(day) > 32) {
//     day = '31';
//   } else if ((int.parse(year) > int.parse(formatted))) {
//     year = formatter.format(now);
//   } else if ((int.parse(year) < 1920)) {
//     year = '1920';
//   }
// }

// class BirthTextInputFormatter extends TextInputFormatter {
//   @override
//   TextEditingValue formatEditUpdate(
//       TextEditingValue oldValue, TextEditingValue newValue) {
//     if (oldValue.text.length >= newValue.text.length) {
//       return newValue;
//     }
//     var dateText = _addSeparator(newValue.text, '/');
//     return newValue.copyWith(
//         text: dateText, selection: updateCursorPosition(dateText));
//   }

//   String _addSeparator(String value, String separator) {
//     value = value.replaceAll('/', '');
//     var newString = '';
//     for (int i = 0; i < value.length; i++) {
//       newString += value[i];
//       if (i == 1) {
//         newString += separator;
//       }
//       if (i == 3) {
//         newString += separator;
//       }
//     }
//     return newString;
//   }

//   TextSelection updateCursorPosition(String text) {
//     return TextSelection.fromPosition(TextPosition(offset: text.length));
//   }
// }
