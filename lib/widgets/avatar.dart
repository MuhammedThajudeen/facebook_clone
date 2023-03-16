// ignore_for_file: prefer_const_constructors, dead_code

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class avatar extends StatelessWidget {
  avatar(
      {super.key,
      required this.avatarimage,
      required this.statusindicator,
      this.displayborder = false,
      this.height=45,
      this.width=45});

  final bool statusindicator;
  final String avatarimage;
  final bool displayborder;
  final double height;
  final double width;
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: displayborder
                ? Border.all(color: Colors.blueAccent, width: 2)
                : Border()),
        padding: EdgeInsets.only(left: 4, right: 4),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(100),
          child: Image.asset(
            avatarimage,
            height: height,
            width: width,
            fit: BoxFit.cover,
          ),
        ),
      ),
      statusindicator == true
          ? Positioned(
              bottom: 0,
              right: 1,
              child: Container(
                width: 15,
                height: 15,
                decoration: BoxDecoration(
                    color: Colors.greenAccent,
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.white, width: 2)),
              ),
            )
          : SizedBox()
    ]);
  }
}
