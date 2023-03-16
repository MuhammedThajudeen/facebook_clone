// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:newproject/assets.dart';
import 'package:newproject/widgets/suggestioncard.dart';

class suggestionsection extends StatelessWidget {
  const suggestionsection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 440,
      child: Column(
        children: [
          ListTile(
            title: Text('People You May Know'),
            trailing:
                IconButton(onPressed: () {}, icon: Icon(Icons.more_horiz)),
          ),
          Container(
            height: 390,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                suggestioncard(
                  name: 'Sujith Bakthan',
                  image: sujith,
                  mutualcount: '200',
                  
                ),
                suggestioncard(
                  name: 'Asif Ali',
                  mutualcount: '200',
                  image: asifali,
                  celebraty: true,
                ),
                suggestioncard(name: 'Prithviraj sukumaran', mutualcount: '500', image: prithvi,celebraty: true,)
              ],
            ),
          )
        ],
      ),
    );
  }
}
