import 'package:flutter/material.dart';

class SimpleLoader extends StatefulWidget {
  const SimpleLoader({Key? key}) : super(key: key);

  @override
  State<SimpleLoader> createState() => _SimpleLoaderState();
}

class _SimpleLoaderState extends State<SimpleLoader> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        CircularProgressIndicator(
          valueColor: AlwaysStoppedAnimation<Color>(Colors.red),
        ),
      ],
    );
  }
}
