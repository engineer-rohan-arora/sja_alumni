

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sja_alumni/bg_color.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:path/path.dart';
import 'package:sja_alumni/frame_44.dart';


import 'bottom_navigation.dart';

void main() {
  runApp(MaterialApp(
    home: HomePage(),
    debugShowCheckedModeBanner: false,
    theme:ThemeData(primarySwatch: Colors.blue),
    routes: {
      "/login":(context)=>BottomNavigation(),
    },
  ));
}

class  HomePage  extends StatelessWidget {
  static const String id = 'home_page';
  String _email,_password;
  final GlobalKey<FormState> _formKey=GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.transparent,

        body: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            BgImage(),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: SingleChildScrollView(
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    color: Colors.transparent,
                    shadowColor: Colors.deepOrange,
                    child: Column(
                      children: <Widget>[
                        Form(
                          key: _formKey,
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                              children: <Widget>[
                                TextFormField(
                                  validator: (input){
                                    if(input.isEmpty)
                                      return "Enter an E-mail";
                                    return null;
                                  },
                                  onSaved: (input)=>_email=input,
                                  decoration: InputDecoration(hintText: "xyz@gmail.com",labelText: 'Username'),),
                                SizedBox(height: 10,),
                                TextFormField(
                                  validator:(input){
                                    if(input.length<6)
                                      return 'Plaese enter  Password of 6 Character';
                                    return null;
                                  },
                                  onSaved: (input)=>_password=input,
                                  obscureText: true,
                                  decoration:InputDecoration(hintText: "Enter password",labelText: 'Password'),),
                              ],
                            ),
                          ),),
                        SizedBox(height: 10,),
                        // button
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: RaisedButton(onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder:(context)=>GOI()));
                          },
                            child: Text("Sign in"),
                            color: Colors.orange,
                          ),
                        )


                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        )
    );
  }

  Future<void> signIn () async
  {
    // validate Fields
    // Login to firebase
    final formState=_formKey.currentState;
    if(formState.validate()){
      // Login to firebase
      formState.save();
      try
      {
        FirebaseUser user = (await FirebaseAuth.instance
            .signInWithEmailAndPassword(email: _email, password: _password)) as FirebaseUser;
//        Navigator.push(
//        context,
//            MaterialPageRoute(
//                builder: (context) =>
//                    BottomNavigation(user:user)));
      }catch(e){
        print(e.message);
      }

    }
  }
}
