import 'package:flutter/material.dart';
import 'package:design_to_code_2/theme.dart';
import 'package:design_to_code_2/widgets/chat_column.dart';

class Chat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  bottom: 30,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  // crossAxisAlignment: CrossAxisAlignment.baseline,
                  // textBaseline: TextBaseline.ideographic,
                  children: [
                    Image.asset(
                      'assets/images/group1.png',
                      width: 55,
                      height: 55,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Jakarta Fair',
                          style: titleTextStyle,
                        ),
                        Text(
                          '14,209 members',
                          style: subTitleTextStyle,
                        ),
                      ],
                    ),
                    Spacer(),
                    Ink(
                      decoration: ShapeDecoration(
                        shape: CircleBorder(),
                        color: greenColor,
                      ),
                      height: 35,
                      width: 35,
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.call,
                          color: whiteColor,
                          size: 16,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Flexible(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      ChatColumn(
                        imageUrl: 'assets/images/friend1.png',
                        text: 'How are ya guys?',
                        time: '2:30',
                        me: false,
                      ),
                      ChatColumn(
                        imageUrl: 'assets/images/friend2.png',
                        text: 'Find here :P',
                        time: '3:11',
                        me: false,
                      ),
                      ChatColumn(
                        text:
                            'Thinking about how to deal with this client from hell...',
                        time: '22:08',
                        me: true,
                      ),
                      ChatColumn(
                        imageUrl: 'assets/images/friend1.png',
                        text: 'How are ya guys?',
                        time: '2:30',
                        me: false,
                      ),
                      ChatColumn(
                        imageUrl: 'assets/images/friend2.png',
                        text: 'Find here :P',
                        time: '3:11',
                        me: false,
                      ),
                      ChatColumn(
                        text:
                            'Thinking about how to deal with this client from hell...',
                        time: '22:08',
                        me: true,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Type message ...',
                    style: subTitleTextStyle,
                  ),
                  Spacer(),
                  Ink(
                    decoration: ShapeDecoration(
                      shape: CircleBorder(),
                      color: greenColor,
                    ),
                    height: 35,
                    width: 35,
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.arrow_right_sharp,
                        color: whiteColor,
                        size: 20,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
