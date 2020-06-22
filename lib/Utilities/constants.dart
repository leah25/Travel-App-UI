import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

const kTextBold = TextStyle(
  fontWeight: FontWeight.bold,
  fontSize: 39.0,
  color: Colors.white,
);
const kTopText = TextStyle(
  fontSize: 18.0,
  color: Colors.white,
  fontStyle: FontStyle.italic,
);
const kCityText =TextStyle(
    fontSize: 15.0,
    fontStyle: FontStyle.italic,

);
const kCountryText =TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 20.0,
);
const kHintText =TextStyle(color: Colors.grey,
    fontStyle: FontStyle.italic);

const kFormDecoration= InputDecoration (
  hintText: 'Eg. Cape Town ',hintStyle: kHintText,
  fillColor: Colors.white,
  border: OutlineInputBorder(borderSide: BorderSide.none,),

);

