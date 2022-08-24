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
    "The new common language will be more simple and regular than the existing European languages. It will be as simple as Occidental; in fact, it will be Occidental.",
    "Everyone realizes why a new common language would be desirable: one could refuse to pay expensive translators. To achieve this, it would be necessary to have uniform grammar",
    "If several languages coalesce, the grammar of the resulting language is more simple and regular than that of the individual languages. The new common language will be more simple",
    "Everyone realizes why a new common language would be desirable: one could refuse to pay expensive translators. To achieve this, it would be necessary to have uniform grammar",
  ];

  final _generalList = [
    "What is Lorem Ipsum?",
    "Where does it come from?",
    "Why do we use it?",
    "Where can I get some?",
  ];

  final _dataPricingNplanList = [
    "The new common language will be more simple and regular than the existing European languages. It will be as simple as Occidental; in fact, it will be Occidental.",
    "Everyone realizes why a new common language would be desirable: one could refuse to pay expensive translators. To achieve this, it would be necessary to have uniform grammar",
    "If several languages coalesce, the grammar of the resulting language is more simple and regular than that of the individual languages. The new common language will be more simple",
    "Everyone realizes why a new common language would be desirable one could refuse to pay expensive translators. Toachieve this, it would be necessary to have uniform grammar",
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
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: isDark ? ColorConst.darkFontColor : ColorConst.textColor,
              ),
            ),
            FxBox.h12,
            const SizedBox(
              width: 550,
              child: Text(
                "If several languages coalesce, the grammar of the resulting language is more simple and regular than that of the individual languages.",
                style: TextStyle(fontSize: 14),
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
              fontSize: 20,
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
              fontSize: 20,
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
