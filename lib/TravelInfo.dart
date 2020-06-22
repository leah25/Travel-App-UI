

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Utilities/cityCard.dart';
import 'Utilities/ReusableContainer.dart';
import 'Utilities/constants.dart';
import 'Utilities/Options.dart';
import 'Flights/home.dart';
import 'Utilities/ResusableTextField.dart';

Color inactiveColor = Colors.brown;
Color activeColor = Colors.white;

class Travel extends StatefulWidget {
  @override
  _TravelState createState() => _TravelState();
}

class _TravelState extends State<Travel> {
  Color notPressed = inactiveColor;

  void updateColor(int selection){
    if( selection == 1){
      if(notPressed == inactiveColor){
        notPressed == activeColor;
      }else{
        notPressed == inactiveColor;
      }
    }
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  Colors.brown.shade300,
      appBar: AppBar(
        title: Center(child: Text('Netherlands', style: TextStyle(color: Colors.white,fontSize:20.0),)),

        backgroundColor:  Colors.brown.shade300,
        actions: <Widget>[
          PopupMenuButton(itemBuilder:(BuildContext context){

            return Options.choices.map((String choice) {
              return PopupMenuItem<String>(child: Text(choice), value: choice,);
            }).toList();
          },onSelected: choiceAction ,)
        ],
      ),

      body: SingleChildScrollView(

        child: SafeArea(

          child: Container(

            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Expanded(
                      child: GestureDetector(
                        onTap: (){
                          setState(() {

                          });
                        },
                        child: ReuseContainer(
                          colour: notPressed,
                          childIcon: IconButton(
                            onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=> Flight()));
                            },
                            icon: Icon(Icons.flight_takeoff,size: 40,color: Colors.lightBlueAccent),

                          ),
                          desText: Text('Flights',style: kTopText,),
                        ),
                      )

                    ),
                    Expanded(
                      child:ReuseContainer(
                        childIcon: IconButton(
                          onPressed: (){

                          },
                          icon: Icon(Icons.hotel,size: 40,color: Colors.purple.shade200),
                        ),
                        desText: Text('Hotels',style: kTopText,),

                      ),
                    ),
                    Expanded(

                        child:ReuseContainer(
                          childIcon: IconButton(
                            onPressed: (){

                            },
                            icon: Icon(Icons.train,size: 40,color: Colors.redAccent),
                          ),
                          desText: Text('Trains',style: kTopText,),
                        )

                    ),
                    Expanded(
                        child:ReuseContainer(
                          childIcon: IconButton(
                            onPressed: (){

                            },
                            icon: Icon(Icons.directions_car,size: 40,color: Colors.greenAccent),
                          ),
                          desText: Text('cars',style: kTopText,),
                        )

                    ),

                  ],
                ),
                SizedBox(height: 5.0,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical:0.0, horizontal: 16.0),
                      child: Text('Top Places',style: kTextBold,),
                    ),
                    FlatButton(

                      onPressed: (){

                      },
                        child: Text('See All', style: TextStyle(fontSize: 15.0),)),
                  ],
                ),
                SizedBox(height: 5.0,),

            Container(
              height: 300,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  CityCard(imagePath: 'image/a7.jpg',townDes: ' Amsterdam,',cityDes: ' Netherlands',),
                  CityCard(imagePath: 'image/a8.jpg',townDes: ' Drenthe,',cityDes: ' Netherlands',),
                  CityCard(imagePath: 'image/a9.jpg',townDes: ' Flevoland,',cityDes: ' Netherlands',),
                  CityCard(imagePath: 'image/a10.jpg',townDes: ' Friesland,',cityDes: ' Netherlands',),
                  CityCard(imagePath: 'image/a11.jpg',townDes: 'Gelgerland,',cityDes: ' Netherlands',),
                  CityCard(imagePath: 'image/b1.jpg',townDes: 'Groningen,',cityDes: ' Netherlands',),
                  CityCard(imagePath: 'image/a5.jpg',townDes: 'North Holland,',cityDes: ' Netherlands',),
                  CityCard(imagePath: 'image/a6.jpg',townDes: 'South Holland,',cityDes: ' Netherlands',),
                ],

              ),
            ),
                SizedBox(height: 20,),
                Container(
                  width: 350,
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),

                  ),
                  padding: EdgeInsets.all(2.0),
                  child: TextField(
                    style: TextStyle(color:Colors.black),
                    decoration: InputDecoration(
                      filled : true,
                      fillColor: Colors.brown,
                      prefixIcon:Icon(Icons.search, color: Colors.white,size: 25.0,) ,
                      hintText: '\t \t \t  search places, cities, areas...',
                      hintStyle: TextStyle(
                        color:Colors.white,
                      ),
                    ),
                    onChanged: (value){
                      print(value);
                    },
                  ),



                ),
              ],
                ),

            ),
          ),
      ),


    );
  }

  void choiceAction (String choices){
   if(choices == Options.settings){
     print('Setings');

   }else if(choices == Options.signOut){
     print('signout');

   }else if(choices == Options.profile){
     print('profile');

   }
  }
}
