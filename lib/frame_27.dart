import 'package:flutter/material.dart';
import 'package:sja_alumni/frame_31.dart';
import 'package:sja_alumni/resources/svg_imgs.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'package:path/path.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'frame_3.dart';

// ignore: camel_case_types
class personal_info extends StatefulWidget {
  final String mail1;
  personal_info(
      {@required this.mail1,});

  @override
  _pic_up createState() => _pic_up(
    mail: mail1,
  );
}

// ignore: camel_case_types
class _pic_up extends State<personal_info> {
  final String mail;
  _pic_up(
  {@required this.mail,});
  final controller = ScrollController();
  double offset = 0;
  int currentPage = 0;
  GlobalKey bottomNavigationKey = GlobalKey();
  File imageURI;


  Future getImageFromGallery() async {

    var image = await ImagePicker.pickImage(source: ImageSource.gallery);

    setState(() {
      imageURI = image;
    });
  }
  Future uploadPic(BuildContext context) async{
    String fileName = basename(imageURI.path);
    String ab = mail;
    String a= ab+ '--photo.jpg';
    StorageReference firebaseStorageRef = FirebaseStorage.instance.ref().child(a);
    StorageUploadTask uploadTask = firebaseStorageRef.putFile(imageURI);
    StorageTaskSnapshot taskSnapshot=await uploadTask.onComplete;
    setState(() {
      print("Profile Picture uploaded");
      Scaffold.of(context).showSnackBar(SnackBar(content: Text('Profile Picture Uploaded')));
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    RaisedButton(
                      color: Color(0xff476cfb),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      elevation: 4.0,
                      splashColor: Colors.blueGrey,
                      child: Text(
                        'Cancel',
                        style: TextStyle(color: Colors.white, fontSize: 16.0),
                      ),
                    ),
                    RaisedButton(
                      color: Color(0xff476cfb),
                      onPressed: () {
                        uploadPic(context);
                      },

                      elevation: 4.0,
                      splashColor: Colors.blueGrey,
                      child: Text(
                        'Upload',
                        style: TextStyle(color: Colors.white, fontSize: 16.0),
                      ),
                    ),

                  ],
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal:48),
                  child: sample1(txt: 'Next', onpresses: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>LeaveCertificate(
                      mail1: mail
                  )));
                  }),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
