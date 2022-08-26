import 'package:admin_dashboard/src/constant/color.dart';
import 'package:admin_dashboard/src/constant/icons.dart';
import 'package:admin_dashboard/src/provider/gallery/bloc/gallery_bloc.dart';
import 'package:admin_dashboard/src/utils/hover.dart';
import 'package:admin_dashboard/src/utils/responsive.dart';
import 'package:admin_dashboard/src/widget/svg_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterx/flutterx.dart';

class Gallery extends StatefulWidget {
  const Gallery({Key? key}) : super(key: key);

  @override
  State<Gallery> createState() => _GalleryState();
}

class _GalleryState extends State<Gallery> {
  final _imageList = [
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

  final _headingList = [
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

  final _nameList = [
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

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        GridView.builder(
          shrinkWrap: true,
          itemCount: _imageList.length,
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
                showPopUp(index);
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
                                  _headingList[index],
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
                                      _imageList[index],
                                    ),
                                  ),
                                  FxBox.w10,
                                  Expanded(
                                    child: Text(
                                      _nameList[index],
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
                            _imageList[index],
                            alignment: Alignment.topCenter,
                            fit: BoxFit.cover,
                          ),
                  );
                },
              ),
            );
          },
        )
      ],
    );
  }

  Future<void> showPopUp(int index) {
    final GalleryBloc galleryBloc = GalleryBloc();

    int selectedIndex = index;
    return showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        return BlocProvider(
          create: (context) => galleryBloc,
          child: BlocBuilder<GalleryBloc, GalleryState>(
            builder: (context, state) {
              state.whenOrNull(
                nextSuccess: (nextIndex) {
                  selectedIndex = nextIndex;
                },
                previousSuccess: (previousIndex) {
                  selectedIndex = previousIndex;
                },
              );
              return Stack(
                alignment: Alignment.center,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                              galleryBloc.close();
                            },
                            child: FxHover(
                              builder: (isHover) {
                                return SvgIcon(
                                  icon: IconlyBroken.closeSquare,
                                  color: isHover
                                      ? ColorConst.white
                                      : ColorConst.white.withOpacity(0.55),
                                );
                              },
                            ),
                          ),
                          FxBox.h4,
                          Container(
                            constraints: BoxConstraints(
                              maxHeight:
                                  (MediaQuery.of(context).size.height - 60) <
                                          560
                                      ? MediaQuery.of(context).size.height - 64
                                      : 560,
                              maxWidth: Responsive.isMobile(context)
                                  ? MediaQuery.of(context).size.width - 88
                                  : 720,
                            ),
                            child: Stack(
                              clipBehavior: Clip.none,
                              children: [
                                Image.network(
                                  _imageList[selectedIndex],
                                  fit: BoxFit.contain,
                                ),
                                Positioned(
                                  left: 0.0,
                                  bottom: -20.0,
                                  child: Text(
                                    _nameList[selectedIndex],
                                    style: const TextStyle(
                                        color: ColorConst.white),
                                  ),
                                ),
                                Positioned(
                                  right: 0.0,
                                  bottom: -20.0,
                                  child: Text(
                                    '${selectedIndex + 1} of ${_imageList.length}',
                                    style: const TextStyle(
                                        color: ColorConst.white),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  _nextNpreviousArrow(
                      IconlyBroken.arrowLeftRound, selectedIndex, galleryBloc),
                  _nextNpreviousArrow(
                      IconlyBroken.arrowRightRound, selectedIndex, galleryBloc),
                ],
              );
            },
          ),
        );
      },
    );
  }

  Widget _nextNpreviousArrow(String arrow, int index, GalleryBloc galleryBloc) {
    return Positioned(
      right: arrow == IconlyBroken.arrowRightRound ? 24 : null,
      left: arrow == IconlyBroken.arrowLeftRound ? 24 : null,
      child: Align(
        alignment: arrow == IconlyBroken.arrowRightRound
            ? Alignment.centerRight
            : Alignment.centerLeft,
        child: GestureDetector(
          onTap: () {
            if (index > 0 && arrow == IconlyBroken.arrowLeftRound) {
              galleryBloc.add(GalleryEvent.previous(index - 1));
            }
            if (index < 11 && arrow == IconlyBroken.arrowRightRound) {
              galleryBloc.add(GalleryEvent.previous(index + 1));
            }
            if (index == 0 && arrow == IconlyBroken.arrowLeftRound) {
              galleryBloc.add(const GalleryEvent.previous(11));
            }
            if (index == 11 && arrow == IconlyBroken.arrowRightRound) {
              galleryBloc.add(const GalleryEvent.previous(0));
            }
          },
          child: FxHover(
            builder: (isHover) {
              return SvgIcon(
                icon: arrow,
                color: isHover
                    ? ColorConst.white
                    : ColorConst.white.withOpacity(0.55),
                size: 38,
              );
            },
          ),
        ),
      ),
    );
  }
}
