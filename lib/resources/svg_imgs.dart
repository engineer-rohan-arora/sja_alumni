
import 'package:flutter/material.dart';

// ignore: camel_case_types
class sample extends StatelessWidget {

  sample({this.txt,@required this.onpresses});

  final String txt;
  final Function onpresses;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        elevation: 5.0,
        color: Colors.red,
        borderRadius: BorderRadius.all(Radius.circular(30.0)),
        child: MaterialButton(
          onPressed: onpresses,
          minWidth: 150.0,
          height: 42.0,
          child: Text(
            txt,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w500,
              fontSize: 22,
            ),

          ),
        ),
      ),
    );
  }
}


class sample1 extends StatelessWidget {

  sample1({this.txt,@required this.onpresses});

  final String txt;
  final Function onpresses;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        elevation: 5.0,
        color: Colors.blueAccent,
        borderRadius: BorderRadius.all(Radius.circular(30.0)),
        child: MaterialButton(
          onPressed: onpresses,
          minWidth: 150.0,
          height: 42.0,
          child: Text(
            txt,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w500,
              fontSize: 22,
            ),

          ),
        ),
      ),
    );
  }
}

class sample2 extends StatelessWidget {

  sample2({this.txt,@required this.onpresses});

  final String txt;
  final Function onpresses;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        elevation: 5.0,
        color: Colors.green,
        borderRadius: BorderRadius.all(Radius.circular(30.0)),
        child: MaterialButton(
          onPressed: onpresses,
          minWidth: 50.0,
          height: 32.0,
          child: Text(
            txt,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w500,
              fontSize: 22,
            ),

          ),
        ),
      ),
    );
  }
}