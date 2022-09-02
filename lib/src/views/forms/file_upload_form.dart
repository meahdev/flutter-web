import 'dart:ui';

import 'package:admin_dashboard/src/constant/color.dart';
import 'package:admin_dashboard/src/constant/icons.dart';
import 'package:admin_dashboard/src/constant/string.dart';
import 'package:admin_dashboard/src/provider/form/form_upload_file/bloc/form_upload_file_bloc.dart';
import 'package:admin_dashboard/src/utils/hover.dart';
import 'package:admin_dashboard/src/widget/svg_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dropzone/flutter_dropzone.dart';
import 'package:flutterx/flutterx.dart';

class FileUploadForm extends StatefulWidget {
  const FileUploadForm({Key? key}) : super(key: key);

  @override
  State<FileUploadForm> createState() => _FileUploadFormState();
}

class _FileUploadFormState extends State<FileUploadForm> {
  final FormUploadFileBloc _formUploadFileBloc = FormUploadFileBloc();
  late DropzoneViewController _controller;
  List<dynamic> _filesList = [];

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => _formUploadFileBloc,
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                Strings.dropzone,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              FxBox.h24,
              GestureDetector(
                onTap: () async {
                  List<dynamic> files =
                      await _controller.pickFiles(multiple: true);
                  _dropFile(files);
                },
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(4.0),
                  ),
                  padding: const EdgeInsets.all(20.0),
                  constraints: const BoxConstraints(
                    minHeight: 270.0,
                    maxWidth: double.infinity,
                    maxHeight: 270.0,
                  ),
                  child: BlocBuilder<FormUploadFileBloc, FormUploadFileState>(
                    builder: (context, state) {
                      return Stack(
                        alignment: Alignment.center,
                        clipBehavior: Clip.antiAlias,
                        children: [
                          DropzoneView(
                            operation: DragOperation.copy,
                            onCreated: (controller) => _controller = controller,
                            onLoaded: () {},
                            onHover: () {},
                            onLeave: () {},
                            onDropMultiple: (value) async {
                              _dropFile(value!);
                            },
                          ),
                          SingleChildScrollView(
                            controller: ScrollController(),
                            child: state.when(
                              initial: () => _emptyView(),
                              fileSuccess: (filesList) => filesList.isEmpty
                                  ? _emptyView()
                                  : _hasDataView(filesList),
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ),
              ),
              const SizedBox(height: 40),
              _sendFileButton()
            ],
          ),
        ),
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
        ),
        FxBox.h20,
        const Text(
          "Drop files here or click to upload.",
          textAlign: TextAlign.center,
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 21),
        ),
      ],
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
                final kb = snapshot.data!['size'] / 1000;
                final mb = kb / 1024;
                final size = (kb >= 100)
                    ? '${mb.toStringAsFixed(1)} MB'
                    : '${kb.toStringAsFixed(1)} KB';
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
                          color: ColorConst.file,
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: isImage
                            ? ClipRRect(
                                borderRadius: BorderRadius.circular(20.0),
                                child: BackdropFilter(
                                    filter: isHover
                                        ? ImageFilter.blur(
                                            sigmaX: 10, sigmaY: 10)
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
                            _filesList.removeAt(fileData.indexOf(e));
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
              });
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
              fontSize: 16,
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
              fontSize: 13,
              color: ColorConst.black,
            ),
          ),
        ),
      ],
    );
  }

  Widget _sendFileButton() {
    return Center(
      child: FxButton(
        borderRadius: 4,
        onPressed: () {
          _formUploadFileBloc.add(const FormUploadFileEvent.clear());
        },
        text: 'Send Files',
      ),
    );
  }

  Future<void> _dropFile(files) async {
    if (_filesList.isEmpty) {
      if (files.length == 1) {
        _filesList = files;
      } else {
        _filesList.addAll(files);
      }
    } else {
      if (files.length == 1) {
        _filesList.add(files[0]);
      } else {
        _filesList.addAll(files);
      }
    }
    _formUploadFileBloc.add(FormUploadFileEvent.addFile(_filesList));
  }

  Future<Map<String, dynamic>> _fileData(file) async {
    return {
      'name': await _controller.getFilename(file),
      'size': await _controller.getFileSize(file),
      'mime': await _controller.getFileMIME(file),
      'bytes': await _controller.getFileData(file),
    };
  }
}
