import 'package:admin_dashboard/src/constant/color.dart';
import 'package:admin_dashboard/src/constant/string.dart';
import 'package:admin_dashboard/src/provider/form_colorpicker/bloc/form_color_bloc.dart';
import 'package:admin_dashboard/src/provider/form_counter/bloc/form_textfield_counter_bloc.dart';
import 'package:admin_dashboard/src/provider/form_date/form_date_and_picker_bloc.dart';
import 'package:admin_dashboard/src/provider/form_dropdown/bloc/form_dropdown_bloc.dart';
import 'package:admin_dashboard/src/utils/responsive.dart';
import 'package:admin_dashboard/src/widget/textformfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:flutterx/flutterx.dart';

class ElementsForm extends StatefulWidget {
  const ElementsForm({
    Key? key,
  }) : super(key: key);
  @override
  State<ElementsForm> createState() => _ElementsFormState();
}

class _ElementsFormState extends State<ElementsForm> {
  final FormColorBloc formColorBloc = FormColorBloc();

  final FormTextfieldCounterBloc formTextfieldCounterBloc =
      FormTextfieldCounterBloc();

  final FormDropdownBloc formDropDownBloc = FormDropdownBloc();

  final FormDateAndPickerBloc formDateAndPickerBloc = FormDateAndPickerBloc();

  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _numberController = TextEditingController();
  final TextEditingController _dateNtimeController = TextEditingController();
  Color pickerColor = const Color(0xff02a499);
  List<String> headingList = [
    Strings.text,
    Strings.search,
    Strings.email,
    Strings.url,
    Strings.telephone,
  ];
  List<String> hintList = [
    'Artisanal kale',
    'How do I shoot web',
    'flutter@example.com',
    'https://flutter.com',
    '1-(555)-555-5555',
  ];
  List<String> dropDownList = [
    'One',
    'Two',
    'Three',
    'Four',
  ];
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
    _dateNtimeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => formColorBloc,
        ),
        BlocProvider(
          create: (context) => formTextfieldCounterBloc,
        ),
        BlocProvider(
          create: (context) => formDropDownBloc,
        ),
        BlocProvider(
          create: (context) => formDateAndPickerBloc,
        ),
      ],
      child: Card(
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
              Responsive.isWeb(context) || Responsive.isTablet(context)
                  ? Column(
                      children: [
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
                    )
                  : Column(
                      children: [
                        _textFieldNormalMobile(headingList, hintList),
                        _passwordTextFieldMobile(),
                        _numberTextFieldMobile(),
                        _dateNtimeTextFieldMobile(),
                        _colorTextFieldMobile(),
                        _selectTextFieldMobile(),
                      ],
                    ),
            ],
          ),
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
                flex: 2,
                child: _commonText(
                  headingList[index],
                ),
              ),
              Flexible(
                flex: 8,
                child: _listBox(hintList[index]),
              )
            ],
          ),
        );
      },
    );
  }

  Widget _textFieldNormalMobile(
    List<String> headingList,
    List<String> hintList,
  ) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: headingList.length,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _commonText(
              headingList[index],
            ),
            _listBox(hintList[index]),
          ],
        );
      },
    );
  }

  Widget _listBox(String hintText) {
    return SizedBox(
      height: 35,
      child: CustomTextField(
        border: const OutlineInputBorder(),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 12,
          vertical: 6,
        ),
        hintText: hintText,
      ),
    );
  }

  Widget _passwordTextField() {
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: _commonText(Strings.password),
        ),
        Flexible(
          flex: 8,
          child: _passWordBox(),
        )
      ],
    );
  }

  Widget _passwordTextFieldMobile() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _commonText(Strings.password),
        _passWordBox(),
      ],
    );
  }

  Widget _passWordBox() {
    return SizedBox(
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
    );
  }

  Widget _numberTextField() {
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: _commonText(Strings.number),
        ),
        Flexible(
          flex: 8,
          child: _numberIncrementDecrement(),
        )
      ],
    );
  }

  Widget _numberTextFieldMobile() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _commonText(Strings.number),
        _numberIncrementDecrement(),
      ],
    );
  }

  Widget _dateNtimeTextField() {
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: _commonText(Strings.dateAndtime),
        ),
        Flexible(
          flex: 8,
          child: _dateAndTimePickerBox(),
        ),
      ],
    );
  }

  Widget _dateNtimeTextFieldMobile() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _commonText(Strings.dateAndtime),
        _dateAndTimePickerBox(),
      ],
    );
  }

  Widget _dateAndTimePickerBox() {
    return BlocBuilder<FormDateAndPickerBloc, FormDateAndPickerState>(
        builder: (context, state) {
      state.when(
          initial: () {},
          loaded: (value) {
            _dateNtimeController.text = value;
          });
      return SizedBox(
        height: 35,
        child: CustomTextField(
          controller: _dateNtimeController,
          inputFormatters: [
            LengthLimitingTextInputFormatter(10),
            FilteringTextInputFormatter.digitsOnly,
          ],
          onChanged: (value) {},
          onTap: () {
            _chooseDate();
          },
          keyboardType: TextInputType.phone,
          border: const OutlineInputBorder(),
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 12,
            vertical: 6,
          ),
        ),
      );
    });
  }

  Future _chooseDate() async {
    final DateTime now = DateTime.now();

    var initialDate = now;

    initialDate = initialDate.year >= 1900 && initialDate.isBefore(now)
        ? initialDate
        : now;

    final result = await showDatePicker(
        builder: (context, child) {
          return Theme(
            data: ThemeData(
              dialogTheme: DialogTheme(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4),
                ),
              ),
            ),
            child: child!,
          );
        },
        context: context,
        initialDate: initialDate,
        firstDate: DateTime(1900),
        lastDate: DateTime(2025));

    if (result == null) {
      return;
    }

    formDateAndPickerBloc
        .add(FormDateAndPickerEvent.started(dateAndtime: result.toString()));
  }

  Widget _numberIncrementDecrement() {
    return BlocBuilder<FormTextfieldCounterBloc, FormTextfieldCounterState>(
      builder: (context, state) {
        state.when(
            initial: () {},
            success: (value) {
              _numberController.text = value.toString();
              _numberController.selection = TextSelection.fromPosition(
                TextPosition(offset: _numberController.text.length),
              );
            });
        return SizedBox(
          height: 35,
          child: CustomTextField(
            controller: _numberController,
            border: const OutlineInputBorder(),
            contentPadding: const EdgeInsets.fromLTRB(12.0, 3.0, 6.0, 6.0),
            suffixIcon: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Expanded(
                  child: _inkButton(
                    icon: Icons.arrow_drop_up_sharp,
                    onTap: () {
                      formTextfieldCounterBloc.add(
                        FormTextfieldCounterEvent.increment(
                          int.parse(_numberController.text.isEmpty
                              ? '0'
                              : _numberController.text),
                        ),
                      );
                    },
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: _inkButton(
                    icon: Icons.arrow_drop_down_sharp,
                    onTap: () {
                      formTextfieldCounterBloc.add(
                        FormTextfieldCounterEvent.decrement(
                          int.parse(
                            _numberController.text.isEmpty
                                ? '0'
                                : _numberController.text,
                          ),
                        ),
                      );
                    },
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _colorTextField() {
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: _commonText(Strings.color),
        ),
        Flexible(
          flex: 8,
          child: _colorpicker(),
        )
      ],
    );
  }

  Widget _colorTextFieldMobile() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _commonText(Strings.color),
        _colorpicker(),
      ],
    );
  }

  Widget _colorpicker() {
    return InkWell(
      onTap: () {
        FxAlert.showAlert(
          context: context,
          title: Strings.pickColor,
          content: SizedBox(
            width: 300,
            child: ColorPicker(
              pickerColor: pickerColor,
              onColorChanged: (value) {
                formColorBloc.add(FormColorEvent.changeColor(value));
              },
              portraitOnly: true,
            ),
          ),
          actions: [],
        );
      },
      child: Container(
        decoration: _boxdecoration(),
        height: 35,
        width: double.infinity,
        padding: const EdgeInsets.symmetric(vertical: 6.0, horizontal: 12.0),
        child: BlocBuilder<FormColorBloc, FormColorState>(
          builder: (context, state) {
            state.when(
              initial: () {},
              success: (color) {
                pickerColor = color;
              },
            );
            return Container(
              decoration: BoxDecoration(
                color: pickerColor,
                border: Border.all(),
                borderRadius: BorderRadius.circular(4),
              ),
            );
          },
        ),
      ),
    );
  }

  Widget _selectTextField() {
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: _commonText(Strings.select),
        ),
        Flexible(
          flex: 8,
          child: _dropDown(),
        ),
      ],
    );
  }

  Widget _selectTextFieldMobile() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _commonText(Strings.select),
        _dropDown(),
      ],
    );
  }

  Widget _commonText(String text) {
    return Padding(
      padding: EdgeInsets.symmetric(
          vertical: Responsive.isMobile(context) ? 8.0 : 0.0),
      child: Text(
        text,
        style: const TextStyle(
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }

  Widget _dropDown() {
    return Container(
      height: 35,
      width: double.infinity,
      decoration: _boxdecoration(),
      padding: const EdgeInsets.symmetric(vertical: 6.0, horizontal: 12.0),
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
                formDropDownBloc.add(FormDropdownEvent.onTap(value.toString()));
              },
            ),
          );
        },
      ),
    );
  }

  BoxDecoration _boxdecoration() {
    return BoxDecoration(
      border: Border.all(
        color: Theme.of(context).colorScheme.secondary.withOpacity(0.5),
      ),
      borderRadius: BorderRadius.circular(4),
    );
  }

  Widget _inkButton({
    required IconData icon,
    void Function()? onTap,
  }) {
    return InkWell(
      onTap: onTap,
      child: Icon(
        icon,
      ),
    );
  }
}
