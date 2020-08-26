import 'package:flutter/material.dart';

const kSendButtonTextStyle = TextStyle(
  color: Colors.black,
  fontWeight: FontWeight.bold,
  fontSize: 18.0,
);

const kMessageTextFieldDecoration = InputDecoration(
  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  hintText: 'Type your message here...',
  border: InputBorder.none,
);


const kTextFieldDecoration = InputDecoration(
  hintText: 'txt',
  contentPadding:
  EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.black, width: 2.0),
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.black, width: 4.0),
    borderRadius: BorderRadius.all(Radius.circular(32.0)),
  ),
);

const kMessageContainerDecoration = BoxDecoration(
  border: Border(
    top: BorderSide(color: Color(0xFF000), width: 2.0),
  ),
);
