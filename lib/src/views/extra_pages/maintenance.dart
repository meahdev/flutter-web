// ignore_for_file: unnecessary_string_interpolations, deprecated_member_use, depend_on_referenced_packages, unnecessary_brace_in_string_interps

import 'package:admin_dashboard/src/constant/string.dart';
import 'package:admin_dashboard/src/utils/responsive.dart';
import 'package:flutter/material.dart';
import 'package:flutterx/flutterx.dart';
import 'package:url_launcher/url_launcher.dart';

class Maintenance extends StatefulWidget {
  const Maintenance({Key? key}) : super(key: key);

  @override
  State<Maintenance> createState() => _MaintenanceState();
}

class _MaintenanceState extends State<Maintenance> {
  @override
  Widget build(BuildContext context) {
    return Responsive.isWeb(context) || Responsive.isTablet(context)
        ? Container(
            margin: const EdgeInsets.all(30),
            child: Center(
              child: Column(
                children: [
                  const Text(
                    "${Strings.siddhatva}",
                    style: TextStyle(
                        fontSize: 25,
                        color: Color(0XFF5B626B),
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                      height: MediaQuery.of(context).size.height * .3,
                      width: MediaQuery.of(context).size.width * .75,
                      child: Image.asset("assets/images/image1.png")),
                  const Text(
                    "Site is Under Maintenance",
                    style: TextStyle(
                        color: Color(0XFF5B626B),
                        fontWeight: FontWeight.bold,
                        fontSize: 25),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  const Text(
                    "Please check back in sometime.",
                    style: TextStyle(color: Color(0XFF5B626B)),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _container(
                        Icons.flight_land_outlined,
                        "WHY IS THE SITE DOWN?",
                        "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration.",
                        "",
                      ),
                      FxBox.w6,
                      _container(
                        Icons.timer,
                        "WHAT IS THE DOWNTIME?",
                        "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical.",
                        "",
                      ),
                      FxBox.w6,
                      _container(
                          Icons.email,
                          "DO YOU NEED SUPPORT?",
                          "If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embar..",
                          "no-reply@domain.com"),
                    ],
                  )
                ],
              ),
            ),
          )
        : Container(
            margin: const EdgeInsets.all(30),
            child: Center(
              child: Column(
                children: [
                  const Text(
                    "${Strings.siddhatva}",
                    style: TextStyle(
                        fontSize: 25,
                        color: Color(0XFF5B626B),
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                      height: MediaQuery.of(context).size.height * .3,
                      width: MediaQuery.of(context).size.width * .75,
                      child: Image.asset("assets/images/image1.png")),
                  const Text(
                    "Site is Under Maintenance",
                    style: TextStyle(
                        color: Color(0XFF5B626B),
                        fontWeight: FontWeight.bold,
                        fontSize: 25),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  const Text(
                    "Please check back in sometime.",
                    style: TextStyle(color: Color(0XFF5B626B)),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  _containermobile(
                    Icons.flight_land_outlined,
                    "WHY IS THE SITE DOWN?",
                    "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration.",
                    "  ",
                  ),
                  FxBox.h20,
                  _containermobile(
                    Icons.timer,
                    "WHAT IS THE DOWNTIME?",
                    "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical.",
                    "",
                  ),
                  FxBox.h20,
                  _containermobile(
                      Icons.email,
                      "DO YOU NEED SUPPORT?",
                      "If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embar..",
                      "no-reply@domain.com")
                ],
              ),
            ),
          );
  }

  Widget _container(
      IconData? icon, String smallText, String paragraph, String email) {
    TextStyle style = const TextStyle(
        color: Color(0XFF5B626B), fontWeight: FontWeight.bold, fontSize: 15);
    return SizedBox(
      width: MediaQuery.of(context).size.width * .19,
      child: Card(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            children: [
              Icon(icon),
              FxBox.h16,
              Text(smallText, style: style),
              FxBox.h16,
              Text(
                paragraph,
                style: const TextStyle(color: Color(0XFF5B626B)),
              ),
              email.isNotEmpty
                  ? GestureDetector(
                      onTap: () async {
                        String email = 'no-reply@domain.com';
                        String subject = 'This is a  email';
                        String body = 'Hello Mr./Mrs.';

                        String emailUrl =
                            "mailto:$email?subject=$subject&body=$body";

                        if (await canLaunch(emailUrl)) {
                          await launch(emailUrl);
                        } else {
                          throw "Error occured sending an email";
                        }
                      },
                      child: Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            '${email}',
                            style: const TextStyle(
                                color: Colors.indigo,
                                fontWeight: FontWeight.bold),
                          )))
                  : const SizedBox.shrink(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _containermobile(
      IconData? icon, String smallText, String paragraph, String email) {
    TextStyle style = const TextStyle(
        color: Color(0XFF5B626B), fontWeight: FontWeight.bold, fontSize: 15);
    return SizedBox(
      width: MediaQuery.of(context).size.width * .65,
      child: Card(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            children: [
              Icon(icon),
              FxBox.h16,
              Text(smallText, style: style),
              FxBox.h16,
              Text(
                paragraph,
                style: const TextStyle(color: Color(0XFF5B626B)),
              ),
              email.isNotEmpty
                  ? GestureDetector(
                      onTap: () async {
                        String email = 'no-reply@domain.com';
                        String subject = 'This is a  email';
                        String body = 'Hello Mr./Mrs.';

                        String emailUrl =
                            "mailto:$email?subject=$subject&body=$body";

                        if (await canLaunch(emailUrl)) {
                          await launch(emailUrl);
                        } else {
                          throw "Error occured sending an email";
                        }
                      },
                      child: Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            '${email}',
                            style: const TextStyle(
                                color: Colors.indigo,
                                fontWeight: FontWeight.bold),
                          )))
                  : const SizedBox.shrink(),
            ],
          ),
        ),
      ),
    );
  }
}
