// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../assets.dart';
import '../widgets/avatar.dart';

class statussection extends StatelessWidget {
  const statussection({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: avatar(avatarimage: dulqer,statusindicator: false),
      title: TextField(
        decoration: InputDecoration(
            hintText: "What's on your mind? ", border: InputBorder.none),
      ),
    );
  }
}
