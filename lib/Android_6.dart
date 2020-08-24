import 'package:flutter/material.dart';

import 'Frame_29.dart';

class mobile_Otp extends StatelessWidget {
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
                  width: MediaQuery.of(context).size.width/2,
                  height: MediaQuery.of(context).size.height/2,
                  child: Image.asset('assets/Asset4_num_otp.png'),
                ),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      child: Text('Please Number OTP ',
                        style: TextStyle(fontSize: 21,decoration: TextDecoration.none,color: Colors.black,fontWeight: FontWeight.normal),),
                    ),
                  ],
                ),
              ),
              Container(      // start
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Card(
                      elevation: 0,
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: TextFormField(
                          decoration: InputDecoration(
                            labelText: 'OTP Field',
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
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>ContactEmail()));
                      },
                      color: Colors.redAccent,
                      child: Text('Verify',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
                    ),
                  )
              )

            ],
          ),
        ),
      ],
    );
  }
}
