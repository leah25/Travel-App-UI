import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'constants.dart';


class CityCard extends StatelessWidget {
   final String imagePath;
   final String cityDes;
   final String townDes;
   CityCard({this.imagePath,this.cityDes
   ,this.townDes});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          width: 300.0,
          height: 270.0,
          child: Card(
            child: Wrap(
              children: <Widget>[
                Image.asset(imagePath),
                ListTile(
                  title: Text(townDes),
                  subtitle: Text(cityDes),
                ),
              ],
            ),
          ),
        ),

          ],

        );

  }
}
