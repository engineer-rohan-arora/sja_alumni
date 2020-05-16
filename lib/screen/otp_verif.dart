import 'package:flutter/material.dart';
import 'package:sjaalumniapp/resources/svg_imgs.dart';
import 'package:sjaalumniapp/main.dart';
import 'package:sjaalumniapp/screen/pic_up.dart';
// ignore: camel_case_types
class otp_verif extends StatefulWidget {
  static const String id = 'otp_verif';
  @override
  _otp_verif createState() => _otp_verif();
}

// ignore: camel_case_types
class _otp_verif extends State<otp_verif> {
  final controller = ScrollController();
  double offset = 0;
  int currentPage = 0;
  GlobalKey bottomNavigationKey = GlobalKey();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller.addListener(onScroll);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    controller.dispose();
    super.dispose();
  }

  void onScroll() {
    setState(() {
      offset = (controller.hasClients) ? controller.offset : 0;
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            controller: controller,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: double.infinity,
                  height: 400,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage('assets/pngs/4.png'),
                    ),
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  'Please enter the OTP sent to your registered mobile no. XXXXX-12345',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Padding(
                  padding:
                  const EdgeInsets.symmetric(vertical: 2, horizontal: 140),
                  child: Container(
                    width: 130,
                    color: Color(0xff3954A5),
                    child: Row(
                      //mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
                          child: Container(
                            color: Colors.white,
                            width: 110, // do it in both Container
                            child: TextField(
                                style: TextStyle(
                                    fontSize: 24.0,
                                    color: Colors.black
                                )
                            ),
                          ),
                        ),

                      ],
                    ),
                  ),
                ),
                sample(txt: 'Verify', onpresses: (){Navigator.pushNamed(context, pic_up.id); }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
