import 'package:admin_dashboard/src/utils/responsive.dart';
import 'package:flutter/material.dart';
import 'package:flutterx/flutterx.dart';

class FAQs extends StatefulWidget {
  const FAQs({Key? key}) : super(key: key);

  @override
  State<FAQs> createState() => _FAQsState();
}

class _FAQsState extends State<FAQs> {
  final titleList = [
    "The new common language will be more simple and regular than the existing European languages. It will be as simple as Occidental; in fact, it will be Occidental.",
    "Everyone realizes why a new common language would be desirable: one could refuse to pay expensive translators. To achieve this, it would be necessary to have uniform grammar",
    "If several languages coalesce, the grammar of the resulting language is more simple and regular than that of the individual languages. The new common language will be more simple",
    "Everyone realizes why a new common language would be desirable: one could refuse to pay expensive translators. To achieve this, it would be necessary to have uniform grammar",
  ];

  final dataList = [
    "What is Lorem Ipsum?",
    "Where does it come from?",
    "Why do we use it?",
    "Where can I get some?Where can I get some?",
  ];

  final titleList1 = [
    "The new common language will be more simple and regular than the existing European languages. It will be as simple as Occidental; in fact, it will be Occidental.",
    "Everyone realizes why a new common language would be desirable: one could refuse to pay expensive translators. To achieve this, it would be necessary to have uniform grammar",
    "If several languages coalesce, the grammar of the resulting language is more simple and regular than that of the individual languages. The new common language will be more simple",
    "Everyone realizes why a new common language would be desirable one could refuse to pay expensive translators. Toachieve this, it would be necessary to have uniform grammar",
  ];

  final dataList1 = [
    "Where can I get some?",
    "Why do we use it?",
    "Where does it come from?",
    "What is Lorem Ipsum?",
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Responsive.isMobile(context) || Responsive.isTablet(context)
                ? SizedBox(
                    //height: MediaQuery.of(context).size.height*.5,
                    width: MediaQuery.of(context).size.width * .9,
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 20, right: 20, bottom: 20, top: 60),
                        child: Column(
                          children: [
                            const Icon(Icons.message_outlined,
                                color: Colors.indigo),
                            FxBox.h20,
                            const Text(
                              "Can't find what you are looking for?",
                              style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Color((0XFF5B626B))),
                            ),
                            FxBox.h12,
                            const Text(
                              "If several languages coalesce, the grammar of the resulting language is more simple and regular than that of the individual languages.",
                              style: TextStyle(fontSize: 14),
                            ),
                            FxBox.h20,
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FxButton(
                                  borderRadius: 4,
                                  onPressed: () {},
                                  text: "Email Us",
                                  color: Colors.indigo.shade400,
                                ),
                                FxBox.w8,
                                FxButton(
                                  borderRadius: 4,
                                  onPressed: () {},
                                  text: "Send us a tweet",
                                  color: Colors.teal.shade400,
                                ),
                              ],
                            ),
                            FxBox.h44,
                            const ListTile(
                              title: Text(
                                "General Questions",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                              leading: Icon(
                                Icons.book_online_rounded,
                                color: Colors.indigo,
                              ),
                            ),
                            ExpansionPanelList.radio(
                              dividerColor: Colors.grey.shade300,
                              elevation: 0,
                              initialOpenPanelValue: 2,
                              children: dataList
                                  .map<ExpansionPanelRadio>((String item) {
                                return ExpansionPanelRadio(
                                    backgroundColor: Colors.transparent,
                                    canTapOnHeader: true,
                                    value: item,
                                    headerBuilder: (BuildContext context,
                                        bool isExpanded) {
                                      return ListTile(
                                        title: Text(
                                          item,
                                          style: TextStyle(
                                              color: isExpanded
                                                  ? Colors.indigo
                                                  : Colors.black,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      );
                                    },
                                    body: ListTile(
                                      title: Text(titleList.elementAt(
                                          dataList.indexWhere(
                                              (element) => element == item))),
                                    ));
                              }).toList(),
                            ),
                            FxBox.h44,
                            const ListTile(
                              title: Text(" Pricing & Plans",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20)),
                              leading: Icon(
                                Icons.book_online_rounded,
                                color: Colors.indigo,
                              ),
                            ),
                            ExpansionPanelList.radio(
                              dividerColor: Colors.grey.shade300,
                              elevation: 0,
                              initialOpenPanelValue: 2,
                              children: dataList1
                                  .map<ExpansionPanelRadio>((String item) {
                                return ExpansionPanelRadio(
                                    backgroundColor: Colors.transparent,
                                    canTapOnHeader: true,
                                    value: item,
                                    headerBuilder: (BuildContext context,
                                        bool isExpanded) {
                                      return ListTile(
                                        title: Text(
                                          item,
                                          style: TextStyle(
                                              color: isExpanded
                                                  ? Colors.indigo
                                                  : Colors.black,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      );
                                    },
                                    body: ListTile(
                                      title: Text(titleList1.elementAt(
                                          dataList1.indexWhere(
                                              (element) => element == item))),
                                    ));
                              }).toList(),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                : Card(
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 100, right: 100, bottom: 40, top: 60),
                      child: Column(
                        children: [
                          const Icon(Icons.message_outlined,
                              color: Colors.indigo),
                          FxBox.h20,
                          const Text(
                            "Can't find what you are looking for?",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Color((0XFF5B626B))),
                          ),
                          FxBox.h12,
                          const Text(
                            "If several languages coalesce, the grammar of the resulting language is more simple and regular than that of the individual languages.",
                            style: TextStyle(fontSize: 14),
                          ),
                          FxBox.h20,
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FxButton(
                                borderRadius: 4,
                                onPressed: () {},
                                text: "Email Us",
                                color: Colors.indigo.shade400,
                              ),
                              FxBox.w8,
                              FxButton(
                                borderRadius: 4,
                                onPressed: () {},
                                text: "Send us a tweet",
                                color: Colors.teal.shade400,
                              ),
                            ],
                          ),
                          FxBox.h64,
                          Row(
                            children: [
                              Expanded(
                                child: Column(
                                  children: [
                                    const ListTile(
                                      title: Text(
                                        "General Questions",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20),
                                      ),
                                      leading: Icon(
                                        Icons.book_online_rounded,
                                        color: Colors.indigo,
                                      ),
                                    ),
                                    FxBox.h16,
                                    ExpansionPanelList.radio(
                                      dividerColor: Colors.grey.shade300,
                                      elevation: 0,
                                      initialOpenPanelValue: 2,
                                      children: dataList
                                          .map<ExpansionPanelRadio>(
                                              (String item) {
                                        return ExpansionPanelRadio(
                                            backgroundColor: Colors.transparent,
                                            canTapOnHeader: true,
                                            value: item,
                                            headerBuilder:
                                                (BuildContext context,
                                                    bool isExpanded) {
                                              return ListTile(
                                                title: Text(
                                                  item,
                                                  style: TextStyle(
                                                      color: isExpanded
                                                          ? Colors.indigo
                                                          : Colors.black,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              );
                                            },
                                            body: ListTile(
                                              title: Text(titleList.elementAt(
                                                  dataList.indexWhere(
                                                      (element) =>
                                                          element == item))),
                                            ));
                                      }).toList(),
                                    ),
                                  ],
                                ),
                              ),
                              FxBox.w40,
                              Expanded(
                                child: Column(
                                  children: [
                                    const ListTile(
                                      title: Text(" Pricing & Plans",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20)),
                                      leading: Icon(
                                        Icons.book_online_rounded,
                                        color: Colors.indigo,
                                      ),
                                    ),
                                    FxBox.h16,
                                    ExpansionPanelList.radio(
                                      dividerColor: Colors.grey.shade300,
                                      elevation: 0,
                                      initialOpenPanelValue: 2,
                                      children: dataList1
                                          .map<ExpansionPanelRadio>(
                                              (String item) {
                                        return ExpansionPanelRadio(
                                            backgroundColor: Colors.transparent,
                                            canTapOnHeader: true,
                                            value: item,
                                            headerBuilder:
                                                (BuildContext context,
                                                    bool isExpanded) {
                                              return ListTile(
                                                title: Text(
                                                  item,
                                                  style: TextStyle(
                                                      color: isExpanded
                                                          ? Colors.indigo
                                                          : Colors.black,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              );
                                            },
                                            body: ListTile(
                                              title: Text(titleList1.elementAt(
                                                  dataList1.indexWhere(
                                                      (element) =>
                                                          element == item))),
                                            ));
                                      }).toList(),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}
