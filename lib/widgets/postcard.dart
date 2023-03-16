// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, prefer_if_null_operators

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:newproject/assets.dart';
import 'package:newproject/widgets/avatar.dart';
import 'package:newproject/widgets/bluetick.dart';
import 'package:newproject/sections.dart/photosection.dart';

class PostCard extends StatelessWidget {
  const PostCard(
      {super.key,
      required this.avatarimage,
      required this.name,
      required this.posttime,
      required this.posttitle,
      required this.postimage,
      this.celebraty = false,
      required this.likecount,
      required this.commentcount,
      required this.sharecount});

  final String avatarimage;
  final String name;
  final String posttime;
  final String posttitle;
  final String postimage;
  final bool celebraty;
  final String likecount;
  final String commentcount;
  final String sharecount;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          postcardheader(),
          titlesection(),
          imagesection(),
          footersection(),
          Divider(
            thickness: 1,
            color: Colors.grey[300],
          )
        ],
      ),
    );
  }

  Widget titlesection() {
    return Container(
      padding: EdgeInsets.only(bottom: 5),
      child: Text(
        posttitle,
        style: TextStyle(color: Colors.black, fontSize: 16),
      ),
    );
  }

  Widget imagesection() {
    return Container(
      padding: EdgeInsets.only(top: 5, bottom: 5),
      child: Image.asset(postimage),
    );
  }

  Widget footersection() {
    return Container(
      padding: EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(
                Icons.thumb_up,
                color: Colors.blue,
                size: 16,
              ),
              SizedBox(
                width: 10,
              ),
              Text(likecount)
            ],
          ),
          Row(
            children: [
              Text('$commentcount Comments'),
              SizedBox(
                width: 10,
              ),
              Text('$sharecount Shares'),
              avatar(
                avatarimage: avatarimage,
                statusindicator: false,
                height: 20,
                width: 20,
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget postcardheader() {
    return ListTile(
      leading: avatar(avatarimage: avatarimage, statusindicator: false),
      title: Row(
        children: [
          Text(name),
          SizedBox(
            width: 8,
          ),
          celebraty ? BlueTick() : SizedBox()
        ],
      ),
      subtitle: Row(
        children: [
          Text(
            posttime == null ? "" : posttime,
            style: TextStyle(color: Colors.grey[700], fontSize: 13),
          ),
          SizedBox(
            width: 6,
          ),
          Icon(
            Icons.public,
            color: Colors.grey[700],
            size: 13,
          )
        ],
      ),
      trailing: IconButton(
          onPressed: () {
            print('post settings');
          },
          icon: Icon(Icons.more_horiz)),
    );
  }
}
