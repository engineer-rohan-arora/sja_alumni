import 'package:flutter/material.dart';
import 'package:sja_alumni/screen/address_updt.dart';
import 'package:sja_alumni/screen/main_screen.dart';
import 'package:sja_alumni/screen/membership.dart';
import 'package:sja_alumni/screen/otp_verif.dart';
import 'package:sja_alumni/insider.dart';
import 'package:sja_alumni/screen/pic_up.dart';

void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        routes: {
          'membership' : (context) => membership(),
          'home_screen' : (context) => HomeScreen(),
          'otp_verif' : (context) => otp_verif(),
          'pic_up' : (context) => pic_up(),
          'address_updt' : (context) => address_updt(),
          'address_updt' : (context) => address_updt(),

        },
        home: HomeScreen());
  }
}
