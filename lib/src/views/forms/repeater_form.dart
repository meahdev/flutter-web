import 'package:admin_dashboard/src/utils/responsive.dart';
import 'package:admin_dashboard/src/widget/textformfield.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutterx/flutterx.dart';

class RepeaterForm extends StatefulWidget {
  const RepeaterForm({Key? key}) : super(key: key);

  @override
  State<RepeaterForm> createState() => _RepeaterFormState();
}

class _RepeaterFormState extends State<RepeaterForm> {
  FilePickerResult? _file;
  List<Widget> _exampleWidgetsList = [];
  List<Widget> _exampleWidgetsListMo = [];
  final List<String> _fileNameList = ['No chosen file'];

  @override
  void initState() {
    _exampleWidgetsList = [_exampleWeb()];
    _exampleWidgetsListMo = [_exampleMobileNtablet()];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _exampleForm(),
        FxBox.h20,
        _nestedForm(),
      ],
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
                if (Responsive.isWeb(context)) {
                  return Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(flex: 5, child: _exampleWidgetsList[index]),
                      Expanded(
                        flex: 5,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            _exampleCommonView(
                              _commonText('Resume'),
                              MouseRegion(
                                cursor: SystemMouseCursors.click,
                                child: GestureDetector(
                                  onTap: () {
                                    _pickFile(index);
                                  },
                                  child: _resumeTextField(_fileNameList[index]),
                                ),
                              ),
                            ),
                            FxBox.w24,
                            _exampleCommonView(
                              _commonText('Message'),
                              _messageTextField('Type here...'),
                            ),
                            FxBox.w24,
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.only(top: 36.0),
                                child: FxButton(
                                  borderRadius: 4.0,
                                  text: 'Delete',
                                  onPressed: () {
                                    FxAlert.showAlert(
                                      barrierDismissible: false,
                                      context: context,
                                      title: 'themesbrand.com says',
                                      content: const Text(
                                        'Are you sure you want to delete this element?',
                                      ),
                                      actions: [
                                        FxButton(
                                            buttonType: ButtonType.secondary,
                                            text: 'Cancel',
                                            onPressed: () {
                                              Navigator.pop(context);
                                            }),
                                        FxButton(
                                            text: 'Ok',
                                            onPressed: () {
                                              _exampleWidgetsList
                                                  .removeAt(index);
                                              _exampleWidgetsListMo
                                                  .removeAt(index);
                                              _fileNameList.removeAt(index);
                                              setState(() {});
                                              Navigator.pop(context);
                                            })
                                      ],
                                    );
                                  },
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  );
                } else {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _exampleWidgetsListMo[index],
                      _commonText('Resume'),
                      MouseRegion(
                        cursor: SystemMouseCursors.click,
                        child: GestureDetector(
                          onTap: () {
                            _pickFile(index);
                          },
                          child: _resumeTextField(_fileNameList[index]),
                        ),
                      ),
                      _commonText('Message'),
                      _messageTextField('Type here...'),
                      FxBox.h12,
                      FxButton(
                        fullWidth: true,
                        borderRadius: 4.0,
                        text: 'Delete',
                        onPressed: () {
                          FxAlert.showAlert(
                            barrierDismissible: false,
                            context: context,
                            title: 'themesbrand.com says',
                            content: const Text(
                              'Are you sure you want to delete this element?',
                            ),
                            actions: [
                              FxButton(
                                  buttonType: ButtonType.secondary,
                                  text: 'Cancel',
                                  onPressed: () {
                                    Navigator.pop(context);
                                  }),
                              FxButton(
                                  text: 'Ok',
                                  onPressed: () {
                                    _exampleWidgetsList.removeAt(index);
                                    _exampleWidgetsListMo.removeAt(index);
                                    _fileNameList.removeAt(index);
                                    setState(() {});
                                    Navigator.pop(context);
                                  })
                            ],
                          );
                        },
                      ),
                    ],
                  );
                }
              },
            ),
            FxBox.h24,
            FxButton(
              buttonType: ButtonType.success,
              borderRadius: 4.0,
              text: 'Add',
              onPressed: () {
                _fileNameList.add('No chosen file');
                _exampleWidgetsList.add(_exampleWeb());
                _exampleWidgetsListMo.add(_exampleMobileNtablet());
                setState(() {});
              },
            )
          ],
        ),
      ),
    );
  }

  Widget _exampleWeb() {
    return Row(
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
      ],
    );
  }

  Widget _exampleMobileNtablet() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _commonText('Name'),
        _commonTextField('Enter your name'),
        _commonText('Email'),
        _commonTextField('Enter your email'),
        _commonText('Subject'),
        _commonTextField('Enter your subject'),
      ],
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
    return SizedBox(
      height: 35,
      child: CustomTextField(
        border: const OutlineInputBorder(),
        hintText: hintText,
        isDense: true,
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 12,
          vertical: 6,
        ),
      ),
    );
  }

  Widget _resumeTextField(String fileName) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(),
        borderRadius: BorderRadius.circular(4.0),
      ),
      height: 28,
      child: Row(
        children: [
          Container(
            color: Colors.grey,
            alignment: Alignment.center,
            padding: const EdgeInsets.symmetric(horizontal: 12),
            height: double.infinity,
            child: const Text('Choose file'),
          ),
          const VerticalDivider(
            width: 0,
          ),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Text(
              fileName,
              style: const TextStyle(overflow: TextOverflow.ellipsis),
            ),
          )),
        ],
      ),
    );
  }

  Widget _messageTextField(String hintText) {
    return CustomTextField(
      maxLines: 2,
      border: const OutlineInputBorder(),
      hintText: hintText,
      isDense: true,
      contentPadding: const EdgeInsets.symmetric(
        horizontal: 15,
        vertical: 12,
      ),
    );
  }

  Future<void> _pickFile(int index) async {
    _file = await FilePicker.platform.pickFiles();
    if (_file == null) return;

    _fileNameList[index] = _file!.files[0].name;
    setState(() {});
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
                    crossAxisAlignment: CrossAxisAlignment.start,
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
}
