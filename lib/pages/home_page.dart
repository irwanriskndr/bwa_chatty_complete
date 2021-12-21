// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, duplicate_ignore

import 'package:design_to_code_2/theme.dart';
import 'package:flutter/material.dart';
import 'package:design_to_code_2/widgets/chat_tile.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blueColor,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: greenColor,
        child: Icon(
          Icons.add,
          size: 28,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 40,
              ),
              Image.asset(
                'assets/images/profile.png',
                width: 100,
                height: 100,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Sabrina Carpenter',
                style: TextStyle(
                  fontSize: 20,
                  color: whiteColor,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(
                height: 2,
              ),
              Text(
                'Travel Freelancer',
                style: TextStyle(
                  fontSize: 16,
                  color: lightBlueColor,
                  fontWeight: FontWeight.w300,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(30),
                decoration: BoxDecoration(
                  color: whiteColor,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(40),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Friends',
                      style: titleTextStyle,
                    ),
                    ChatTile(
                      imageUrl: 'assets/images/friend1.png',
                      name: 'Joshuer',
                      text: 'Sorry, you’re not my ty...',
                      date: 'Now',
                      unred: true,
                    ),
                    ChatTile(
                      imageUrl: 'assets/images/friend2.png',
                      name: 'Gabriella',
                      text: 'I saw it clearly and mig...,',
                      date: '02:30',
                      unred: false,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      'Groups',
                      style: titleTextStyle,
                    ),
                    GestureDetector(
                      onTap: () {
                        // print('clicked');
                        Navigator.pushNamed(context, '/chat');
                      },
                      child: ChatTile(
                        imageUrl: 'assets/images/group1.png',
                        name: 'Jakarta Fair',
                        text: 'Why does everyone ca...',
                        date: '11:11',
                        unred: false,
                      ),
                    ),
                    ChatTile(
                      imageUrl: 'assets/images/group2.png',
                      name: 'Angga',
                      text: 'Here here we can go...',
                      date: '7:11',
                      unred: true,
                    ),
                    ChatTile(
                      imageUrl: 'assets/images/group3.png',
                      name: 'Angga',
                      text: 'The car which does not...',
                      date: '7:11',
                      unred: true,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
