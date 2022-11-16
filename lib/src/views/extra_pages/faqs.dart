import 'package:admin_dashboard/src/constant/color.dart';
import 'package:admin_dashboard/src/constant/theme.dart';
import 'package:admin_dashboard/src/utils/responsive.dart';
import 'package:flutter/material.dart';
import 'package:flutterx/flutterx.dart';

class FAQs extends StatefulWidget {
  const FAQs({Key? key}) : super(key: key);

  @override
  State<FAQs> createState() => _FAQsState();
}

class _FAQsState extends State<FAQs> {
  final _dataGeneralList = [
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
    "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.",
    "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters.",
    "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable.",
  ];

  final _generalList = [
    "What is Lorem Ipsum?",
    "Where does it come from?",
    "Why do we use it?",
    "Where can I get some?",
  ];

  final _dataPricingNplanList = [
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
    "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old.",
    "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters.",
    "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable.",
  ];

  final _pricingNplanList = [
    "Where can I get some?",
    "Why do we use it?",
    "Where does it come from?",
    "What is Lorem Ipsum?",
  ];

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.only(
          left: 72,
          right: 72,
          top: 60,
          bottom: 20,
        ),
        child: Column(
          children: [
            const Icon(Icons.message_outlined, color: ColorConst.primary),
            FxBox.h20,
            Text(
              "Can't find what you are looking for?",
              style: TextStyle(
                fontSize: 21,
                fontWeight: FontWeight.bold,
                color: isDark ? ColorConst.darkFontColor : ColorConst.textColor,
              ),
            ),
            FxBox.h12,
            const SizedBox(
              width: 550,
              child: Text(
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text.",
                style: TextStyle(fontSize: 15),
                textAlign: TextAlign.center,
              ),
            ),
            FxBox.h20,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FxButton(
                  borderRadius: 4,
                  onPressed: () {},
                  text: "Email Us",
                ),
                FxBox.w8,
                FxButton(
                  borderRadius: 4,
                  onPressed: () {},
                  text: "Send us a tweet",
                  buttonType: ButtonType.success,
                ),
              ],
            ),
            FxBox.h64,
            Responsive.isWeb(context)
                ? Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(child: _listOne()),
                      FxBox.w(100.0),
                      Expanded(child: _listTwo())
                    ],
                  )
                : Column(
                    children: [
                      _listOne(),
                      FxBox.h44,
                      _listTwo(),
                    ],
                  ),
          ],
        ),
      ),
    );
  }

  Widget _listOne() {
    return Column(
      children: [
        const ListTile(
          title: Text(
            "General Questions",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 21,
            ),
          ),
          leading: Icon(
            Icons.book_online_rounded,
            color: ColorConst.primary,
          ),
        ),
        FxBox.h16,
        _expansionList(_dataGeneralList, _generalList),
      ],
    );
  }

  Widget _listTwo() {
    return Column(
      children: [
        const ListTile(
          title: Text(
            "Pricing & Plans",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 21,
            ),
          ),
          leading: Icon(
            Icons.book_online_rounded,
            color: ColorConst.primary,
          ),
        ),
        FxBox.h16,
        _expansionList(_dataPricingNplanList, _pricingNplanList),
      ],
    );
  }

  Widget _expansionList(List<String> title, List<String> list) {
    return ExpansionPanelList.radio(
      dividerColor: Colors.grey.shade300,
      elevation: 0,
      initialOpenPanelValue: 2,
      expandedHeaderPadding: EdgeInsets.zero,
      children: list.map<ExpansionPanelRadio>(
        (String item) {
          return ExpansionPanelRadio(
            backgroundColor: Colors.transparent,
            canTapOnHeader: true,
            value: item,
            headerBuilder: (BuildContext context, bool isExpanded) {
              return ListTile(
                hoverColor: Colors.transparent,
                title: Text(
                  item,
                  style: TextStyle(
                    color: isExpanded ? ColorConst.primary : null,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              );
            },
            body: ListTile(
              hoverColor: Colors.transparent,
              title: Text(
                title.elementAt(
                  list.indexWhere(
                    (element) => element == item,
                  ),
                ),
              ),
            ),
          );
        },
      ).toList(),
    );
  }
}
