// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';


  Widget photosecbutton( {
    required String iconlabel,
    required Color iconcolor,
    required IconData icondata,
    required void Function() iconactivity
  }){
    return ElevatedButton.icon(
      onPressed: iconactivity,
      icon: Icon(
        icondata,
        color: iconcolor,
      ),
      label: Text(
        iconlabel,
        style: TextStyle(color: Colors.black),
      ),
      style: ButtonStyle(
          backgroundColor: MaterialStatePropertyAll(Colors.transparent),
          side: MaterialStatePropertyAll(BorderSide.none),
          elevation: MaterialStatePropertyAll(0)),
    );
  }