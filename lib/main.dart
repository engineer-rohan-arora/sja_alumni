import 'package:flutter/material.dart';
import 'package:sjaalumniapp/screen/main_screen.dart';
import 'package:sjaalumniapp/screen/membership.dart';
import 'package:sjaalumniapp/screen/otp_verif.dart';

import 'package:sjaalumniapp/screen/pic_up.dart';

void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        routes: {
          'membership' : (context) => membership(),
          'home_screen' : (context) => HomeScreen(),
          'otp_verif' : (context) => otp_verif(),
          'pic_up' : (context) => pic_up()
        },
        home: HomeScreen());
  }
}
