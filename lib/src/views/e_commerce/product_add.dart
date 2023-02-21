import 'dart:ui';
import 'package:admin_dashboard/src/constant/color.dart';
import 'package:admin_dashboard/src/constant/icons.dart';
import 'package:admin_dashboard/src/constant/theme.dart';
import 'package:admin_dashboard/src/provider/form/form_upload_file/bloc/form_upload_file_bloc.dart';
import 'package:admin_dashboard/src/utils/hover.dart';
import 'package:admin_dashboard/src/utils/responsive.dart';
import 'package:admin_dashboard/src/views/e_commerce/product.dart';
import 'package:admin_dashboard/src/widget/svg_icon.dart';
import 'package:admin_dashboard/src/widget/textformfield.dart';
import 'package:desktop_drop/desktop_drop.dart';
import 'package:cross_file/cross_file.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterx/flutterx.dart';
import 'package:mime/mime.dart';

class ProductAdd extends StatefulWidget {
  const ProductAdd({super.key});

  @override
  State<ProductAdd> createState() => _ProductAddState();
}

class _ProductAddState extends State<ProductAdd> {
  final FormUploadFileBloc _formUploadFileBloc = FormUploadFileBloc();
  // late DropzoneViewController _controller;
  List<XFile> _filesList = [];
  bool isExcelFile = false;
  Uint8List bytes = Uint8List(0);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return BlocProvider(
      create: (context) => _formUploadFileBloc,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(
              vertical: 32.0,
              horizontal: 24.0,
            ),
            decoration: BoxDecoration(
              // color: !isDark ? ColorConst.white : ColorConst.black,
              color: Theme.of(context).brightness == Brightness.dark
                  ? Colors.black
                  : Colors.white,
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Responsive.isWeb(context)
                ? Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(child: _productForm()),
                      Expanded(child: _pickDropContainer(size)),
                    ],
                  )
                : Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _pickDropContainer(size),
                      FxBox.h16,
                      _productForm()
                    ],
                  ),
          ),
        ],
      ),
    );
  }

  Widget _emptyView() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(
          Icons.cloud_upload_sharp,
          size: 60,
          color: Colors.grey,
        ),
        FxBox.h20,
        const Text(
          "Drop files here or click to upload.",
          textAlign: TextAlign.center,
          style: TextStyle(
              fontWeight: FontWeight.w600, fontSize: 22, color: Colors.grey),
        ),
      ],
    );
  }

  Widget _productForm() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _formTitle('Product Name'),
        FxBox.h6,
        CustomTextField(
          contentPadding: const EdgeInsets.all(12.0),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
        ),
        FxBox.h16,
        _formTitle('Description'),
        FxBox.h6,
        CustomTextField(
          maxLines: 6,
          contentPadding: const EdgeInsets.all(12.0),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
        ),
        FxBox.h16,
        _formTitle('Category'),
        FxBox.h6,
        _categoryDropDown(),
        FxBox.h16,
        _expiryRow(),
        FxBox.h16,
        FxButton(
          height: 60,
          fullWidth: true,
          borderRadius: 4.0,
          text: 'ADD PRODUCT KNOW',
          onPressed: () {},
        )
      ],
    );
  }

  Widget _pickDropContainer(Size size) {
    return GestureDetector(
      onTap: () async {
        FilePickerResult? file =
            await FilePicker.platform.pickFiles(allowMultiple: false);
        if (file != null) {
          XFile files = XFile(file.files.first.path!);
          _dropFile(files);
        }
      },
      child: Container(
        margin: Responsive.isWeb(context)
            ? const EdgeInsets.all(24.0)
            : EdgeInsets.zero,
        height: size.height * 0.30,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.0),
          color: Theme.of(context).brightness == Brightness.dark
              ? Colors.black
              : Colors.white,
          boxShadow: [
            BoxShadow(
              color: Theme.of(context).brightness == Brightness.dark
                  ? Colors.white.withOpacity(0.4)
                  : Colors.black.withOpacity(0.1),
              spreadRadius: 0.0,
              blurRadius: 3.0,
              // offset: const Offset(5.0, 5.0),
            ),
          ],
        ),
        child: BlocBuilder<FormUploadFileBloc, FormUploadFileState>(
          builder: (context, state) {
            return Stack(
              alignment: Alignment.center,
              clipBehavior: Clip.antiAlias,
              children: [
                DropTarget(
                  // operation: DragOperation.copy,
                  // onCreated: (controller) =>
                  //     _controller = controller,
                  // onLoaded: () {},
                  // onHover: () {},
                  // onLeave: () {},
                  // onDropMultiple: (value) async {
                  //   _dropFile(value!);
                  // },
                  child: SingleChildScrollView(
                    controller: ScrollController(),
                    child: state.when(
                      initial: () => _emptyView(),
                      fileSuccess: (filesList) => filesList.isEmpty
                          ? _emptyView()
                          : _hasDataView(filesList),
                    ),
                  ),
                  onDragDone: (details) {
                    _dropFile(details.files.first);
                  },
                ),
              ],
            );
          },
        ),
      ),
    );
  }

  Widget _hasDataView(List<dynamic> fileData) {
    return Wrap(
      runSpacing: 30.0,
      spacing: 30.0,
      children: fileData.map(
        (e) {
          return FutureBuilder<Map<String, dynamic>>(
            future: _fileData(e),
            builder: (context, snapshot) {
              if (!snapshot.hasData) {
                return FxBox.shrink;
              }
              final size = snapshot.data!['size'];
              final fileType = snapshot.data!['mime'];
              final isImage = fileType!.startsWith('image') ? true : false;
              return FxHover(builder: (isHover) {
                return Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                      height: 120,
                      width: 120,
                      decoration: BoxDecoration(
                        image: isImage
                            ? DecorationImage(
                                image: MemoryImage(snapshot.data!['bytes']),
                                fit: BoxFit.cover,
                              )
                            : null,
                        color: isDark
                            ? ColorConst.lightFontColor
                            : ColorConst.file,
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: isImage
                          ? ClipRRect(
                              borderRadius: BorderRadius.circular(20.0),
                              child: BackdropFilter(
                                  filter: isHover
                                      ? ImageFilter.blur(sigmaX: 10, sigmaY: 10)
                                      : ImageFilter.blur(
                                          sigmaX: 0.1, sigmaY: 0.1),
                                  child: isHover
                                      ? _fileDetailView(
                                          size,
                                          snapshot.data!['name'],
                                        )
                                      : null),
                            )
                          : _fileDetailView(size, snapshot.data!['name']),
                    ),
                    Positioned(
                      right: 0.0,
                      child: InkWell(
                        hoverColor: Colors.transparent,
                        splashColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () {
                          isExcelFile = false;
                          List<XFile> tempList = _filesList.toList();
                          tempList.removeAt(fileData.indexOf(e));
                          _filesList = tempList;
                          _formUploadFileBloc
                              .add(FormUploadFileEvent.addFile(_filesList));
                        },
                        child: Container(
                          padding: const EdgeInsets.all(4.0),
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                          ),
                          child: const SvgIcon(
                            icon: IconlyBroken.closeSquare,
                            size: 14.0,
                          ),
                        ),
                      ),
                    ),
                  ],
                );
              });
            },
          );
        },
      ).toList(),
    );
  }

  Widget _fileDetailView(String size, String name) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 6.4,
          ),
          color: ColorConst.white.withOpacity(0.4),
          child: Text(
            size,
            style: const TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w500,
              color: ColorConst.black,
            ),
          ),
        ),
        FxBox.h12,
        Container(
          margin: const EdgeInsets.symmetric(
            horizontal: 13.0,
          ),
          padding: const EdgeInsets.symmetric(
            horizontal: 5.2,
          ),
          color: ColorConst.white.withOpacity(0.4),
          child: Text(
            name,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              fontSize: 14,
              color: ColorConst.black,
            ),
          ),
        ),
      ],
    );
  }

  Future<void> _dropFile(XFile files) async {
    isExcelFile = false;
    _filesList.clear();

    await _fileData(files);
    _filesList.add(files);

    bytes = await files.readAsBytes();
    if (files.path.split('.').last == 'xlsx') {
      isExcelFile = true;

      _formUploadFileBloc.add(FormUploadFileEvent.addFile(_filesList));
    }
  }

  Future<Map<String, dynamic>> _fileData(XFile file) async {
    return {
      'name': file.path.split('/').last,
      'size': await _getFileSize(file),
      'mime': lookupMimeType(file.path),
      'bytes': await file.readAsBytes(),
    };
  }

  Future<String> _getFileSize(XFile file) async {
    if (await file.length() / 1024 <= 1000) {
      return '${(await file.length() / 1024).toStringAsFixed(2)} KB';
    } else {
      return '${((await file.length() / 1024) / 1024).toStringAsFixed(2)} MB';
    }
  }
}

_formTitle(String text) {
  return Text(
    text,
    style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 18.0),
  );
}

Widget _categoryDropDown() {
  return DropdownButtonFormField(
    hint: const Text(
      'Select Category',
      style: TextStyle(
        color: ColorConst.black,
      ),
    ),
    decoration: InputDecoration(
      contentPadding: const EdgeInsets.all(12.0),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.0),
        borderSide: BorderSide(
          color: !isDark
              ? ColorConst.black
              : ColorConst.white.withOpacity(
                  0.5,
                ),
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.0),
        borderSide: BorderSide(
          color: !isDark ? ColorConst.black : ColorConst.white.withOpacity(0.5),
        ),
      ),
    ),
    onChanged: (value) {
      print(value['title']);
    },
    items: productList.map<DropdownMenuItem>(
      (e) {
        return DropdownMenuItem(
          value: e,
          child: Text(e['category'].toString()),
        );
      },
    ).toList(),
  );
}

Widget _expiryRow() {
  return Row(
    children: [
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _formTitle('Expire Date'),
            FxBox.h6,
            CustomTextField(
              contentPadding: const EdgeInsets.all(12.0),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
          ],
        ),
      ),
      FxBox.w12,
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _formTitle('Units in Stock'),
            FxBox.h6,
            CustomTextField(
              contentPadding: const EdgeInsets.all(12.0),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
            ),
          ],
        ),
      )
    ],
  );
}
