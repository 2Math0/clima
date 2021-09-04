import 'package:flutter/material.dart';

const kTempTextStyle = TextStyle(
  fontFamily: 'Spartan MB',
  fontSize: 120.0,
);

const kMessageTextStyle = TextStyle(
  fontFamily: 'Spartan MB',
  fontSize: 60.0,
);

const kButtonTextStyle = TextStyle(
  fontSize: 20.0,
  fontFamily: 'Spartan MB',
);

const kConditionTextStyle = TextStyle(
  fontSize: 100.0,
);

const kTextFieldInputDecoration = InputDecoration(
  hintText: 'City Name',
  hintStyle: TextStyle(
    color: Colors.white70,
  ),
  filled: true,
  icon: Icon(Icons.location_city, color: Colors.white70,),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular (50.0)),
    borderSide: BorderSide(color: Colors.white),
  ),
);
