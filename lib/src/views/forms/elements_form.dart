import 'package:admin_dashboard/src/constant/color.dart';
import 'package:admin_dashboard/src/constant/string.dart';
import 'package:admin_dashboard/src/provider/form_elements/bloc/form_elements_bloc.dart';
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
  final FormElementsBloc _formElementsBloc = FormElementsBloc();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _numberController = TextEditingController();
  final TextEditingController _dateNtimeController = TextEditingController();
  Color _pickerColor = const Color(0xff02a499);
  final List<String> _headingList = [
    Strings.text,
    Strings.search,
    Strings.email,
    Strings.url,
    Strings.telephone,
  ];
  final List<String> _hintList = [
    'Artisanal kale',
    'How do I shoot web',
    'flutter@example.com',
    'https://flutter.com',
    '1-(555)-555-5555',
  ];
  final List<String> _dropDownList = [
    'One',
    'Two',
    'Three',
    'Four',
  ];
  String _dropDownValue = 'One';
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
    return BlocProvider(
      create: (context) => _formElementsBloc,
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
                        _textFieldNormal(_headingList, _hintList),
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
                        _textFieldNormalMobile(_headingList, _hintList),
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
    return BlocBuilder<FormElementsBloc, FormElementsState>(
        builder: (context, state) {
      state.whenOrNull(datepickerSuccess: (value) {
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

    _formElementsBloc.add(FormElementsEvent.datePicker(result.toString()));
  }

  Widget _numberIncrementDecrement() {
    return BlocBuilder<FormElementsBloc, FormElementsState>(
      builder: (context, state) {
        state.whenOrNull(incrementSuccess: (value) {
          _numberController.text = value.toString();
          _numberController.selection = TextSelection.fromPosition(
            TextPosition(offset: _numberController.text.length),
          );
        }, decrementSuccess: (value) {
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
                      _formElementsBloc.add(
                        FormElementsEvent.increment(
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
                      _formElementsBloc.add(
                        FormElementsEvent.decrement(
                          int.parse(_numberController.text.isEmpty
                              ? '0'
                              : _numberController.text),
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
              pickerColor: _pickerColor,
              onColorChanged: (value) {
                _formElementsBloc.add(
                  FormElementsEvent.colorPicker(value),
                );
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
        child: BlocBuilder<FormElementsBloc, FormElementsState>(
          builder: (context, state) {
            state.whenOrNull(
              colorpickerSuccess: (color) {
                _pickerColor = color;
              },
            );
            return Container(
              decoration: BoxDecoration(
                color: _pickerColor,
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
      child: BlocBuilder<FormElementsBloc, FormElementsState>(
        builder: (context, state) {
          state.whenOrNull(
            initial: () {},
            dropDownSuccess: (value) {
              _dropDownValue = value;
            },
          );
          return DropdownButtonHideUnderline(
            child: DropdownButton(
              borderRadius: BorderRadius.circular(4),
              elevation: 0,
              isExpanded: true,
              focusColor: ColorConst.transparent,
              value: _dropDownValue,
              items: _dropDownList.map((String items) {
                return DropdownMenuItem(
                  value: items,
                  child: Text(items),
                );
              }).toList(),
              onChanged: (value) {
                _formElementsBloc
                    .add(FormElementsEvent.dropDown(value.toString()));
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
