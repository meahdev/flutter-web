import 'package:admin_dashboard/src/utils/responsive.dart';
import 'package:admin_dashboard/src/widget/textformfield.dart';
import 'package:flutter/material.dart';
import 'package:flutterx/flutterx.dart';

class RepeaterForm extends StatefulWidget {
  const RepeaterForm({Key? key}) : super(key: key);

  @override
  State<RepeaterForm> createState() => _RepeaterFormState();
}

class _RepeaterFormState extends State<RepeaterForm> {
  final TextEditingController _resumeController = TextEditingController();
  final List<Widget> _exampleWidgetsList = [];

  @override
  void initState() {
    _resumeController.text = 'No file chosen';
    super.initState();
  }

  @override
  void dispose() {
    _resumeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _exampleWidgetsList.add(_exampleResponsive());
    return Column(
      children: [
        _exampleForm(),
        FxBox.h20,
        _nestedForm(),
      ],
    );
  }

  Widget _nestedForm() {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Nested',
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.w600,
              ),
            ),
            _commonText('Name'),
            _commonTextField('Enter your Name...'),
            _commonText('Email :'),
            _commonTextField('Enter your Email...'),
            _commonText('Phone no :'),
            Responsive.isWeb(context) || Responsive.isTablet(context)
                ? Row(
                    children: [
                      Expanded(
                        flex: 8,
                        child: _commonTextField('Enter your phone no...'),
                      ),
                      FxBox.w24,
                      Expanded(
                        flex: 2,
                        child: _deleteButton1(false),
                      )
                    ],
                  )
                : Column(
                    children: [
                      _commonTextField('Enter your phone no...'),
                      FxBox.h12,
                      _deleteButton1(true)
                    ],
                  ),
            FxBox.h16,
            _addButton(),
            FxBox.h24,
            _commonText('Gender :'),
            _radioButton(),
            FxBox.h16,
            _commonText('Message'),
            _messageTextField('Type text...'),
            FxBox.h16,
            FxButton(
              borderRadius: 4.0,
              text: 'Submit',
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }

  Widget _exampleForm() {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Example',
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.w600,
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              itemCount: _exampleWidgetsList.length,
              itemBuilder: (context, index) {
                return _exampleWidgetsList[index];
              },
            ),
            FxBox.h24,
            // _addButton(),
            FxButton(
              buttonType: ButtonType.success,
              borderRadius: 4.0,
              text: 'Add',
              onPressed: () {
                _exampleWidgetsList.add(_exampleResponsive());
                setState(() {});
              },
            )
          ],
        ),
      ),
    );
  }

  Widget _exampleResponsive() {
    return Column(
      children: [
        Responsive.isWeb(context)
            ? Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _exampleCommonView(
                    _commonText('Name'),
                    _commonTextField('Enter your name'),
                  ),
                  FxBox.w24,
                  _exampleCommonView(
                    _commonText('Email'),
                    _commonTextField('Enter your email'),
                  ),
                  FxBox.w24,
                  _exampleCommonView(
                    _commonText('Subject'),
                    _commonTextField('Enter your subject'),
                  ),
                  FxBox.w24,
                  _exampleCommonView(
                    _commonText('Resume'),
                    _resumeTextField(),
                  ),
                  FxBox.w24,
                  _exampleCommonView(
                    _commonText('Message'),
                    _messageTextField('Type here...'),
                  ),
                  FxBox.w24,
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 34.0),
                      child: _deleteButton1(false),
                    ),
                  ),
                ],
              )
            : Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _commonText('Name'),
                  _commonTextField('Enter your name'),
                  _commonText('Email'),
                  _commonTextField('Enter your email'),
                  _commonText('Subject'),
                  _commonTextField('Enter your subject'),
                  _commonText('Resume'),
                  _resumeTextField(),
                  Responsive.isTablet(context)
                      ? Row(
                          children: [
                            Expanded(
                              flex: 7,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  _commonText('Message'),
                                  _messageTextField('Type here...'),
                                ],
                              ),
                            ),
                            FxBox.w24,
                            Expanded(
                              flex: 3,
                              child: _deleteButton1(false),
                            ),
                          ],
                        )
                      : Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            _commonText('Message'),
                            _messageTextField('Type here...'),
                            FxBox.h12,
                            _deleteButton1(true)
                          ],
                        )
                ],
              ),
      ],
    );
  }

  Widget _deleteButton1(bool fullWidth) {
    return FxButton(
      fullWidth: fullWidth,
      borderRadius: 4.0,
      text: 'Delete',
      onPressed: () {},
    );
  }

  Widget _addButton() {
    return FxButton(
      buttonType: ButtonType.success,
      borderRadius: 4.0,
      text: 'Add',
      onPressed: () {},
    );
  }

  Widget _exampleCommonView(Widget title, Widget textField) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [title, textField],
      ),
    );
  }

  Widget _commonText(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Text(
        text,
        style: const TextStyle(fontWeight: FontWeight.w600),
      ),
    );
  }

  Widget _commonTextField(String hintText) {
    return CustomTextField(
      border: const OutlineInputBorder(),
      hintText: hintText,
      isDense: true,
      contentPadding: const EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 12,
      ),
    );
  }

  Widget _resumeTextField() {
    return CustomTextField(
      style: const TextStyle(overflow: TextOverflow.ellipsis),
      controller: _resumeController,
      readOnly: true,
      prefixIcon: const Text(
        'Choose File',
      ),
      border: const OutlineInputBorder(),
      isDense: true,
      contentPadding: const EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 12,
      ),
    );
  }

  Widget _messageTextField(String hintText) {
    return CustomTextField(
      maxLines: 3,
      border: const OutlineInputBorder(),
      hintText: hintText,
      isDense: true,
      contentPadding: const EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 12,
      ),
    );
  }

  Widget _radioButton() {
    return Row(
      children: [
        Radio(
          value: 'Male',
          groupValue: false,
          onChanged: (value) {},
        ),
        const Text('Male'),
        Radio(
          value: 'Female',
          groupValue: true,
          onChanged: (value) {},
        ),
        const Text('Female'),
      ],
    );
  }
}
