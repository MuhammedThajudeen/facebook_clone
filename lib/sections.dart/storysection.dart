// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:newproject/assets.dart';
import 'package:newproject/widgets/iconbutton.dart';
import 'package:newproject/widgets/storycard.dart';

class StorySection extends StatelessWidget {
  const StorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          StoryCard(
            storyavatarname: 'Add to Story',
            storyimage: dulqer,
            avatarphoto: dulqer,
            avatarflag: true,
          ),
          StoryCard(
              storyavatarname: 'Mohanlal',
              storyimage: mohanlalstory,
              avatarphoto: mohanlal),
          StoryCard(
              storyavatarname: 'Sharique Shamsudeen',
              storyimage: shariquestory,
              avatarphoto: sharique),
          StoryCard(
              storyavatarname: 'Sujith Bakthan',
              storyimage: sujithtravelstory,
              avatarphoto: sujith),
          StoryCard(
              storyavatarname: 'Mammooty',
              storyimage: mammotystory,
              avatarphoto: mammoty),
          StoryCard(
              storyavatarname: 'AsifAli',
              storyimage: asifalistory,
              avatarphoto: asifali)
        ],
      ),
    );
  }
}
