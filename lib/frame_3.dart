import 'package:flutter/material.dart';
import 'package:sja_alumni/Android_6.dart';
class contact_details extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.yellow, Colors.white],
                begin: const FractionalOffset(0.0, 0.0),
                end: const FractionalOffset(0.0, 0.1),
                stops: [0.0, 1.0],
                tileMode: TileMode.clamp
            ),
          ),
          child: Column(
            children: <Widget>[
              Center(
                child: Container(
                  width: MediaQuery.of(context).size.width/1.5,
                  height: MediaQuery.of(context).size.height/2,
                  child: Image.asset('assests/Asset3_cont.png'),
                ),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      child: Text('Contact Details',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24,decoration: TextDecoration.none,color: Colors.black),),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Card(
                    elevation: 0,
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: TextFormField(
                        decoration: InputDecoration(
                          labelText: 'Mobile Number',
                          labelStyle:TextStyle(color: Colors.blue,fontSize: 22),
                        ),
                      ),
                    ),
                  ),
                )
              ),
              SizedBox(
                height: 10,
              ),

              Container(
                  child: ButtonTheme(
                    minWidth: 160,
                    height: 40,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                    child: RaisedButton(
                      onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>mobile_Otp()));
                      },
                      color: Colors.redAccent,
                      child: Text('Send OTP',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                    ),
                  )
              )

            ],
          ),
        ),
        // paste button
      ],
    );
  }
}
