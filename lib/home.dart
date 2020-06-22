import 'package:flutter/material.dart';
import 'TravelInfo.dart';
import 'Utilities/constants.dart';
import 'package:geolocator/geolocator.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  void initState(){
    super.initState();
    getLocation();
  }
void getLocation() async{

  Position position = await Geolocator().getCurrentPosition(desiredAccuracy: LocationAccuracy.low);
  print(position);
}
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.brown.shade300,
      appBar: AppBar(
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: IconButton(
              onPressed: (){
                  getLocation();
              },
              icon: Icon(Icons.location_city, size: 19.0,color:Colors.white,
              ),
            ),
          ),
        ],
        backgroundColor: Colors.brown.shade300,
        title: Center(child: Text('TraveX',style: kTextBold,),),

      ),
      body:SafeArea(

          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Column(
                children: <Widget>[

                  Align(
                      alignment:Alignment.topLeft,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical:0.0,horizontal:16.0),
                      child: Text('Discover', style: TextStyle(fontSize: 38.0),),
                    ),),
                  Align(
                      alignment:Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical:0.0,horizontal:16.0),
                        child: Text('The world!',style:kTextBold),
                      ),),

         Container(

           height: 300,
          width: 300,
          decoration: BoxDecoration(
            color: Colors.purple.shade200,
            image: DecorationImage(image: AssetImage('image/c4.jpg'),fit:BoxFit.fill),
            borderRadius: BorderRadius.circular(150),
          ),
         ),
                ],
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Text('\t \t  Discover unknown and local',style:TextStyle(fontWeight:FontWeight.bold,fontSize:15.0,color: Colors.white),),
                      Text('places in The world!',style:TextStyle(fontWeight:FontWeight.bold,fontSize:15.0,color: Colors.white),),
                    ],
                  ),
                  IconButton(
                    color:Colors.black,
                    icon: Icon(Icons.arrow_forward,color: Colors.white,),
                    iconSize: 20.0,
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Travel()));
                    },
                  )
                ],
              ),
            ],
          ),

        ),

    );
  }
}
