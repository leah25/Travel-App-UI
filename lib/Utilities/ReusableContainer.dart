import 'package:flutter/material.dart';

class ReuseContainer extends StatelessWidget {

  final Widget childIcon;
  final Widget desText;
  final Color colour;
  ReuseContainer({this.childIcon, this.desText, this.colour});
  @override
  Widget build(BuildContext context) {
    return Container(

      height: 70.0,
      width: 60.0,
        decoration:BoxDecoration(
         borderRadius: BorderRadius.circular(20),
          color: colour,
        ),
        margin: EdgeInsets.all(8.0),

        child:Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            childIcon,
            desText,
          ],
        ),
    );
  }
}
