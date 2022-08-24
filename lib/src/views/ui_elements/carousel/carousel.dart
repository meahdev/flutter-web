import 'package:admin_dashboard/src/constant/color.dart';
import 'package:admin_dashboard/src/constant/icons.dart';
import 'package:admin_dashboard/src/utils/hover.dart';
import 'package:admin_dashboard/src/utils/responsive.dart';
import 'package:admin_dashboard/src/widget/svg_icon.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutterx/flutterx.dart';

class Carousel extends StatefulWidget {
  const Carousel({Key? key}) : super(key: key);

  @override
  State<Carousel> createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {
  final CarouselController _withControlController = CarouselController();
  final CarouselController _withIndicatorController = CarouselController();
  final CarouselController _withCaptionsController = CarouselController();
  final CarouselController _crossFadeController = CarouselController();
  final List<String> _imageList = [
    "https://image.shutterstock.com/image-photo/young-beautiful-happy-businesswoman-sitting-260nw-165623561.jpg",
    "data:image/jpeg;base64,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",
    "data:image/jpeg;base64,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",
  ];

  final List<String> _captionList = [
    'First slide label',
    'Second slide label',
    'Third slide label',
  ];

  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Responsive.isWeb(context)
            ? Column(
                children: [
                  Row(
                    children: [
                      Expanded(child: _slidesOnly()),
                      FxBox.w24,
                      Expanded(child: _withControls())
                    ],
                  ),
                  FxBox.h24,
                  Row(
                    children: [
                      Expanded(child: _withIndicators()),
                      FxBox.w24,
                      Expanded(child: _withCaptions())
                    ],
                  ),
                  FxBox.h24,
                  Row(
                    children: [
                      Expanded(child: _crossfade()),
                      FxBox.w24,
                      const Expanded(child: SizedBox())
                    ],
                  ),
                ],
              )
            : Column(
                children: [
                  _slidesOnly(),
                  FxBox.h24,
                  _withControls(),
                  FxBox.h24,
                  _withIndicators(),
                  FxBox.h24,
                  _withCaptions(),
                  FxBox.h24,
                  _crossfade(),
                ],
              )
      ],
    );
  }

  Widget _commonView(String title, Widget carouselType) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _commonHeadText(title),
            FxBox.h24,
            carouselType,
          ],
        ),
      ),
    );
  }

  Widget _commonHeadText(String title) {
    return Text(
      title,
      style: const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w600,
      ),
    );
  }

  Widget _slidesOnly() {
    return _commonView(
      'Slides only',
      CarouselSlider(
        items: _imageList
            .map(
              (image) => Image.network(
                image,
                fit: BoxFit.cover,
                width: double.infinity,
              ),
            )
            .toList(),
        options: CarouselOptions(
          viewportFraction: 1.0,
        ),
      ),
    );
  }

  Widget _withControls() {
    return _commonView(
      'With Controls',
      Stack(
        alignment: Alignment.center,
        children: [
          CarouselSlider(
            carouselController: _withControlController,
            items: _imageList
                .map((image) => Image.network(
                      image,
                      fit: BoxFit.cover,
                      width: double.infinity,
                    ))
                .toList(),
            options: CarouselOptions(
              viewportFraction: 1.0,
            ),
          ),
          _commonArrow(IconlyBroken.arrowRightRound, _withControlController),
          _commonArrow(IconlyBroken.arrowLeftRound, _withControlController),
        ],
      ),
    );
  }

  Widget _withIndicators() {
    return _commonView(
      'With indicators',
      Stack(
        alignment: Alignment.center,
        children: [
          CarouselSlider.builder(
            carouselController: _withIndicatorController,
            itemCount: _imageList.length,
            itemBuilder: (context, index, realIndex) {
              return Image.network(
                _imageList[index],
                fit: BoxFit.cover,
                width: double.infinity,
              );
            },
            options: CarouselOptions(
              viewportFraction: 1.0,
              onPageChanged: (index, reason) {
                setState(() {
                  _index = index;
                });
              },
            ),
          ),
          Positioned(
            bottom: 24,
            child: SizedBox(
              height: 3,
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: _imageList.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.symmetric(horizontal: 3),
                    width: 30,
                    color: _index == index
                        ? ColorConst.white
                        : ColorConst.white.withOpacity(0.55),
                  );
                },
              ),
            ),
          ),
          _commonArrow(IconlyBroken.arrowRightRound, _withIndicatorController),
          _commonArrow(IconlyBroken.arrowLeftRound, _withIndicatorController),
        ],
      ),
    );
  }

  Widget _withCaptions() {
    return _commonView(
      'With captions',
      Stack(
        alignment: Alignment.center,
        children: [
          CarouselSlider.builder(
            carouselController: _withCaptionsController,
            itemCount: _imageList.length,
            itemBuilder: (context, index, realIndex) {
              return Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Image.network(
                    _imageList[index],
                    fit: BoxFit.cover,
                    width: double.infinity,
                  ),
                  Positioned(
                    bottom: 32,
                    child: Text(
                      _captionList[index],
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  )
                ],
              );
            },
            options: CarouselOptions(
              viewportFraction: 1.0,
            ),
          ),
          _commonArrow(IconlyBroken.arrowRightRound, _withCaptionsController),
          _commonArrow(IconlyBroken.arrowLeftRound, _withCaptionsController),
        ],
      ),
    );
  }

  Widget _crossfade() {
    return _commonView(
        'Crossfade',
        Stack(
          alignment: Alignment.center,
          children: [
            CarouselSlider(
              carouselController: _crossFadeController,
              items: _imageList
                  .map((image) => Image.network(
                        image,
                        fit: BoxFit.cover,
                        width: double.infinity,
                      ))
                  .toList(),
              options: CarouselOptions(
                viewportFraction: 1.0,
              ),
            ),
            _commonArrow(IconlyBroken.arrowRightRound, _crossFadeController),
            _commonArrow(IconlyBroken.arrowLeftRound, _crossFadeController),
          ],
        ));
  }

  Widget _commonArrow(String arrow, CarouselController controller) {
    return Positioned(
      right: arrow == IconlyBroken.arrowRightRound ? 12.0 : null,
      left: arrow == IconlyBroken.arrowLeftRound ? 12.0 : null,
      child: Align(
        alignment: Alignment.centerRight,
        child: FxHover(
          builder: (isHover) {
            return GestureDetector(
              onTap: () {
                arrow == IconlyBroken.arrowRightRound
                    ? controller.nextPage()
                    : controller.previousPage();
              },
              child: SvgIcon(
                icon: arrow,
                size: 32,
                color: isHover
                    ? ColorConst.white
                    : ColorConst.white.withOpacity(0.55),
              ),
            );
          },
        ),
      ),
    );
  }
}
