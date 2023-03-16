// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:newproject/widgets/photosectionbuttons.dart';

class threebuttonsection extends StatelessWidget {
  const threebuttonsection({super.key, required this.buttonone, required this.buttontwo, required this.buttonthree});

  final Widget buttonone;
  final Widget   buttontwo;
  final Widget buttonthree;


  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          buttonone,
          VerticalDivider(
            thickness: 1,
            color: Colors.grey[300],
          ),
          buttontwo,
          VerticalDivider(
            thickness: 1,
            color: Colors.grey[300],
          ),
          buttonthree
        ],
      ),
    );
  }
}
