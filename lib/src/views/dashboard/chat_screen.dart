import 'package:admin_dashboard/src/constant/color.dart';
import 'package:admin_dashboard/src/constant/image.dart';
import 'package:admin_dashboard/src/constant/string.dart';
import 'package:admin_dashboard/src/constant/text.dart';
import 'package:flutter/material.dart';
import 'package:flutterx/flutterx.dart';

class Chatscreen extends StatefulWidget {
  const Chatscreen({Key? key}) : super(key: key);

  @override
  State<Chatscreen> createState() => _ChatscreenState();
}

class _ChatscreenState extends State<Chatscreen> {
  final TextEditingController _msgController = TextEditingController();
  final List<Map<String, dynamic>> _chatList = [
    {
      'userName': 'John Deo',
      'userMsg': 'Hello',
      'isCurrentUser': false,
    },
    {
      'userName': 'Smith',
      'userMsg': 'Hi, How are you? What about our next meeting?',
      'isCurrentUser': true,
    },
    {
      'userName': 'John Deo',
      'userMsg': 'Yeah everything is fine',
      'isCurrentUser': false,
    },
    {
      'userName': 'Smith',
      'userMsg': 'Wow that\'s great',
      'isCurrentUser': true,
    },
    {
      'userName': 'John Deo',
      'userMsg': 'yah!',
      'isCurrentUser': false,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(2)),
      child: Container(
        color: ColorConst.white,
        padding: const EdgeInsets.all(20.0),
        height: MediaQuery.of(context).size.height * 0.52,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            ConstText.lightText(
              text: Strings.chat,
              fontWeight: FontWeight.bold,
              color: ColorConst.grey800,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.367,
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: _chatList.length,
                itemBuilder: (context, index) {
                  return Column(
                    crossAxisAlignment: _chatList[index]['isCurrentUser']
                        ? CrossAxisAlignment.start
                        : CrossAxisAlignment.end,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      _chatBox(
                        userName: _chatList[index]['userName'],
                        userMsg: _chatList[index]['userMsg'],
                        boxColor: _chatList[index]['isCurrentUser'] ?? false
                            ? ColorConst.lightGrey
                            : ColorConst.primary.withOpacity(0.2),
                        usermsgColor: _chatList[index]['isCurrentUser'] ?? false
                            ? ColorConst.primary
                            : ColorConst.black,
                      )
                    ],
                  );
                },
              ),
            ),
            _chatBubble(),
          ],
        ),
      ),
    );
  }

  Widget _userIcon() {
    return Column(
      children: [
        CircleAvatar(
          maxRadius: MediaQuery.of(context).size.height * 0.02,
          backgroundImage: const NetworkImage(Images.profileImage),
        ),
        FxBox.h10,
        Text(
          '10.00',
          style: TextStyle(
            fontSize: MediaQuery.of(context).size.height * 0.012,
            color: ColorConst.grey800,
            fontWeight: FontWeight.w700,
          ),
        )
      ],
    );
  }

  Widget _chatBox({
    required String userName,
    String? userMsg,
    required Color usermsgColor,
    required Color boxColor,
  }) {
    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        color: boxColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          ConstText.lightText(
            text: userName,
            fontSize: MediaQuery.of(context).size.height * 0.014,
            color: ColorConst.primary,
            fontWeight: FontWeight.w700,
          ),
          ConstText.lightText(
            text: userMsg ?? '',
            fontSize: MediaQuery.of(context).size.height * 0.014,
            color: usermsgColor,
            fontWeight: FontWeight.w500,
          ),
        ],
      ),
    );
  }

  Widget _chatBubble() {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.07,
      child: Row(
        children: [
          Expanded(
            child: SizedBox(
              height: 35,
              child: TextField(
                controller: _msgController,
                decoration: InputDecoration(
                  hintText: Strings.enterYourText,
                  hintStyle: TextStyle(
                    color: ColorConst.black.withOpacity(0.6),
                    fontSize: MediaQuery.of(context).size.height * 0.014,
                  ),
                  contentPadding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 6),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(4),
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4),
                      borderSide:
                          const BorderSide(color: ColorConst.lightGrey)),
                ),
              ),
            ),
          ),
          FxBox.w28,
          FxButton(
            onPressed: () {},
            color: ColorConst.sendButtonColor,
            borderRadius: 6,
            height: 40,
            child: ConstText.lightText(
              text: Strings.send,
              color: ColorConst.white,
              fontSize: MediaQuery.of(context).size.height * 0.014,
            ),
            minWidth: MediaQuery.of(context).size.height * 0.09,
          ),
        ],
      ),
    );
  }
}
