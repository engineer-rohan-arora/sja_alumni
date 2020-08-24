
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sja_alumni/frame_3.dart';


class Address extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.lightBlueAccent, Colors.white],
                begin: const FractionalOffset(0.0, 0.0),
                end: const FractionalOffset(0.0, 0.4),
                stops: [0.0, 1.0],
                tileMode: TileMode.clamp
            ),
          ),
          child: Column(
            children: <Widget>[
              Center(
                child: Container(
                  width: MediaQuery.of(context).size.width/2,
                  height: MediaQuery.of(context).size.height/3,
                  child: Image.asset("assests/Asset2.png"),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 20, top:10, right: 20, bottom:0),
                child: Row(
                  children: <Widget>[
                    Text('Address',style: TextStyle(decoration: TextDecoration.none,fontSize: 23,color: Colors.black),)
                  ],
                ),
              ),
              Card(
                elevation: 0,
                child: Form(
                  child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: 5,
                        ),
                        TextFormField(
//                          keyboardType: TextInputType.,
                          decoration: InputDecoration(
                            hintText: 'Line 1',
                            labelText: 'Address',
                            labelStyle: TextStyle(color: Colors.redAccent),
                          ),
                        ),
//                          SizedBox(
//                            height: 5,
//                          ),
                        TextFormField(
                          decoration: InputDecoration(
                            hintText: '',
                          ),
                        ),
//                          SizedBox(
//                            height: 5,
//                          ),
                        TextFormField(
                          decoration: InputDecoration(
//                            fillColor: Colors.red.withOpacity(0.6),
//                            filled: true,
                            labelText: 'City',
                            hintText: 'Merrut',
                            labelStyle: TextStyle(color: Colors.redAccent),
                          ),
                        ),
//                          SizedBox(
//                            height: 5,
//                          ),
                        TextFormField(
                          decoration: InputDecoration(
                            labelText: 'Pin Code',
                            hintText: '2452xx',
                            labelStyle: TextStyle(color: Colors.red),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                child: ButtonTheme(
                  minWidth: 160,
                  height: 40,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                  child: RaisedButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>contact_details()));
                    },
                    color: Colors.redAccent,
                    child: Text('Next',style: TextStyle(color: Colors.white),),
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
