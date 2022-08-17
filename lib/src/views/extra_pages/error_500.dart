import 'package:admin_dashboard/src/constant/color.dart';
import 'package:admin_dashboard/src/utils/responsive.dart';
import 'package:flutter/material.dart';
import 'package:flutterx/flutterx.dart';

class Error500 extends StatefulWidget {
  const Error500({Key? key}) : super(key: key);

  @override
  State<Error500> createState() => _Error500State();
}

class _Error500State extends State<Error500> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Responsive.isWeb(context)
                ? SizedBox(
                    height: MediaQuery.of(context).size.height * .55,
                    width: MediaQuery.of(context).size.width * .65,
                    child: Card(
                      color: ColorConst.white,
                      child: Padding(
                        padding: const EdgeInsets.all(70),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text(
                                    "500",
                                    style: TextStyle(
                                        color: ColorConst.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 80),
                                  ),
                                  const Text(
                                    "Internal Server Error",
                                    style: TextStyle(
                                        color: ColorConst.textColor,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  const Text(
                                      "It will be as simple as Occidental in fact, it will be Occidental to an English person"),
                                  const SizedBox(
                                    height: 50,
                                  ),
                                  FxButton(borderRadius: 4,
                                     text: "Back to Dashboard",
                                      onPressed: () {},
                                      icon: const Icon(
                                        Icons.home,
                                        color: ColorConst.white,
                                        size: 15,
                                      ),
                                      )
                                ],
                              ),
                            ),
                            SizedBox(
                                height: MediaQuery.of(context).size.height * .5,
                                width: MediaQuery.of(context).size.width * .25,
                                child: Image.asset("assets/images/image.png")),
                          ],
                        ),
                      ),
                    ),
                  )
                : SizedBox(
                    height: MediaQuery.of(context).size.height * .75,
                    width: MediaQuery.of(context).size.height * .70,
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.all(30),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "500",
                              style: TextStyle(
                                  color: ColorConst.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 80),
                            ),
                            const Text(
                              "Internal Server Error",
                              style: TextStyle(
                                  color: ColorConst.textColor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            ),
                            FxBox.h2,
                            const Text(
                                "It will be as simple as Occidental in fact, it will be"),
                            const Text("Occidental to an English person"),
                           FxBox.h52,
                            FxButton(borderRadius: 4,
                              text: " Back to Dashboard",
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                icon: const Icon(
                                  Icons.home,
                                  color: ColorConst.white,
                                  size: 15,
                                ),
                               ),
                           FxBox.h20,
                            SizedBox(
                                height: MediaQuery.of(context).size.height * .3,
                                width: MediaQuery.of(context).size.width * .75,
                                child: Image.asset("assets/images/image.png")),
                          ],
                        ),
                      ),
                    ),
                  )
          ]),
    );
  }
}
