import 'package:flutter/material.dart';
import 'package:flutterx/flutterx.dart';

class Loaders extends StatefulWidget {
  const Loaders({Key? key}) : super(key: key);

  @override
  State<Loaders> createState() => _LoadersState();
}

class _LoadersState extends State<Loaders> {
  // final TextEditingController _dateStyle1 = TextEditingController();
  // final TextEditingController _dateStyle2 = TextEditingController();
  // final TextEditingController _datetime = TextEditingController();
  // final TextEditingController _currency = TextEditingController();
  // final TextEditingController _repeat = TextEditingController();
  // final TextEditingController _mask = TextEditingController();
  // final TextEditingController _ipAddress = TextEditingController();
  // final TextEditingController _email = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FxBox.h20,
        _cardWidget(
            label: 'Spining circle Loader',
            widget: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: List.generate(
                  colors.length,
                  (index) => FxLoader(
                        loaderType: LoaderType.basicLoader,
                        color: colors.elementAt(index),
                        size: 35,
                      )),
            )),
        FxBox.h20,
        _cardWidget(
            label: 'Spining circle Loader',
            widget: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: List.generate(
                  colors.length,
                  (index) => FxLoader.spinningLinesLoader(
                        color: colors.elementAt(index),
                        itemCount: 5,
                        size: 50,
                        lineWidth: 2,
                      )),
            )),
        FxBox.h20,
        _cardWidget(
          label: 'Wave Loader',
          widget: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: List.generate(
                colors.length,
                (index) => FxLoader.waveLoader(
                      color: colors.elementAt(index),
                      itemCount: 5,
                      size: 40,
                      wavetype: WaveType.start,
                    )),
          ),
        ),
        FxBox.h20,
        _cardWidget(
            label: 'Circle Loader',
            widget: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: List.generate(
                  colors.length,
                  (index) => FxLoader(
                        loaderType: LoaderType.circleLoader,
                        color: colors.elementAt(index),
                        itemCount: 5,
                        size: 50,
                        wavetype: WaveType.start,
                      )),
            )),
        FxBox.h20,
        _cardWidget(
            label: 'Cube Grid Loader',
            widget: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: List.generate(
                  colors.length,
                  (index) => FxLoader(
                        loaderType: LoaderType.cubeGridLoader,
                        color: colors.elementAt(index),
                        itemCount: 5,
                        size: 50,
                        wavetype: WaveType.start,
                      )),
            )),
        FxBox.h20,
        _cardWidget(
            label: 'Double Bounce Loader',
            widget: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: List.generate(
                  colors.length,
                  (index) => FxLoader(
                        loaderType: LoaderType.doubleBounceLoader,
                        color: colors.elementAt(index),
                        itemCount: 5,
                        size: 50,
                        wavetype: WaveType.start,
                      )),
            )),
        FxBox.h20,
        _cardWidget(
            label: 'Fading circle Loader',
            widget: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: List.generate(
                  colors.length,
                  (index) => FxLoader(
                        loaderType: LoaderType.fadingCircleLoader,
                        color: colors.elementAt(index),
                        itemCount: 5,
                        size: 50,
                        wavetype: WaveType.start,
                      )),
            )),
        FxBox.h20,
        _cardWidget(
            label: 'Pulse circle Loader',
            widget: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: List.generate(
                  colors.length,
                  (index) => FxLoader(
                        loaderType: LoaderType.pulseCircleLoader,
                        color: colors.elementAt(index),
                        itemCount: 5,
                        size: 50,
                        wavetype: WaveType.start,
                      )),
            )),
        FxBox.h20,
        _cardWidget(
            label: 'Rotating circle Loader',
            widget: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: List.generate(
                  colors.length,
                  (index) => FxLoader(
                        loaderType: LoaderType.rotatingCircleLoader,
                        color: colors.elementAt(index),
                        itemCount: 5,
                        size: 50,
                        wavetype: WaveType.start,
                      )),
            )),
        FxBox.h20,
        _cardWidget(
            label: 'Rotating Plain Square Loader',
            widget: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: List.generate(
                  colors.length,
                  (index) => FxLoader(
                        loaderType: LoaderType.rotatingPlainLoader,
                        color: colors.elementAt(index),
                        itemCount: 5,
                        size: 50,
                        wavetype: WaveType.start,
                      )),
            )),
      ],
    );

    // return Padding(
    // padding: const EdgeInsets.all(8.0),
    //   child: Column(
    //     children: [
    //       CustomTextField(
    //         controller: _dateStyle1,
    //         hintText: 'dd/mm/yyyy',
    //         border: OutlineInputBorder(
    //             borderRadius: BorderRadius.circular(3),
    //             borderSide: const BorderSide(color: Color(0xFFced4da))),
    //         isDense: true,
    //         contentPadding: const EdgeInsets.only(
    //           left: 15,
    //           right: 15,
    //           top: 10,
    //         ),
    //       ),
    //       FxBox.h20,
    //       CustomTextField(
    //         controller: _dateStyle2,
    //         hintText: 'mm/dd/yyyy',
    //         border: OutlineInputBorder(
    //             borderRadius: BorderRadius.circular(3),
    //             borderSide: const BorderSide(color: Color(0xFFced4da))),
    //         isDense: true,
    //         contentPadding: const EdgeInsets.symmetric(
    //           horizontal: 15,
    //           vertical: 10,
    //         ),
    //       ),
    //       FxBox.h20,
    //       CustomTextField(
    //         controller: _datetime,
    //         hintText: 'yyyy-mm-dd' 'T' 'HH:MM:ss',
    //         border: OutlineInputBorder(
    //             borderRadius: BorderRadius.circular(3),
    //             borderSide: const BorderSide(color: Color(0xFFced4da))),
    //         isDense: true,
    //         contentPadding: const EdgeInsets.symmetric(
    //           horizontal: 15,
    //           vertical: 10,
    //         ),
    //       ),
    //       FxBox.h20,
    //       CustomTextField(
    //         controller: _currency,
    //         hintText: '\$ 0.00',
    //         border: OutlineInputBorder(
    //             borderRadius: BorderRadius.circular(3),
    //             borderSide: const BorderSide(color: Color(0xFFced4da))),
    //         isDense: true,
    //         contentPadding: const EdgeInsets.symmetric(
    //           horizontal: 15,
    //           vertical: 10,
    //         ),
    //       ),
    //       FxBox.h20,
    //       CustomTextField(
    //         controller: _repeat,
    //         hintText: '9999999999',
    //         border: OutlineInputBorder(
    //             borderRadius: BorderRadius.circular(3),
    //             borderSide: const BorderSide(color: Color(0xFFced4da))),
    //         isDense: true,
    //         contentPadding: const EdgeInsets.symmetric(
    //           horizontal: 15,
    //           vertical: 10,
    //         ),
    //       ),
    //       FxBox.h20,
    //       CustomTextField(
    //         controller: _mask,
    //         hintText: '99-9999999',
    //         border: OutlineInputBorder(
    //             borderRadius: BorderRadius.circular(3),
    //             borderSide: const BorderSide(color: Color(0xFFced4da))),
    //         isDense: true,
    //         contentPadding: const EdgeInsets.symmetric(
    //           horizontal: 15,
    //           vertical: 10,
    //         ),
    //       ),
    //       FxBox.h20,
    //       CustomTextField(
    //         controller: _ipAddress,
    //         hintText: '99.99.99.99',
    //         border: OutlineInputBorder(
    //             borderRadius: BorderRadius.circular(3),
    //             borderSide: const BorderSide(color: Color(0xFFced4da))),
    //         isDense: true,
    //         contentPadding: const EdgeInsets.symmetric(
    //           horizontal: 15,
    //           vertical: 10,
    //         ),
    //       ),
    //       FxBox.h20,
    //       CustomTextField(
    //         controller: _email,
    //         hintText: '_@_._',
    //         border: OutlineInputBorder(
    //             borderRadius: BorderRadius.circular(3),
    //             borderSide: const BorderSide(color: Color(0xFFced4da))),
    //         isDense: true,
    //         contentPadding: const EdgeInsets.symmetric(
    //           horizontal: 15,
    //           vertical: 10,
    //         ),
    //       ),
    //       FxBox.h20,
    //     ],
    //   ),
    // );
  }

  final List<Color> colors = const [
    Color(0xFF626ED4),
    Color(0xFFE9ECEF),
    Color(0xFF38A4F8),
    Color(0xFFF8B425),
    Color(0xFFEC4561),
    Color(0xFF343A40),
  ];
// return Column(
//       crossAxisAlignment: CrossAxisAlignment.center,
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         FxBox.h20,
//         _cardWidget(
//             label: 'Spining circle Loader',
//             widget: Row(
//               crossAxisAlignment: CrossAxisAlignment.center,
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: List.generate(
//                   colors.length,
//                   (index) => FxLoader(
//                         loaderType: LoaderType.basicLoader,
//                         color: colors.elementAt(index),
//                         size: 35,
//                       )),
//             )),
//         FxBox.h20,
//         _cardWidget(
//             label: 'Spining circle Loader',
//             widget: Row(
//               crossAxisAlignment: CrossAxisAlignment.center,
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: List.generate(
//                   colors.length,
//                   (index) => FxLoader.spinningLinesLoader(
//                         color: colors.elementAt(index),
//                         itemCount: 5,
//                         size: 50,
//                         lineWidth: 2,
//                       )),
//             )),
//         FxBox.h20,
//         _cardWidget(
//           label: 'Wave Loader',
//           widget: Row(
//             crossAxisAlignment: CrossAxisAlignment.center,
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: List.generate(
//                 colors.length,
//                 (index) => FxLoader.waveLoader(
//                       color: colors.elementAt(index),
//                       itemCount: 5,
//                       size: 40,
//                       wavetype: WaveType.start,
//                     )),
//           ),
//         ),
//         FxBox.h20,
//         _cardWidget(
//             label: 'Circle Loader',
//             widget: Row(
//               crossAxisAlignment: CrossAxisAlignment.center,
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: List.generate(
//                   colors.length,
//                   (index) => FxLoader(
//                         loaderType: LoaderType.circleLoader,
//                         color: colors.elementAt(index),
//                         itemCount: 5,
//                         size: 50,
//                         wavetype: WaveType.start,
//                       )),
//             )),
//         FxBox.h20,
//         _cardWidget(
//             label: 'Cube Grid Loader',
//             widget: Row(
//               crossAxisAlignment: CrossAxisAlignment.center,
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: List.generate(
//                   colors.length,
//                   (index) => FxLoader(
//                         loaderType: LoaderType.cubeGridLoader,
//                         color: colors.elementAt(index),
//                         itemCount: 5,
//                         size: 50,
//                         wavetype: WaveType.start,
//                       )),
//             )),
//         FxBox.h20,
//         _cardWidget(
//             label: 'Double Bounce Loader',
//             widget: Row(
//               crossAxisAlignment: CrossAxisAlignment.center,
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: List.generate(
//                   colors.length,
//                   (index) => FxLoader(
//                         loaderType: LoaderType.doubleBounceLoader,
//                         color: colors.elementAt(index),
//                         itemCount: 5,
//                         size: 50,
//                         wavetype: WaveType.start,
//                       )),
//             )),
//         FxBox.h20,
//         _cardWidget(
//             label: 'Fading circle Loader',
//             widget: Row(
//               crossAxisAlignment: CrossAxisAlignment.center,
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: List.generate(
//                   colors.length,
//                   (index) => FxLoader(
//                         loaderType: LoaderType.fadingCircleLoader,
//                         color: colors.elementAt(index),
//                         itemCount: 5,
//                         size: 50,
//                         wavetype: WaveType.start,
//                       )),
//             )),
//         FxBox.h20,
//         _cardWidget(
//             label: 'Pulse circle Loader',
//             widget: Row(
//               crossAxisAlignment: CrossAxisAlignment.center,
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: List.generate(
//                   colors.length,
//                   (index) => FxLoader(
//                         loaderType: LoaderType.pulseCircleLoader,
//                         color: colors.elementAt(index),
//                         itemCount: 5,
//                         size: 50,
//                         wavetype: WaveType.start,
//                       )),
//             )),
//         FxBox.h20,
//         _cardWidget(
//             label: 'Rotating circle Loader',
//             widget: Row(
//               crossAxisAlignment: CrossAxisAlignment.center,
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: List.generate(
//                   colors.length,
//                   (index) => FxLoader(
//                         loaderType: LoaderType.rotatingCircleLoader,
//                         color: colors.elementAt(index),
//                         itemCount: 5,
//                         size: 50,
//                         wavetype: WaveType.start,
//                       )),
//             )),
//         FxBox.h20,
//         _cardWidget(
//             label: 'Rotating Plain Square Loader',
//             widget: Row(
//               crossAxisAlignment: CrossAxisAlignment.center,
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: List.generate(
//                   colors.length,
//                   (index) => FxLoader(
//                         loaderType: LoaderType.rotatingPlainLoader,
//                         color: colors.elementAt(index),
//                         itemCount: 5,
//                         size: 50,
//                         wavetype: WaveType.start,
//                       )),
//             )),
//       ],
//     );

  Widget _cardWidget({required String label, required Widget widget}) {
    return Card(
      color: Colors.white,
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text('    $label',
            style: const TextStyle(
                color: Color(0XFF5B626B),
                fontWeight: FontWeight.w600,
                fontSize: 16)),
        FxBox.h12,
        widget,
        FxBox.h12
      ]),
    );
  }
}
