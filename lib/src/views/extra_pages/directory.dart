import 'package:admin_dashboard/src/constant/color.dart';
import 'package:admin_dashboard/src/constant/icons.dart';
import 'package:admin_dashboard/src/constant/theme.dart';
import 'package:admin_dashboard/src/utils/responsive.dart';
import 'package:admin_dashboard/src/widget/svg_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutterx/flutterx.dart';

class DirectoryPage extends StatefulWidget {
  const DirectoryPage({Key? key}) : super(key: key);

  @override
  State<DirectoryPage> createState() => _DirectoryPageState();
}

class _DirectoryPageState extends State<DirectoryPage> {
  final nameList = [
    "Jerome A. Hebert",
    "Adam V. Acker",
    "Stanley M. Dyke",
    "Ben J. Mathison",
    "John V. Bailey",
    "Antonio J. Thomas",
    "Jerome A. Hebert",
    "Adam V. Acker",
    "Stanley M. Dyke"
  ];
  final photoList = [
    "https://image.shutterstock.com/image-photo/young-beautiful-happy-businesswoman-sitting-260nw-165623561.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR1my37SvAuEZ3wqzRRcSlmQvdZS3V5r9rvFw&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS_dn2jhjbm1AvtfQUI1uE31guOtRV_M2zMzA&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSobvnMKSeJSKrg0DjnaSC4llKa-4wxRDDK4w&usqp=CAU",
    "https://images.unsplash.com/photo-1573496359142-b8d87734a5a2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8cHJvZmVzc2lvbmFsJTIwd29tYW58ZW58MHx8MHx8&w=1000&q=80",
    "https://image.shutterstock.com/image-photo/young-beautiful-happy-businesswoman-sitting-260nw-165623561.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR1my37SvAuEZ3wqzRRcSlmQvdZS3V5r9rvFw&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS_dn2jhjbm1AvtfQUI1uE31guOtRV_M2zMzA&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSobvnMKSeJSKrg0DjnaSC4llKa-4wxRDDK4w&usqp=CAU",
  ];
  final emailList = [
    "Jerome@fdash.com",
    "Adam@fdash.com",
    "Stanley@fdash.com",
    "Ben@fdash.com",
    "John@fdash.com",
    "Antonio@fdash.com",
    "Jerome@fdash.com",
    "Adam@fdash.com",
    "Stanley@fdash.com"
  ];

  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    return Responsive.isMobile(context)
        ? Wrap(
            runSpacing: 20.0,
            children: List.generate(9, (index) => _profileCard(index)),
          )
        : Responsive.isTablet(context)
            ? Wrap(
                spacing: 20.0,
                runSpacing: 20.0,
                children: List.generate(
                  9,
                  (index) => SizedBox(
                    width: MediaQuery.of(context).size.width / 2 - 34,
                    child: _profileCard(index),
                  ),
                ),
              )
            : Wrap(
                spacing: 20.0,
                runSpacing: 20.0,
                children: List.generate(
                  9,
                  (index) => SizedBox(
                    width: MediaQuery.of(context).size.width < 1300
                        ? (MediaQuery.of(context).size.width - 308) / 2
                        : (MediaQuery.of(context).size.width - 328) / 3,
                    child: _profileCard(index),
                  ),
                ),
              );
  }

  Widget _profileCard(int index) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 44,
                  backgroundColor: Colors.grey.shade300,
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(
                      photoList[index],
                    ),
                    radius: 40,
                  ),
                ),
                FxBox.w16,
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        nameList[index],
                        softWrap: true,
                        maxLines: 2,
                        style: const TextStyle(
                          color: ColorConst.primary,
                          fontSize: 19,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      Text(
                        "Creative Director",
                        style: TextStyle(
                          color: isDark
                              ? ColorConst.darkFontColor
                              : ColorConst.lightFontColor,
                        ),
                      ),
                      FxBox.h8,
                      Text(
                        emailList[index],
                        style: TextStyle(
                          color: isDark
                              ? ColorConst.darkFontColor
                              : ColorConst.lightFontColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                FxBox.w24,
                Column(
                  children: [
                    const CircleAvatar(
                      radius: 15,
                      backgroundColor: ColorConst.primary,
                      child: SvgIcon(
                        icon: IconlyBroken.facebook,
                        color: ColorConst.white,
                        size: 14.0,
                      ),
                    ),
                    FxBox.h10,
                    const CircleAvatar(
                      radius: 15,
                      backgroundColor: ColorConst.blue,
                      child: SvgIcon(
                        icon: IconlyBroken.twitter,
                        color: ColorConst.white,
                        size: 14.0,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Divider(
              color: Colors.grey.shade300,
              height: 36.0,
            ),
            RichText(
              text: TextSpan(
                text:
                    'Intro : At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis atque corrupti quos dolores et...  ',
                style: DefaultTextStyle.of(context).style,
                children: const <TextSpan>[
                  TextSpan(
                    text: 'Read More',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: ColorConst.primary,
                    ),
                    mouseCursor: SystemMouseCursors.click,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
