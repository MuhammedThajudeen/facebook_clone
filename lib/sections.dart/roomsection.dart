// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:newproject/assets.dart';

import '../widgets/avatar.dart';

class RoomSection extends StatelessWidget {
  const RoomSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      child: ListView(
        padding: EdgeInsets.all(8),
        scrollDirection: Axis.horizontal,
        children: [roombutton(),
        avatar(avatarimage: sujith,statusindicator: true),
        avatar(avatarimage: sharique,statusindicator: true),
        avatar(avatarimage: mohanlal,statusindicator: true),
        avatar(avatarimage: mammoty, statusindicator: true,),
        avatar(avatarimage: sujith,statusindicator: true),
        avatar(avatarimage: sharique,statusindicator: true),
        avatar(avatarimage: mohanlal,statusindicator: true),
        avatar(avatarimage: mammoty,statusindicator: true),
        avatar(avatarimage: sujith,statusindicator: true),
        avatar(avatarimage: sharique,statusindicator: true),
        avatar(avatarimage: mohanlal,statusindicator: true),
        avatar(avatarimage: mammoty,statusindicator: true),
        ],
      ),
    );
  }

  Widget roombutton() {
    return Container(
      padding: EdgeInsets.only(right: 5),
      child: OutlinedButton.icon(
        onPressed: () {
          print('create room');
        },
        icon: Icon(
          Icons.video_call,
          color: Color.fromARGB(255, 187, 5, 172),
        ),
        label: Text(
          'Create \nRoom',
          style: TextStyle(color: Colors.blue),
          textAlign: TextAlign.center,
        ),
        style: ButtonStyle(
            shape: MaterialStatePropertyAll(StadiumBorder()),
            side: MaterialStatePropertyAll(
                BorderSide(color: Colors.blue.shade100,width: 2))),
      ),
    );
  }
}
