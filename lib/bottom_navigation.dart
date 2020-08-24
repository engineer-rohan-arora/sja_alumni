import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';


class BottomNavigation extends StatefulWidget {
//  const BottomNavigation({Key key, this.user}) : super(key: key);
//  final FirebaseUser user;


  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {

  int _currentIndex=0;
  final tabs=[
    Center(child: Text('Home'),),
    Center(child: Text('Search'),),
    Center(child: Text('Camera'),),
    Center(child: Text('Profile'),),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
//        title: Text('Home page ${widget.user.email}'),
          title: Text('Home Page'),
      ),
      body:tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex:_currentIndex ,
        items:[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
            backgroundColor: Colors.redAccent,
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            title: Text('Search'),
            backgroundColor: Colors.deepOrange,
          ),


          BottomNavigationBarItem(
            icon: Icon(Icons.camera),
            title: Text('Camera'),
            backgroundColor: Colors.orange,
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text('Profile'),
            backgroundColor: Colors.deepOrangeAccent,
          )
        ],
          onTap: (index){
          setState(() {
            _currentIndex=index;
          });
          },
      ),
    );
  }
}
