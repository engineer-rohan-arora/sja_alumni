import 'package:flutter/material.dart';
import 'package:sja_alumni/resources/svg_imgs.dart';
import 'package:image_picker/image_picker.dart';
import 'package:sja_alumni/screen/address_updt.dart';
import 'dart:io';

import 'package:sja_alumni/screen/main_screen.dart';

// ignore: camel_case_types
class pic_up extends StatefulWidget {
  static const String id = 'pic_up';
  @override
  _pic_up createState() => _pic_up();
}

// ignore: camel_case_types
class _pic_up extends State<pic_up> {
  final controller = ScrollController();
  double offset = 0;
  int currentPage = 0;
  GlobalKey bottomNavigationKey = GlobalKey();

  File imageURI;

  Future getImageFromCamera() async {

    var image = await ImagePicker.pickImage(source: ImageSource.camera);

    setState(() {
      imageURI = image;
    });
  }

  Future getImageFromGallery() async {

    var image = await ImagePicker.pickImage(source: ImageSource.gallery);

    setState(() {
      imageURI = image;
    });
  }

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

  final String assetName = 'assets/svgs/4.svg';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0xFF041DAF),Color(0xFF00DAAA)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                )
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 8,
                ),
                Flexible(child: Image(image: AssetImage('assets/pngs/3.png'))),
                SizedBox(
                  height: 8,
                ),
                Flexible(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal:48),
                    child: Container(
                      color: Colors.white,
                      height: 3200,
                      width: 408,
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Flexible(
                                child: imageURI == null
                                    ? Text('No image selected.')
                                    : Image.file(imageURI, width: 300, height: 200, fit: BoxFit.cover),
                              ),

                              IconButton(
                                icon: Icon(Icons.add_a_photo),
                                onPressed: () => getImageFromGallery(),
                              ),

                            ]))
                    ),
                  ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal:48),
                  child: sample1(txt: 'Upload', onpresses: (){Navigator.pushNamed(context, address_updt.id); }),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
