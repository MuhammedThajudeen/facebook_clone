// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class iconbutton extends StatelessWidget {
  const iconbutton(
      {super.key, required this.iconimage, required this.iconbuttonactivity, this.iconcolor=Colors.black, required this.bgcolor});

  final IconData iconimage;
  final void Function() iconbuttonactivity;
  final Color iconcolor;
  final Color bgcolor;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
        decoration: BoxDecoration(shape: BoxShape.circle,color: bgcolor),
        child:
            IconButton(onPressed: iconbuttonactivity, icon: Icon(iconimage,color: iconcolor,
            size: 20,)));
  }
}
