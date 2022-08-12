import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutterx/flutterx.dart';

class FileUploadForm extends StatefulWidget {
  const FileUploadForm({Key? key}) : super(key: key);

  @override
  State<FileUploadForm> createState() => _FileUploadFormState();
}

class _FileUploadFormState extends State<FileUploadForm> {
  PlatformFile? file;
  FilePickerResult? result;
  List<PlatformFile> files = [];
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
              "Dropzone",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            FxBox.h4,
            const Text(
              "DropzoneJS is an open source library that provides drag’n’drop file uploads with image previews.",
            ),
            const SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                pickFile();
              },
              child: Container(
                color: Colors.white,
                height: MediaQuery.of(context).size.height * 0.42,
                width: MediaQuery.of(context).size.height * 1.7,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(
                      Icons.cloud_upload_outlined,
                      size: 70,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Drop Files hear or click to uplode.",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Center(
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(primary: Colors.indigo),
                    onPressed: () {},
                    child: const Text(
                      "Send Files",
                      style: TextStyle(color: Colors.white),
                    )))
          ],
        ),
      ),
    );
  }

  void pickFile() async {
    result = await FilePicker.platform.pickFiles(allowMultiple: true);
    if (result == null) return;
    if (files.isEmpty) {
      files = result!.files;
    } else {
      files.addAll(result!.files);
    }
    setState(() {});
    // loadSelectFile(result!.files);
  }
}
