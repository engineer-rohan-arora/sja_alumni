import 'package:flutter/material.dart';
import 'package:sjaalumniapp/resources/svg_imgs.dart';
import 'package:sjaalumniapp/screen/membership.dart';




class HomeScreen extends StatefulWidget {
  static const String id = 'home_screen';
  @override
  _HomeScreen createState() => _HomeScreen();
}

class _HomeScreen extends State<HomeScreen> {
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
  final String assetName = 'assets/svgs/1.svg';

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
                      image: AssetImage('assets/pngs/1.png'),
                    ),
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  'Are you an existing member ?',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 38,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    sample(txt: 'Yes',onpresses: (){Navigator.pushNamed(context, membership.id); }),
                    SizedBox(width: 20,),
                    sample(txt: 'No',onpresses: (){Navigator.pushNamed(context, membership.id); }),
                  ],
                )
                


                ],
            ),
          ),
        ),

      ),
    );
  }

}

