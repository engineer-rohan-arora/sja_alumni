import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:sja_alumni/frame_27.dart';
final _firestore= Firestore.instance;

class contact_details extends StatelessWidget {
  contact_details(
      {@required this.name0,
        @required this.yepo,
        @required this.datob,
        @required this.datoa,
        @required this.Address_L1,
        @required this.Address_L2,
        @required this.pincode,
        @required this.city
      });

  final String name0;
  final String yepo;
  final String datoa;
  final String datob ;
  final String Address_L1;
  final String Address_L2;
  final String pincode;
  final String city ;

  final messagetextcontroller = TextEditingController();
  final messagetextcontrolle = TextEditingController();

  String mail,num;

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
              Flexible(
                child: Hero(
                  tag: 'logo',
                  child: Container(
                    height: 250.0,
                    child: Image.asset('assets/Asset3_cont.png'),
                  ),
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
                  padding: const EdgeInsets.all(6.0),
                  child: Card(
                    elevation: 0,
                    child: Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: TextField(
                        controller: messagetextcontroller ,
                        onChanged: (value) {
                          num=value;

                        },
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
                  child: Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Card(
                      elevation: 0,
                      child: Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: TextField(
                          controller: messagetextcontrolle ,
                          onChanged: (value) {
                            mail=value;
                            print(mail);
                          },
                          decoration: InputDecoration(
                            labelText: 'E-mail Address',
                            labelStyle:TextStyle(color: Colors.blue,fontSize: 22),
                          ),
                        ),
                      ),
                    ),
                  )
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                  child: ButtonTheme(
                    minWidth: 160,
                    height: 40,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
                    child: RaisedButton(
                      onPressed: ()
                        async{
                          _firestore.collection('Unregistered Users')
                              .document('$mail')
                              .setData
                            ({
                            'Name':name0,
                            'Year Of Pass Out':yepo,
                            'Date of Birth': datob,
                            'date of Aniversary': datoa,
                            'mail': mail,
                            'number': num,
                            'Address_L1':Address_L1,
                            'Address_L2':Address_L2,
                            'pincode':pincode,
                            'city':city,
                          });
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>personal_info(
                            mail1: mail,
                          )));
                          },


                      color: Colors.blue,
                        child: Text('Next',style: TextStyle(color: Colors.white),),
                    ),
                    ),
                  ),

              SizedBox(
                height: 10,
              ),

            ],
          ),
        ),
        // paste button
      ],
    );
  }
}
