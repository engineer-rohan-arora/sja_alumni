import 'package:flutter/material.dart';
import 'package:sja_alumni/frame_27.dart';
class contact_details extends StatelessWidget {
  contact_details(
      {@required this.name0,
        @required this.yepo,
        @required this.datob,
        @required this.datoa});

  final String name0;
  final String yepo;
  final String datoa;
  final String datob ;

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
                      child: TextFormField(
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
                        child: TextFormField(
                          controller: messagetextcontroller ,
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
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>personal_info(
                          name0: this.name0,
                          yepo: this.yepo,
                          datob: this.datob,
                          datoa: this.datoa,
                          mail: this.mail,
                          num:this.num,
                        )));
                        print(this.name0);
                      },
                      color: Colors.redAccent,
                      child: Text('Next',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                    ),
                  )
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
