import 'package:admin_dashboard/src/my_app.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:window_size/window_size.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  if (TargetPlatform.windows == defaultTargetPlatform ||
      TargetPlatform.macOS == defaultTargetPlatform) {
    setWindowTitle('Admin');
    setWindowMinSize(const Size(480, 360));
    setWindowMaxSize(Size.infinite);
  }
  runApp(const MyApp());
}
