// ignore_for_file: sized_box_for_whitespace

import 'package:admin_dashboard/src/utils/responsive.dart';
import 'package:flutter/material.dart';

class Error404 extends StatefulWidget {
  const Error404({Key? key}) : super(key: key);

  @override
  State<Error404> createState() => _Error404State();
}

class _Error404State extends State<Error404> {
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
                ? Container(
                    height: MediaQuery.of(context).size.height * .55,
                    width: MediaQuery.of(context).size.width * .60,
                    child: Card(
                      color: Colors.white,
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
                                    "404!",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 80),
                                  ),
                                  const Text(
                                    "Sorry, page not found",
                                    style: TextStyle(
                                        color: Color(0XFF5B626B),
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
                                  ElevatedButton.icon(
                                      style: ButtonStyle(
                                          backgroundColor:
                                              MaterialStateProperty.all(
                                                  Colors.indigo.shade400),
                                          shape: MaterialStateProperty.all(
                                              RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          6)))),
                                      onPressed: () {},
                                      icon: const Icon(
                                        Icons.home,
                                        color: Colors.white,
                                        size: 15,
                                      ),
                                      label: const Text(
                                        " Back to Dashboard",
                                        style: TextStyle(color: Colors.white),
                                      ))
                                ],
                              ),
                            ),
                            SizedBox(
                                height: MediaQuery.of(context).size.height * .5,
                                width: MediaQuery.of(context).size.width * .25,
                                //  height: 260,width: 390,

                                child: Image.asset("assets/images/image.png")),
                          ],
                        ),
                      ),
                    ),
                  )
                : Container(
                    height: MediaQuery.of(context).size.height * .75,
                    width: MediaQuery.of(context).size.height * .70,
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.all(30),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "404!",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 80),
                            ),
                            const Text(
                              "Sorry, page not found",
                              style: TextStyle(
                                  color: Color(0XFF5B626B),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            const Text(
                                "It will be as simple as Occidental in fact, it will be"),
                            const Text("Occidental to an English person"),
                            const SizedBox(
                              height: 50,
                            ),
                            ElevatedButton.icon(
                                style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(
                                        Colors.indigo.shade400),
                                    shape: MaterialStateProperty.all(
                                        RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(6)))),
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                icon: const Icon(
                                  Icons.home,
                                  color: Colors.white,
                                  size: 15,
                                ),
                                label: const Text(
                                  " Back to Dashboard",
                                  style: TextStyle(color: Colors.white),
                                )),
                            const SizedBox(
                              height: 20,
                            ),
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
