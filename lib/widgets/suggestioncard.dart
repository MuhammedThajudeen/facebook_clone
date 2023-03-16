// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:newproject/assets.dart';
import 'package:newproject/widgets/bluetick.dart';

class suggestioncard extends StatelessWidget {
  const suggestioncard(
      {super.key,
      required this.name,
      required this.mutualcount,
      required this.image,
      this.celebraty=false});
  final String name;
  final String mutualcount;
  final String image;
  final bool celebraty;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      margin: EdgeInsets.all(10),
      child: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10), topRight: Radius.circular(10)),
              child: Image.asset(
                image,
                fit: BoxFit.cover,
                height: 250,
              ),
            ),
          ),
          buttonarea()
        ],
      ),
    );
  }

  Widget buttonarea() {
    return Positioned(
        bottom: 0,
        left: 0,
        right: 0,
        child: Container(
          height: 120,
          color: Colors.grey.shade200,
          child: Column(
            children: [
              ListTile(
                title: Row(
                  children: [Text(name),SizedBox(width: 5,), celebraty ? BlueTick() : SizedBox()],
                ),
                subtitle: Text('$mutualcount mutual friends'),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    button(
                        buttontext: 'Add Friend',
                        buttoncolor: Colors.blue.shade700,
                        buttontextcolor: Colors.white,
                        buttoniconcolor: Colors.white,
                        buttonicon: Icons.add_moderator),
                    blankbutton()
                  ],
                ),
              )
            ],
          ),
        ));
  }

  Widget button({
    required String buttontext,
    required Color buttoncolor,
    required Color buttontextcolor,
    required Color buttoniconcolor,
    required IconData buttonicon,
  }) {
    return TextButton.icon(
      onPressed: () {},
      icon: Icon(
        buttonicon,
        color: buttoniconcolor,
      ),
      label: Text(
        buttontext,
        style: TextStyle(color: buttontextcolor),
      ),
      style:
          ButtonStyle(backgroundColor: MaterialStatePropertyAll(buttoncolor)),
    );
  }

  Widget blankbutton() {
    return TextButton(
      onPressed: () {},
      child: Text(
        'Remove',
        style: TextStyle(color: Colors.black),
      ),
      style: ButtonStyle(
          backgroundColor: MaterialStatePropertyAll(Colors.grey.shade300)),
    );
  }
}
