import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'constants.dart';


class ReuseTextField extends StatelessWidget {

  ReuseTextField({this.hint});
 final String hint;


  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: Colors.brown,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: kHintText,
        fillColor: Colors.white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(style: BorderStyle.solid,color: Colors.lightBlueAccent),),

      ),

    );
  }
}
