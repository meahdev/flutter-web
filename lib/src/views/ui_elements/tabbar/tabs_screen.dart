import 'package:admin_dashboard/src/utils/responsive.dart';
import 'package:admin_dashboard/src/views/ui_elements/tabbar/tab_view.dart';
import 'package:flutterx/flutterx.dart';
import 'package:flutter/material.dart';

class TabScreen extends StatefulWidget {
  const TabScreen({Key? key}) : super(key: key);

  @override
  State<TabScreen> createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> with TickerProviderStateMixin {
  final labelList = const ['Home', 'Profile', 'Messages', 'Settings', 'Extra'];
  final labelItemsList = const [
    'Raw denim you probably haven\'t heard of them jean shorts Austin. Nesciunt tofu stumptown aliqua, retro synth master cleanse. Mustache cliche tempor, williamsburg carles vegan helvetica. Reprehenderit butcher retro keffiyeh dreamcatcher synth. Cosby sweater eu banh mi, qui irure terry richardson ex squid. Aliquip placeat salvia cillum iphone. Seitan aliquip quis cardigan american apparel, butcher voluptate nisi qui.',
    'Food truck fixie locavore, accusamus mcsweeney\'s marfa nulla single-origin coffee squid. Exercitation +1 labore velit, blog sartorial PBR leggings next level wes anderson artisan four loko farm-to-table craft beer twee. Qui photo booth letterpress, commodo enim craft beer mlkshk aliquip jean shorts ullamco ad vinyl cillum PBR. Homo nostrud organic, assumenda labore aesthetic magna delectus mollit. Keytar helvetica VHS salvia yr, vero magna velit sapiente labore stumptown. Vegan fanny pack odio cillum wes anderson 8-bit.',
    'Etsy mixtape wayfarers, ethical wes anderson tofu before they sold out mcsweeney\'s organic lomo retro fanny pack lo-fi farm-to-table readymade. Messenger bag gentrify pitchfork tattooed craft beer, iphone skateboard locavore carles etsy salvia banksy hoodie helvetica. DIY synth PBR banksy irony. Leggings gentrify squid 8-bit cred pitchfork. Williamsburg banh mi whatever gluten-free, carles pitchfork biodiesel fixie etsy retro mlkshk vice blog. Scenester cred you probably haven\'t heard of them, vinyl craft beer blog stumptown. Pitchfork sustainable tofu synth chambray yr.',
    'Trust fund seitan letterpress, keytar raw denim keffiyeh etsy art party before they sold out master cleanse gluten-free squid scenester freegan cosby sweater. Fanny pack portland seitan DIY, art party locavore wolf cliche high life echo park Austin. Cred vinyl keffiyeh DIY salvia PBR, banh mi before they sold out farm-to-table VHS viral locavore cosby sweater. Lomo wolf viral, mustache readymade thundercats keffiyeh craft beer marfa ethical. Wolf salvia freegan, sartorial keffiyeh echo park vegan.',
    'Trust fund seitan letterpress, keytar raw denim keffiyeh etsy art party before they sold out master cleanse gluten-free squid scenester freegan cosby sweater. Fanny pack portland seitan DIY, art party locavore wolf cliche high life echo park Austin. Cred vinyl keffiyeh DIY salvia PBR, banh mi before they sold out farm-to-table VHS viral locavore cosby sweater. Lomo wolf viral, mustache readymade thundercats keffiyeh craft beer marfa ethical. Wolf salvia freegan, sartorial keffiyeh echo park vegan.'
  ];

  List<IconData> iconsList = const [
    Icons.home,
    Icons.person,
    Icons.email,
    Icons.settings,
    Icons.expand,
  ];

  late final TabController _controller;
  late TextTheme textTheme;

  @override
  void initState() {
    _controller = TabController(length: 5, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Responsive.isWeb(context) ? _webView(ctx: context) : _mobileView();
  }

  Widget _mobileView() {
    return Center(
      child: IntrinsicHeight(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _defaultTabs('Default Tabs', TabType.defaultTabs),
            FxBox.h16,
            _defaultTabs('Justify Tabs', TabType.justifyTab),
            FxBox.h16,
            _defaultTabs('Custom Tabs', TabType.customTab),
          ],
        ),
      ),
    );
  }

  Widget _defaultTabs(String title, TabType type) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
              ),
            ),
            FxBox.h20,
            CustomTabView(
              tabType: type,
              tabsName: labelList,
              tabsElements: labelItemsList,
            ),
          ],
        ),
      ),
    );
  }

  Widget _webView({required BuildContext ctx}) {
    return Center(
      child: Column(
        children: [
          SizedBox(
            child: Row(children: [
              Expanded(child: _defaultTabs('Default Tabs', TabType.defaultTabs)),
              FxBox.w20,
              Expanded(child: _defaultTabs('Justify Tabs', TabType.justifyTab)),
            ]),
          ),
          FxBox.h20,
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(child: _defaultTabs('Custom Tabs', TabType.customTab)),
              FxBox.w20,
              Expanded(child: FxBox.shrink)
            ],
          ),
        ],
      ),
    );
  }
}
