
import 'package:flutter/material.dart';
import 'package:sja_alumni/frame_38.dart';


class personal_info extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.deepPurple,Colors.white],
                begin: const FractionalOffset(0.0, 0.0),
                end: const FractionalOffset(0.0, 0.4),
                stops: [0.0,1.0],
                tileMode: TileMode.clamp
            ),
          ),
          child: Column(
            children: <Widget>[
              Center(
                child: Container(
                  width: MediaQuery.of(context).size.width/2,
                  height: MediaQuery.of(context).size.height/3,
                  child:Image.asset("assests/Asset2.png",),
                ),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
//                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text('Personal Info',style: TextStyle(color: Colors.black,fontSize: 23,decoration: TextDecoration.none ),),
//                    RaisedButton(
//                      onPressed: (){},
//                      child: Text('Upadte',style: TextStyle(color: Colors.white),),
//                      color: Colors.green,
//                    )
                    ButtonTheme(
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0),),
                      child: RaisedButton(
                        onPressed: () {
//                          Navigator.push(context, MaterialPageRoute(builder: (context)=>personal_info()));
                        },
                        child: Text("Update",style: TextStyle(color: Colors.white,fontSize: 20),),
                      ),
                    ),
                  ],
                ),
              ),
              Card(
                elevation: 0,
                child: Form(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                            hintText: 'xyz',
                                labelText: 'Name',
//                            prefixIcon: Icon(Icons.calendar_today),
                          ),
                        ),
                        SizedBox(height: 10,),
                        TextFormField(
                          decoration: InputDecoration(
                            hintText: '20XX',
                            labelText: 'Year of Passout',
                          ),
                        ),
                        SizedBox(height: 10,),
                        TextFormField(
                          decoration: InputDecoration(
                            hintText: '17/09/XXXX',
                            labelText: 'Date of Birth',
                          ),
                        ),
                        SizedBox(height: 10,),
                        TextFormField(
                          decoration: InputDecoration(
                            hintText: '20XX',
                            labelText: 'Date of Anniversary',
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
//                        Padding(
//                          padding: const EdgeInsets.all(16.0),
//                          child: ButtonTheme(
//                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0),),
//                            minWidth: 160,
//                            height: 40,
//                            child: RaisedButton(
//                              onPressed: ()
//                              {
//                                Navigator.push(context, MaterialPageRoute(builder: (context)=>Address()));
//                              },
//                              textColor: Colors.white,
//                              child: Text('Next',style: TextStyle(fontSize: 20),),
//
//                            ),
//                          ),
//                        ),
                        Container(
                            child: ButtonTheme(
                              minWidth: 160,
                              height: 40,
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                              child: RaisedButton(
                                onPressed: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Address()));
                                },
                                color: Colors.blue,
                                child: Text('Next',style: TextStyle(color: Colors.white),),
                              ),
                            )
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
