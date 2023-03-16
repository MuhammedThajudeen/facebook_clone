import 'package:flutter/material.dart';
import 'package:newproject/sections.dart/photosection.dart';

import 'photosectionbuttons.dart';

Widget likesection(){
  return threebuttonsection(
              buttonone: photosecbutton(
                  iconlabel: 'Like',
                  iconcolor: Colors.grey.shade500,
                  icondata: Icons.thumb_up_alt_outlined,
                  iconactivity: () {
                    print('like');
                  }),
              buttontwo: photosecbutton(
                  iconlabel: 'Comment',
                  iconcolor: Colors.grey.shade500,
                  icondata: Icons.message_outlined,
                  iconactivity: () {
                    print('comment');
                  }),
              buttonthree: photosecbutton(
                  iconlabel: 'Share',
                  iconcolor: Colors.grey.shade500,
                  icondata: Icons.share,
                  iconactivity: () {
                    print('share');
                  }));
}