import 'package:flutter/material.dart';
import 'package:design_to_code_2/theme.dart';

class ChatTile extends StatelessWidget {
  var imageUrl;
  var name;
  var text;
  var date;
  bool unred;

  ChatTile(
      {this.imageUrl, this.date, this.name, this.text, required this.unred});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: 16,
      ),
      child: Row(
        children: [
          Image.asset(
            imageUrl,
            width: 55,
            height: 55,
          ),
          SizedBox(
            width: 12,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: titleTextStyle,
              ),
              Text(
                text,
                style: unred
                    ? subTitleTextStyle.copyWith(
                        color: blackColor,
                      )
                    : subTitleTextStyle,
              ),
            ],
          ),
          Spacer(),
          Text(
            date,
            style: subTitleTextStyle,
          ),
        ],
      ),
    );
  }
}
