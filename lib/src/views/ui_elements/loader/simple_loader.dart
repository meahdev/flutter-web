import 'package:admin_dashboard/src/views/ui_elements/loader/components/pulse_loader.dart';
import 'package:admin_dashboard/src/views/ui_elements/loader/components/simple_load.dart';
import 'package:flutter/material.dart';
import 'package:flutterx/flutterx.dart';

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
      children: [
        // const CircularProgressIndicator(
        //   valueColor: AlwaysStoppedAnimation<Color>(Colors.red),
        // ),
        FxBox.h20,
        // Wrap(
        //   direction: Axis.horizontal,
        //   alignment: WrapAlignment.spaceEvenly,
        //   spacing: 20,
        //   children: const [
        //     BasicLoader(color: Color(0xFF626ED4)),
        //     BasicLoader(color: Color(0xFFE9ECEF)),
        //     BasicLoader(color: Color(0xFF38A4F8)),
        //     BasicLoader(color: Color(0xFFF8B425)),
        //     BasicLoader(color: Color(0xFFEC4561)),
        //     BasicLoader(color: Color(0xFF343A40)),
        //   ],
        // ),
        // FxBox.h20,
        // Row(
        //   crossAxisAlignment: CrossAxisAlignment.center,
        //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //   children: const [
        //     PulseAnimation(color: Color(0XFF5B626B), size: 35),
        //     PulseAnimation(color: Color(0xFFE9ECEF)),
        //     PulseAnimation(color: Color(0XFF38A4F8)),
        //     PulseAnimation(color: Color(0xFFF8B425)),
        //     PulseAnimation(color: Color(0xFFEC4561)),
        //     PulseAnimation(color: Color(0xFF343A40)),
        //   ],
        // ),
      ],
    );
  }
}
