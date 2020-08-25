import 'package:flutter/material.dart';
import 'package:sja_alumni/frame_38.dart';
import 'package:sja_alumni/resources/svg_imgs.dart';
import 'package:image_picker/image_picker.dart';
import 'package:sja_alumni/screen/address_updt.dart';
import 'dart:io';

import 'package:sja_alumni/screen/main_screen.dart';

// ignore: camel_case_types
class LUK extends StatefulWidget {
  static const String id = 'pic_up';
  @override
  _pic_up createState() => _pic_up();
}
// ignore: camel_case_types
class _pic_up extends State<LUK> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0xFF041DAF),Color(0xFFFFF)],
                  begin: Alignment.topLeft,
                  end: Alignment.center,
                )
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 8,
                ),
                Flexible(child: Image(image: AssetImage('assets/ty.png'))),
                SizedBox(
                  height: 8,
                ),
                Flexible(child: Image(image: AssetImage('assets/ltn.png'))),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
