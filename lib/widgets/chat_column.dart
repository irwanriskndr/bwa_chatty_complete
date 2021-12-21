import 'package:flutter/material.dart';
import 'package:design_to_code_2/theme.dart';

class ChatColumn extends StatelessWidget {
  var imageUrl;
  var text;
  var time;
  bool me;

  ChatColumn({this.time, this.imageUrl, this.text, required this.me});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: 30,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        // mainAxisAlignment: me ? MainAxisAlignment.end : MainAxisAlignment.start,
        textDirection: me ? TextDirection.rtl : TextDirection.ltr,
        children: [
          Image.asset(
            me ? 'assets/images/profile_chat.png' : imageUrl,
            width: 40,
            height: 40,
          ),
          SizedBox(
            width: 12,
          ),
          Flexible(
            flex: 1,
            child: Container(
              padding: EdgeInsets.symmetric(
                vertical: 11,
                horizontal: 20,
              ),
              decoration: BoxDecoration(
                color: lightGrayColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                  bottomLeft: me ? Radius.circular(30) : Radius.circular(0),
                  bottomRight: me ? Radius.circular(0) : Radius.circular(30),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    text,
                    style: chatStyle,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    time,
                    style: timeChatStyle,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
