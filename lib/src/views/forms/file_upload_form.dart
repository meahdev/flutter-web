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
                  constraints:
                      BoxConstraints(minHeight: 270, minWidth: double.infinity),
                  // width: double.infinity,
                  child: filesList.isEmpty
                      ? Column(
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
                              style: TextStyle(
                                  fontWeight: FontWeight.w600, fontSize: 21),
                            ),
                          ],
                        )
                      : GridView.builder(
                          shrinkWrap: true,
                          itemCount: filesList.length,
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 5,
                            mainAxisSpacing: 20.0,
                          ),
                          itemBuilder: (context, index) {
                            final kb = filesList[index].size / 1024;
                            final mb = kb / 1024;
                            final size = (mb >= 1)
                                ? '${mb.toStringAsFixed(2)} MB'
                                : '${kb.toStringAsFixed(2)} KB';
                            return Container(
                              height: 120,
                              width: 120,
                              decoration: BoxDecoration(
                                color: Theme.of(context).colorScheme.secondary,
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              child: Text(size),
                            );
                          },
                        )),
            ),
            const SizedBox(
              height: 40,
            ),
            Center(
              child: FxButton(
                borderRadius: 4,
                onPressed: () {},
                text: 'Send Files',
              ),
            )
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
