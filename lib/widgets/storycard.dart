// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:newproject/widgets/avatar.dart';
import 'package:newproject/widgets/iconbutton.dart';

import '../assets.dart';

class StoryCard extends StatelessWidget {
  const StoryCard({
    super.key,
    required this.storyavatarname,
    required this.storyimage,
    required this.avatarphoto,
    this.avatarflag = false,
  });

  final String storyavatarname;
  final String storyimage;
  final String avatarphoto;
  final bool avatarflag;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      margin: EdgeInsets.only(left: 5, right: 5, top: 10, bottom: 10),
      decoration: BoxDecoration(
          image:
              DecorationImage(image: AssetImage(storyimage), fit: BoxFit.cover),
          borderRadius: BorderRadius.circular(15)),
      child: Stack(
        children: [
          Positioned(
            top: 5,
            left: 5,
            child: avatarflag
                ? iconbutton(
                    iconimage: Icons.add,
                    iconbuttonactivity: () {
                      print('add to story');
                    },
                    iconcolor: Colors.blue,
                    bgcolor: Colors.grey.shade300,
                  )
                : avatar(avatarimage: avatarphoto, statusindicator: false,displayborder: true,),
          ),
          Positioned(
              bottom: 10,
              left: 10,
              child: Text(
                storyavatarname != null ? storyavatarname : "",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    ),
              ))
        ],
      ),
    );
  }
}
