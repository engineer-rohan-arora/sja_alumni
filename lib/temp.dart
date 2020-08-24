import 'package:flutter/material.dart';
import 'package:sja_alumni/Frame_30.dart';


class LeaveCertificate extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.lightGreen,Colors.white],
                begin: const FractionalOffset(0.0, 0.0),
                end: const FractionalOffset(0.0, 0.1),
                stops: [0.0,1.0],
                tileMode: TileMode.clamp
            ),
          ),
          child: Column(
            children: <Widget>[
              Center(
                  child:Column(
                    children: <Widget>[
                      Center(
                        child: Container(
                          width:MediaQuery.of(context).size.width/1.5 ,
                          height: MediaQuery.of(context).size.height/2,
                          child:Image.asset("assets/Asset5_ID.png"),
                        ),
                      ),
                      Center(
                        child: Container(
                            width:MediaQuery.of(context).size.width/1.2,
                            height: MediaQuery.of(context).size.height/4,
                            decoration: BoxDecoration(
                              color: Colors.black12,
                              borderRadius:BorderRadius.circular(20),
                              border: Border.all(color: Colors.black12,width: 5),
                            ),
                            child: Column(
                              children: <Widget>[
                                Container(
                                  child: Icon(Icons.camera_enhance,size: 70,color: Colors.black26,),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  child: Text('Browse',textAlign: TextAlign.center,style: TextStyle(color: Colors.blue,decoration: TextDecoration.underline,decorationColor: Colors.blue,fontSize: 22),),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  child: Text('File  to Upload',style:TextStyle(fontSize: 16,decoration: TextDecoration.none,color: Colors.black,fontWeight: FontWeight.normal),),
                                ),
                                Container(
                                  child: Text('School leaving Certificate',style:TextStyle(fontSize: 16,decoration: TextDecoration.none,color: Colors.black,fontWeight: FontWeight.normal),),
                                ),
                              ],
                            )
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: ButtonTheme(
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                          minWidth: 160,
                          height: 40,
                          child: RaisedButton(
                            onPressed: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>IDGOI()));
                            },
                            child: Text("Submit",style: TextStyle(color: Colors.white,fontSize: 20),),
                            color: Colors.blue,
                          ),
                        ),
                      ),
                    ],
                  )
              )
            ],
          ),

        ),
      ],
    );
  }
}
