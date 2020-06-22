import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'file:///C:/Users/SHARON/AndroidStudioProjects/travex/lib/Utilities/toggle.dart';
import 'file:///C:/Users/SHARON/AndroidStudioProjects/travex/lib/Utilities/constants.dart';
import 'file:///C:/Users/SHARON/AndroidStudioProjects/travex/lib/Utilities/toggle.dart';
import 'Utilities/ResusableTextField.dart';

class Flight extends StatefulWidget {
  @override
  _FlightState createState() => _FlightState();
}

class _FlightState extends State<Flight> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown.shade300,
      appBar: AppBar(
        backgroundColor: Colors.brown.shade300,
        title: Center(child:Text('Book A flight',style:kTopText),),
      ),
      body: SingleChildScrollView(
        child: SafeArea(child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: Column(children: <Widget>[

                          Text('ONE WAY',style:TextStyle(fontWeight: FontWeight.bold),),
                          SizedBox(height: 5,),
                          Container(
                            height: 30.0,
                            width: 70.0,
                            child: HomeTog(),
                          ),
                        ],),
                      ),

                      Expanded(
                        child: Column(children: <Widget>[

                          Text('ROUND TRIP',style:TextStyle(fontWeight: FontWeight.bold),),
                          SizedBox(height: 5,),
                          Container(
                            height: 30.0,
                            width: 70.0,
                            child: HomeTog(),
                          ),
                        ],),
                      ),

                      Expanded(
                        child: Column(children: <Widget>[

                          Text('DIRECT FLIGHT',style:TextStyle(fontWeight: FontWeight.bold),),
                          SizedBox(height: 5,),
                          Container(
                            height: 30.0,
                            width: 70.0,
                            child: HomeTog(),
                          ),
                        ],),
                      ),

                    ],
                  ),
                  Container(
                    height: double.infinity,
                    width: 400,
                    color: Colors.white,
                    child: Column(
                      children: <Widget>[
                        SizedBox(height:20.0),
                        SizedBox(height: 70.0,child: Center(child: Text(" We've Got Something For Every Traveller",style: TextStyle(color:Colors.blue,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic,fontSize: 30.0),),),),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Center(
                            child: Column(
                              children: <Widget>[
                                SizedBox(height:50.0,
                                  child: Row(
                                    children: <Widget>[
                                     Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Icon(Icons.flight_takeoff,color: Colors.blue,),
                                    ),
                                      Text('DEPARTURE',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.brown),),
                                  ],
                                ),),
                                Center(
                                  child: TextFormField(
                                    decoration:InputDecoration (
                                    hintText: 'Eg. London ',hintStyle: kHintText,
                                      fillColor: Colors.white,
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(color: Colors.blue),
                                        borderRadius: BorderRadius.circular(10.0),
                                      ),
                                      border: OutlineInputBorder(borderSide: BorderSide.none,
                                      ),

                                    ),

                                  ),
                                ),
                                SizedBox(height:50.0,
                                  child: Row(
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Icon(Icons.flight_land,color: Colors.blue,),
                                      ),
                                      Text('DESTINATION',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.brown),),
                                    ],
                                  ),),
                                Center(
                                  child: TextFormField(
                                    decoration:InputDecoration (
                                      hintText: 'Day, DD MM YYYY ',hintStyle: kHintText,
                                      fillColor: Colors.white,
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(color: Colors.blue),
                                        borderRadius: BorderRadius.circular(10.0),
                                      ),
                                      border: OutlineInputBorder(borderSide: BorderSide.none,),

                                    ),

                                  ),
                                ),
                                SizedBox(height:50.0,
                                  child: Row(
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Icon(Icons.calendar_view_day,color: Colors.blue,),
                                      ),
                                      Text('DEPARTURE DATE',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.brown),),
                                    ],
                                  ),),
                                Center(
                                  child: TextFormField(
                                    decoration:InputDecoration (
                                      hintText: 'Day, DD MM YYYY ',hintStyle: kHintText,
                                      fillColor: Colors.white,
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(color: Colors.blue),
                                        borderRadius: BorderRadius.circular(10.0),
                                      ),
                                      border: OutlineInputBorder(borderSide: BorderSide.none,),

                                    ),

                                  ),
                                ),
                                SizedBox(height:50.0,
                                  child: Row(
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Icon(Icons.calendar_view_day,color: Colors.blue,),
                                      ),
                                      Text('RETURN DATE',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.brown),),
                                    ],
                                  ),),
                                Center(
                                  child: TextFormField(
                                    decoration:InputDecoration (
                                      hintText: 'Day, DD MM YYYY ',hintStyle: kHintText,
                                      fillColor: Colors.white,
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(color: Colors.blue),
                                        borderRadius: BorderRadius.circular(10.0),
                                      ),
                                      border: OutlineInputBorder(borderSide: BorderSide.none,),

                                    ),

                                  ),
                                ),
                                SizedBox(height:50.0,
                                  child: Row(
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Icon(Icons.local_airport,color: Colors.blue,),
                                      ),
                                      Text('AIRLINE',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.brown),),
                                    ],
                                  ),),
                                Center(
                                  child: TextFormField(
                                    decoration:InputDecoration (
                                      hintText: 'Type your search terms ',hintStyle: kHintText,
                                      fillColor: Colors.white,
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(color: Colors.blue),
                                        borderRadius: BorderRadius.circular(10.0),
                                      ),
                                      border: OutlineInputBorder(borderSide: BorderSide.none,),

                                    ),

                                  ),
                                ),
                                SizedBox(height:50.0,
                                  child: Row(
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Icon(Icons.note_add,color: Colors.blue,),
                                      ),
                                      Text('CABIN',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.brown),),
                                    ],
                                  ),),
                                Center(
                                  child: TextFormField(
                                    decoration:InputDecoration (
                                      hintText: 'Economy ',hintStyle: kHintText,
                                      fillColor: Colors.white,
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(color: Colors.blue),
                                        borderRadius: BorderRadius.circular(10.0),
                                      ),
                                      border: OutlineInputBorder(borderSide: BorderSide.none,),

                                    ),

                                  ),
                                ),
                                SizedBox(
                                  height: 30.0,
                                ),


                                FlatButton(onPressed: (){}, child:Text('check'),color: Colors.brown,)

                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),),
      ),
    );
  }
}
