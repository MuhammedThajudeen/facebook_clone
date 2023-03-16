// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:newproject/sections.dart/roomsection.dart';
import 'package:newproject/sections.dart/storysection.dart';
import 'package:newproject/sections.dart/suggestionsection.dart';
import 'package:newproject/widgets/iconbutton.dart';
import 'package:newproject/assets.dart';
import 'package:newproject/widgets/likesection.dart';
import 'package:newproject/widgets/postcard.dart';
import 'sections.dart/statussection.dart';
import 'sections.dart/photosection.dart';
import 'package:newproject/widgets/photosectionbuttons.dart';

class homepage extends StatelessWidget {
  const homepage({super.key});

  Widget thindivider() {
    return Divider(
      thickness: 1,
      color: Colors.grey[300],
    );
  }

  Widget thickdivider() {
    return Divider(
      thickness: 8,
      color: Colors.grey[300],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          'facebook',
          style: TextStyle(
              color: Colors.blue, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        actions: [
          iconbutton(
            iconimage: Icons.search,
            iconbuttonactivity: () {},
            iconcolor: Colors.black,
            bgcolor: Colors.grey.shade300,
          ),
          iconbutton(
            iconimage: Icons.message,
            iconbuttonactivity: () {},
            iconcolor: Colors.black,
            bgcolor: Colors.grey.shade300,
          )
        ],
      ),
      body: ListView(
        children: [
          statussection(),
          thindivider(),
          threebuttonsection(
            buttonone: photosecbutton(
                iconlabel: 'Live',
                iconcolor: Colors.red,
                icondata: Icons.video_call,
                iconactivity: () {
                  print('live');
                }),
            buttontwo: photosecbutton(
                iconlabel: 'Photos',
                iconcolor: Colors.green,
                icondata: Icons.photo_library,
                iconactivity: () {
                  print('photos');
                }),
            buttonthree: photosecbutton(
                iconlabel: 'Room',
                iconcolor: Colors.purple,
                icondata: Icons.video_call,
                iconactivity: () {
                  print('room');
                }),
          ),
          thickdivider(),
          RoomSection(),
          thickdivider(),
          StorySection(),
          thickdivider(),
          PostCard(
            avatarimage: mohanlal,
            name: 'Mohanlal',
            posttime: '5hr',
            posttitle: 'Workout Time:)',
            postimage: mohanlalpost,
            celebraty: true,
            commentcount: '20k',
            likecount: '30k',
            sharecount: '10k',
          ),
          likesection(),
          thickdivider(),
          suggestionsection(),
          thickdivider(),
          PostCard(
            avatarimage: mammoty,
            name: 'Mammooty',
            posttime: '8hr',
            posttitle: 'Happy Womens Day❤',
            postimage: mammotypost,
            celebraty: true,
            commentcount: '25k',
            likecount: '40k',
            sharecount: '12k',
          ),
          likesection(),
          thickdivider(),
          PostCard(
            celebraty: true,
              avatarimage: prithvi,
              name: 'Prithviraj Sukumaran',
              posttime: '1 d',
              posttitle: prithvicaption,
              postimage: prithvirajpost,
              likecount: '4k',
              commentcount: '1.3k',
              sharecount: '90'),
          likesection(),
          thickdivider()
        ],
      ),
    );
  }
}
