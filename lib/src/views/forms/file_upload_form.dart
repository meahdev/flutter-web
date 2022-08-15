import 'dart:ui';

import 'package:admin_dashboard/src/constant/color.dart';
import 'package:admin_dashboard/src/provider/form_upload_file/bloc/form_upload_file_bloc.dart';
import 'package:admin_dashboard/src/utils/hover.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterx/flutterx.dart';
import 'package:mime_type/mime_type.dart';

class FileUploadForm extends StatefulWidget {
  const FileUploadForm({Key? key}) : super(key: key);

  @override
  State<FileUploadForm> createState() => _FileUploadFormState();
}

class _FileUploadFormState extends State<FileUploadForm> {
  FormUploadFileBloc formUploadFileBloc = FormUploadFileBloc();
  FilePickerResult? file;
  List<PlatformFile> filesList = [];

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => formUploadFileBloc,
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
                "Dropzone",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              FxBox.h24,
              GestureDetector(
                onTap: () {
                  _pickFile();
                },
                child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    padding: const EdgeInsets.all(40.0),
                    constraints: const BoxConstraints(
                        minHeight: 270, minWidth: double.infinity),
                    child: BlocBuilder<FormUploadFileBloc, FormUploadFileState>(
                      builder: (context, state) {
                        return state.when(
                          initial: () {
                            filesList.clear();
                            return _emptyView();
                          },
                          fileSuccess: (fileData) {
                            return _hasDataView(fileData);
                          },
                        );
                      },
                    )),
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

  Widget _hasDataView(List<PlatformFile> fileData) {
    return Wrap(
      runSpacing: 30.0,
      spacing: 30.0,
      children: fileData.map(
        (e) {
          final kb = e.size / 1000;
          final mb = kb / 1024;
          final size = (kb >= 100)
              ? '${mb.toStringAsFixed(1)} MB'
              : '${kb.toStringAsFixed(1)} KB';
          final fileType = mimeFromExtension(e.extension!);
          final isImage = fileType!.startsWith('image') ? true : false;
          return FxHover(builder: (isHover) {
            return Container(
              height: 120,
              width: 120,
              decoration: BoxDecoration(
                image: isImage
                    ? DecorationImage(
                        image: MemoryImage(e.bytes!), fit: BoxFit.cover)
                    : null,
                color: ColorConst.file,
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: isImage
                  ? ClipRRect(
                      borderRadius: BorderRadius.circular(20.0),
                      child: BackdropFilter(
                          filter: isHover
                              ? ImageFilter.blur(sigmaX: 10, sigmaY: 10)
                              : ImageFilter.blur(sigmaX: 0.1, sigmaY: 0.1),
                          child:
                              isHover ? _fileDetailView(size, e.name) : null),
                    )
                  : _fileDetailView(size, e.name),
            );
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
          formUploadFileBloc.add(const FormUploadFileEvent.clear());
        },
        text: 'Send Files',
      ),
    );
  }

  Future<void> _pickFile() async {
    file = await FilePicker.platform.pickFiles(
      allowMultiple: true,
    );
    if (file == null) return;
    if (filesList.isEmpty) {
      filesList = file!.files;
    } else {
      filesList.addAll(file!.files);
    }
    formUploadFileBloc.add(FormUploadFileEvent.addFile(filesList));
  }
}
