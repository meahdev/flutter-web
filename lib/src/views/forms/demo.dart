// ignore_for_file: unnecessary_string_interpolations, unnecessary_brace_in_string_interps
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';

class SelectFile extends StatefulWidget {
  const SelectFile({Key? key}) : super(key: key);
  @override
  State<SelectFile> createState() => _SelectFileState();
}

class _SelectFileState extends State<SelectFile> {
  PlatformFile? file;
  FilePickerResult? result;
  List<PlatformFile> files = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Center(
                child: Container(
                    padding: const EdgeInsets.all(25),
                    margin: const EdgeInsets.all(25),
                    height: MediaQuery.of(context).size.height * 0.64,
                    width: MediaQuery.of(context).size.height * 1.7,
                    decoration: BoxDecoration(color: Colors.grey[200]),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Dropzone",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 5,
                        ),
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
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25),
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
                                style: ElevatedButton.styleFrom(
                                    primary: Colors.indigo),
                                onPressed: () {},
                                child: const Text("Send Files")))
                      ],
                    )),
              ),
              ListView.builder(
                shrinkWrap: true,
                itemCount: files.length,
                itemBuilder: (context, index) {
                  final filess = files[index];
                  return buildListFile(filess);
                },
              ),
              // Center(
              //     child: ElevatedButton(onPressed: (){
              //       pickFile();
              //     }, child: Text("PickFile"),)
              // ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildListFile(PlatformFile file) {
    final kb = file.size / 1024;
    final mb = kb / 1024;
    final size = (mb >= 1)
        ? '${mb.toStringAsFixed(2)} MB'
        : '${kb.toStringAsFixed(2)} KB';
    return InkWell(
      onTap: () {
        // onOpenedFile(file);
      },
      child: ListTile(
        title: Text("${file.name}"),
        subtitle: Text("${size}"),
        leading: const Icon(Icons.file_copy),
        trailing: Text("${file.extension}"),
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

  //
  // void loadSelectFile(List<PlatformFile> files) {
  //   Navigator.of(context).push(MaterialPageRoute(builder: (context) => FileList(files: files, onOpenedFile: viewFile)));
  // }
  // void viewFile(PlatformFile file) {
  //   OpenFile.open(file.path ?? "");
  // }
}
