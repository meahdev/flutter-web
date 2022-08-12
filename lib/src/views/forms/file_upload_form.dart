import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutterx/flutterx.dart';

class FileUploadForm extends StatefulWidget {
  const FileUploadForm({Key? key}) : super(key: key);

  @override
  State<FileUploadForm> createState() => _FileUploadFormState();
}

class _FileUploadFormState extends State<FileUploadForm> {
  FilePickerResult? file;
  List<PlatformFile> filesList = [];
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
            FxBox.h24,
            GestureDetector(
              onTap: () {
                pickFile();
              },
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(4),
                ),
                padding: const EdgeInsets.all(20),
                height: 268,
                width: MediaQuery.of(context).size.width - 40,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(
                      Icons.cloud_upload_outlined,
                      size: 60,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Drop files here or click to upload.",
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 21),
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
    file = await FilePicker.platform.pickFiles(allowMultiple: true);
    if (file == null) return;
    if (filesList.isEmpty) {
      filesList = file!.files;
    } else {
      filesList.addAll(file!.files);
    }
    setState(() {});
    // loadSelectFile(result!.files);
  }
}
