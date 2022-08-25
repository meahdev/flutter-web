import 'package:admin_dashboard/src/constant/color.dart';
import 'package:admin_dashboard/src/constant/icons.dart';
import 'package:admin_dashboard/src/utils/hover.dart';
import 'package:admin_dashboard/src/utils/responsive.dart';
import 'package:admin_dashboard/src/widget/svg_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutterx/flutterx.dart';

class Gallery extends StatefulWidget {
  const Gallery({Key? key}) : super(key: key);

  @override
  State<Gallery> createState() => _GalleryState();
}

class _GalleryState extends State<Gallery> {
  final photoList = [
    "https://images.pexels.com/photos/1433052/pexels-photo-1433052.jpeg",
    "https://images.pexels.com/photos/9002006/pexels-photo-9002006.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "https://images.pexels.com/photos/8476725/pexels-photo-8476725.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "https://images.pexels.com/photos/4976387/pexels-photo-4976387.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "https://images.pexels.com/photos/10570696/pexels-photo-10570696.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "https://images.pexels.com/photos/6442132/pexels-photo-6442132.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "https://images.pexels.com/photos/9292920/pexels-photo-9292920.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "https://images.pexels.com/photos/11253327/pexels-photo-11253327.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "https://images.pexels.com/photos/11262377/pexels-photo-11262377.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
    "https://images.pexels.com/photos/8932304/pexels-photo-8932304.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
    "https://images.pexels.com/photos/10069112/pexels-photo-10069112.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
    "https://images.pexels.com/photos/11589110/pexels-photo-11589110.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
  ];

  final headingList = [
    "Open Imagination",
    "Locked Steel Gate",
    "Mack SunnGlass",
    "Morning Duew",
    "Consol Activity",
    "Shake It",
    "BackPpack Content",
    "Sunset Bulb Glow",
    "Open Imagination",
    "Console Activity",
    "Share It",
    "Open Imagination",
  ];

  final nameList = [
    "Abhi patel",
    "Keval Gajera",
    "Vishal Makwana",
    "Parth Surani",
    "Naman Rajodiya",
    "Harsh Chodvadiya",
    "Akash Rathod",
    "Anup chopde",
    "Makwana Parth",
    "Vignesh patel",
    "Mahesh Patel",
    "Akshay Malaviya",
  ];

  int selecteIndex = 0;
  bool isHover = false;

  hoveractive(hoverState, index) {
    setState(() {
      isShow[index] = true;
    });
  }

  hoverunactive(hoverState, index) {
    setState(() {
      isShow[index] = false;
    });
  }

  List<bool> isShow = List.generate(12, (index) => false);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // Responsive.isMobile(context)
        // ?
        GridView.builder(
          shrinkWrap: true,
          itemCount: photoList.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: Responsive.isWeb(context)
                ? 4
                : Responsive.isTablet(context)
                    ? 2
                    : 1,
            crossAxisSpacing: 24.0,
            mainAxisSpacing: 24.0,
            childAspectRatio: 3 / 2,
          ),
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                setState(() => selecteIndex = index);
                showPopUp();
              },
              child: FxHover(
                builder: (isHover) {
                  return Container(
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                      color: isHover ? ColorConst.black.withOpacity(0.7) : null,
                    ),
                    padding: isHover ? const EdgeInsets.all(20) : null,
                    child: isHover
                        ? Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Text(
                                  headingList[index],
                                  style: const TextStyle(
                                    fontWeight: FontWeight.w600,
                                    color: ColorConst.white,
                                    fontSize: 18,
                                  ),
                                ),
                              ),
                              const Spacer(),
                              Row(
                                children: [
                                  CircleAvatar(
                                    backgroundImage: NetworkImage(
                                      photoList[index],
                                    ),
                                  ),
                                  FxBox.w10,
                                  Expanded(
                                    child: Text(
                                      nameList[index],
                                      style: const TextStyle(
                                        color: ColorConst.white,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 15,
                                      ),
                                    ),
                                  )
                                ],
                              )
                            ],
                          )
                        : Image.network(
                            photoList[index],
                            alignment: Alignment.topCenter,
                            fit: BoxFit.cover,
                          ),
                  );
                },
              ),
            );
          },
        )
        // Wrap(
        //     children: List.generate(
        //       12,
        //       (index) => Container(
        //         margin: const EdgeInsets.all(12),
        //         width: MediaQuery.of(context).size.width * .70,
        //         height: MediaQuery.of(context).size.height * .30,
        //         child: GestureDetector(
        //           onTap: () {
        //             setState(() => selecteIndex = index);
        //             popup();
        //           },
        //           child: Container(
        //             clipBehavior: Clip.hardEdge,
        //             decoration: BoxDecoration(
        //               borderRadius: BorderRadius.circular(8),
        //               color: Colors.grey,
        //             ),
        //             child: MouseRegion(
        //               onEnter: (event) => hoveractive(true, index),
        //               onExit: (event) => hoverunactive(false, index),
        //               child: isShow[index]
        //                   ? Container(
        //                       color: Colors.black.withOpacity(0.7),
        //                       padding: const EdgeInsets.all(20),
        //                       child: Column(
        //                         crossAxisAlignment:
        //                             CrossAxisAlignment.start,
        //                         children: [
        //                           Text(
        //                             headingList[index],
        //                             style: const TextStyle(
        //                               color: ColorConst.white,
        //                               fontWeight: FontWeight.bold,
        //                               fontSize: 20,
        //                             ),
        //                           ),
        //                           const Spacer(),
        //                           Row(
        //                             children: [
        //                               CircleAvatar(
        //                                 backgroundImage: NetworkImage(
        //                                   photoList[index],
        //                                 ),
        //                               ),
        //                               FxBox.w10,
        //                               Text(
        //                                 nameList[index],
        //                                 style: const TextStyle(
        //                                   color: ColorConst.white,
        //                                   fontWeight: FontWeight.bold,
        //                                   fontSize: 18,
        //                                 ),
        //                               )
        //                             ],
        //                           )
        //                         ],
        //                       ),
        //                     )
        //                   : Image.network(
        //                       photoList[index],
        //                       fit: BoxFit.cover,
        //                     ),
        //             ),
        //           ),
        //         ),
        //       ),
        //     ),
        //   )

        // : Responsive.isTablet(context)
        //     ? Wrap(
        //         children: List.generate(
        //           12,
        //           (index) => Container(
        //             margin: const EdgeInsets.all(12),
        //             width: MediaQuery.of(context).size.width * .35,
        //             height: MediaQuery.of(context).size.height * .30,
        //             child: GestureDetector(
        //               onTap: () {
        //                 setState(() => selecteIndex = index);
        //                 popup2();
        //               },
        //               child: Container(
        //                 clipBehavior: Clip.hardEdge,
        //                 decoration: BoxDecoration(
        //                   borderRadius: BorderRadius.circular(8),
        //                   color: Colors.grey,
        //                 ),
        //                 child: MouseRegion(
        //                   onEnter: (event) => hoveractive(true, index),
        //                   onExit: (event) => hoverunactive(false, index),
        //                   child: isShow[index]
        //                       ? Container(
        //                           color: Colors.black.withOpacity(0.7),
        //                           padding: const EdgeInsets.all(20),
        //                           child: Column(
        //                             crossAxisAlignment:
        //                                 CrossAxisAlignment.start,
        //                             children: [
        //                               Text(
        //                                 headingList[index],
        //                                 style: const TextStyle(
        //                                   color: ColorConst.white,
        //                                   fontWeight: FontWeight.bold,
        //                                   fontSize: 20,
        //                                 ),
        //                               ),
        //                               const Spacer(),
        //                               Row(
        //                                 children: [
        //                                   CircleAvatar(
        //                                     backgroundImage: NetworkImage(
        //                                       photoList[index],
        //                                     ),
        //                                   ),
        //                                   FxBox.w10,
        //                                   Text(
        //                                     nameList[index],
        //                                     style: const TextStyle(
        //                                       color: ColorConst.white,
        //                                       fontWeight: FontWeight.bold,
        //                                       fontSize: 18,
        //                                     ),
        //                                   )
        //                                 ],
        //                               )
        //                             ],
        //                           ),
        //                         )
        //                       : Image.network(
        //                           photoList[index],
        //                           fit: BoxFit.cover,
        //                         ),
        //                 ),
        //               ),
        //             ),
        //           ),
        //         ),
        //       )
        //     : Wrap(
        //         children: List.generate(
        //           12,
        //           (index) => Container(
        //             margin: const EdgeInsets.all(12),
        //             width: MediaQuery.of(context).size.width * .17,
        //             height: MediaQuery.of(context).size.height * .30,
        //             child: GestureDetector(
        //               onTap: () {
        //                 setState(() => selecteIndex = index);
        //                 popup3();
        //               },
        //               child: Container(
        //                 clipBehavior: Clip.hardEdge,
        //                 decoration: BoxDecoration(
        //                   borderRadius: BorderRadius.circular(8),
        //                   color: Colors.grey,
        //                 ),
        //                 child: MouseRegion(
        //                   onEnter: (event) => hoveractive(true, index),
        //                   onExit: (event) => hoverunactive(false, index),
        //                   child: isShow[index]
        //                       ? Container(
        //                           color: Colors.black.withOpacity(0.7),
        //                           padding: const EdgeInsets.all(20),
        //                           child: Column(
        //                             crossAxisAlignment:
        //                                 CrossAxisAlignment.start,
        //                             children: [
        //                               Text(
        //                                 headingList[index],
        //                                 style: const TextStyle(
        //                                   color: ColorConst.white,
        //                                   fontWeight: FontWeight.bold,
        //                                   fontSize: 20,
        //                                 ),
        //                               ),
        //                               const Spacer(),
        //                               Row(
        //                                 children: [
        //                                   CircleAvatar(
        //                                     backgroundImage: NetworkImage(
        //                                       photoList[index],
        //                                     ),
        //                                   ),
        //                                   FxBox.w10,
        //                                   Text(
        //                                     nameList[index],
        //                                     style: const TextStyle(
        //                                       color: ColorConst.white,
        //                                       fontWeight: FontWeight.bold,
        //                                       fontSize: 18,
        //                                     ),
        //                                   )
        //                                 ],
        //                               )
        //                             ],
        //                           ),
        //                         )
        //                       : Image.network(
        //                           photoList[index],
        //                           fit: BoxFit.cover,
        //                         ),
        //                 ),
        //               ),
        //             ),
        //           ),
        //         ),
        //       )
      ],
    );
  }

  Future<void> showPopUp() {
    return showDialog(
      context: context,
      builder: (context) {
        return Stack(
          alignment: Alignment.center,
          children: [
            Center(
              child: ConstrainedBox(
                constraints: BoxConstraints(
                    maxHeight: 560,
                    maxWidth: 720,
                    minHeight: 200,
                    minWidth: 200),
                child: Image.network(
                  photoList[selecteIndex],
                  fit: BoxFit.cover,
                  // height: 560,
                  // width: 720,
                ),
              ),
            ),
            // Column(
            // mainAxisSize: MainAxisSize.min,
            // crossAxisAlignment: CrossAxisAlignment.center,
            // mainAxisAlignment: MainAxisAlignment.center,
            // children: [
            // GestureDetector(
            //   onTap: () {
            //     Navigator.pop(context);
            //   },
            //   child: FxHover(
            //     builder: (isHover) {
            //       return SvgIcon(
            //         icon: IconlyBroken.closeSquare,
            //         color: isHover
            //             ? ColorConst.white
            //             : ColorConst.white.withOpacity(0.55),
            //       );
            //     },
            //   ),
            // ),
            // FxBox.h4,
            // Container(
            //   constraints: BoxConstraints(minHeight: 560, minWidth: 720
            //       // minHeight: Responsive.isMobile(context) ? 0.0 : 100.0,
            //       // minWidth: 720,
            //       // maxHeight: Responsive.isMobile(context)
            //       //     ? MediaQuery.of(context).size.height - 44
            //       //     : double.infinity,
            //       // maxWidth: Responsive.isMobile(context) ? 0.0 : 100.0,
            //       ),
            //   child: Image.network(
            //     photoList[selecteIndex],
            //     fit: BoxFit.cover,
            //   ),
            // ),
            // Row(
            //   // mainAxisSize: MainAxisSize.min,
            //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //   children: [
            //     Text(
            //       nameList[selecteIndex],
            //       style: const TextStyle(color: ColorConst.white),
            //     ),
            //     Text('$selecteIndex of ${photoList.length}',
            //         style: const TextStyle(color: ColorConst.white))
            //   ],
            // )
            //   ],
            // ),
            // Column(
            //   crossAxisAlignment: CrossAxisAlignment.end,
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: [
            //     GestureDetector(
            //       onTap: () {
            //         Navigator.pop(context);
            //       },
            //       child: FxHover(
            //         builder: (isHover) {
            //           return SvgIcon(
            //             icon: IconlyBroken.closeSquare,
            //             color: isHover
            //                 ? ColorConst.white
            //                 : ColorConst.white.withOpacity(0.55),
            //           );
            //         },
            //       ),
            //     ),
            //     FxBox.h4,
            //     Container(
            //       constraints: BoxConstraints(
            //         minHeight: Responsive.isMobile(context) ? 0.0 : 100.0,
            //         minWidth: 720,
            //         maxHeight: Responsive.isMobile(context)
            //             ? MediaQuery.of(context).size.height - 44
            //             : double.infinity,
            //       ),
            //       child: Image.network(
            //         photoList[selecteIndex],
            //         fit: BoxFit.contain,
            //       ),
            //     ),
            //     Row(
            //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //       children: [
            //         Text(
            //           nameList[selecteIndex],
            //           style: const TextStyle(color: ColorConst.white),
            //         ),
            //         Text('$selecteIndex of ${photoList.length}',
            //             style: const TextStyle(color: ColorConst.white))
            //       ],
            //     )
            //   ],
            // ),
            // Positioned(
            //   left: 24,
            //   child: Align(
            //     alignment: Alignment.centerLeft,
            //     child: GestureDetector(
            //       onTap: () {},
            //       child: FxHover(
            //         builder: (isHover) {
            //           return SvgIcon(
            //             icon: IconlyBroken.arrowLeftRound,
            //             color: isHover
            //                 ? ColorConst.white
            //                 : ColorConst.white.withOpacity(0.55),
            //             size: 38,
            //           );
            //         },
            //       ),
            //     ),
            //   ),
            // ),
            // Positioned(
            //   right: 24,
            //   child: Align(
            //     alignment: Alignment.centerRight,
            //     child: GestureDetector(
            //       onTap: () {},
            //       child: FxHover(
            //         builder: (isHover) {
            //           return SvgIcon(
            //             icon: IconlyBroken.arrowRightRound,
            //             color: isHover
            //                 ? ColorConst.white
            //                 : ColorConst.white.withOpacity(0.55),
            //             size: 38,
            //           );
            //         },
            //       ),
            //     ),
            //   ),
            // ),
          ],
        );
      },
    );
  }

  Future<void> popup() async {
    await showDialog(
      context: context,
      barrierColor: Colors.black12.withOpacity(0.8),
      barrierDismissible: false,
      barrierLabel: 'Dialog',
      builder: (context) {
        return Stack(
          alignment: Alignment.center,
          children: [
            StatefulBuilder(builder: (context, setState) {
              return Stack(children: [
                Align(
                  alignment: Alignment.center,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Align(
                        alignment: Alignment.topRight,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: const Icon(
                            Icons.clear,
                            color: Colors.white,
                            size: 23,
                          ),
                        ),
                      ),
                      Image.network(
                        photoList[selecteIndex],
                        fit: BoxFit.fill,
                        height: MediaQuery.of(context).size.width * .55,
                        width: MediaQuery.of(context).size.width * 1,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: (MediaQuery.of(context).size.height / 2) - 23,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          if (selecteIndex > 1) {
                            setState(() => selecteIndex = selecteIndex - 1);
                          }
                        },
                        child: const Icon(
                          Icons.skip_previous,
                          color: Colors.black,
                          size: 35,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          if (selecteIndex < photoList.length - 2) {
                            setState(() => selecteIndex = selecteIndex + 1);
                          }
                        },
                        child: const Icon(
                          Icons.skip_next,
                          color: Colors.black,
                          size: 35,
                        ),
                      ),
                    ],
                  ),
                )
              ]);
            }),
          ],
        );
      },
    );
  }

  Future<void> popup2() async {
    await showDialog(
      context: context,
      barrierColor: Colors.black12.withOpacity(0.8),
      // Background color
      barrierDismissible: false,
      barrierLabel: 'Dialog',
      builder: (context) {
        return Stack(
          alignment: Alignment.center,
          children: [
            StatefulBuilder(builder: (context, setState) {
              return Stack(children: [
                Align(
                  alignment: Alignment.center,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Align(
                        alignment: Alignment.topRight,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: const Icon(
                            Icons.clear,
                            color: Colors.white,
                            size: 23,
                          ),
                        ),
                      ),
                      Image.network(
                        photoList[selecteIndex],
                        fit: BoxFit.fill,
                        height: MediaQuery.of(context).size.width * .55,
                        width: MediaQuery.of(context).size.width * 0.8,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: (MediaQuery.of(context).size.height / 2) - 23,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          if (selecteIndex > 1) {
                            setState(() => selecteIndex = selecteIndex - 1);
                          }
                        },
                        child: const Icon(
                          Icons.skip_previous,
                          color: Colors.white,
                          size: 35,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          if (selecteIndex < photoList.length - 2) {
                            setState(() => selecteIndex = selecteIndex + 1);
                          }
                        },
                        child: const Icon(
                          Icons.skip_next,
                          color: Colors.white,
                          size: 35,
                        ),
                      ),
                    ],
                  ),
                )
              ]);
            }),
          ],
        );
      },
    );
  }

  Future<void> popup3() async {
    await showDialog(
      context: context,
      barrierColor: Colors.black12.withOpacity(0.8),
      barrierDismissible: false,
      barrierLabel: 'Dialog',
      builder: (context) {
        return Stack(
          alignment: Alignment.center,
          children: [
            StatefulBuilder(builder: (context, setState) {
              return Stack(children: [
                Align(
                  alignment: Alignment.center,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Align(
                        alignment: Alignment.topRight,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: const Icon(
                            Icons.clear,
                            color: Colors.white,
                            size: 23,
                          ),
                        ),
                      ),
                      Image.network(
                        photoList[selecteIndex],
                        fit: BoxFit.fill,
                        height: MediaQuery.of(context).size.width * .40,
                        width: MediaQuery.of(context).size.width * 0.7,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: (MediaQuery.of(context).size.height / 2) - 23,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          if (selecteIndex > 1) {
                            setState(() => selecteIndex = selecteIndex - 1);
                          }
                        },
                        child: const Icon(
                          Icons.skip_previous,
                          color: Colors.white,
                          size: 35,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          if (selecteIndex < photoList.length - 2) {
                            setState(() => selecteIndex = selecteIndex + 1);
                          }
                        },
                        child: const Icon(
                          Icons.skip_next,
                          color: Colors.white,
                          size: 35,
                        ),
                      ),
                    ],
                  ),
                )
              ]);
            }),
          ],
        );
      },
    );
  }
}
