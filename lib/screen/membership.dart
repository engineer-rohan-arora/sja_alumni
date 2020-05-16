import 'package:flutter/material.dart';
import 'package:sjaalumniapp/resources/svg_imgs.dart';
import 'package:sjaalumniapp/screen/otp_verif.dart';

// ignore: camel_case_types
class membership extends StatefulWidget {
  static const String id = 'membership';
  @override
  _membership createState() => _membership();
}

// ignore: camel_case_types
class _membership extends State<membership> {
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

  final String assetName = 'assets/svgs/2.svg';

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
                      image: AssetImage('assets/pngs/2.png'),
                    ),
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  'Please enter your membership no.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 38,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 2, horizontal: 90),
                  child: Container(
                    color: Color(0xff3954A5),
                    child: Row(
                      //mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'SJA-A',
                            style: TextStyle(
                              fontSize: 32,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Flexible(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
                            child: Container(
                              color: Colors.white,
                              width: 100, // do it in both Container
                              child: TextField(
                                  style: TextStyle(
                                      fontSize: 28.0,
                                      color: Colors.black
                                  )
                              ),
                            ),
                          ),
                        ),

                      ],
                    ),
                  ),
                ),
                sample(txt: 'Send OTP', onpresses: (){Navigator.pushNamed(context, otp_verif.id); }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
