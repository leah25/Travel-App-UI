import 'package:flutter/material.dart';
import 'package:flutter/animation.dart';

class HomeTog extends StatefulWidget {
  @override
  _HomeTogState createState() => _HomeTogState();
}

class _HomeTogState extends State<HomeTog> {
  bool toggleValue = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          // toggle button
          child: AnimatedContainer(
            duration: Duration(milliseconds: 1000),
            height: 30.0,
            width: 70.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              color: toggleValue ? Colors.lightBlueAccent[100]: Colors.brown.shade200,
            ),
            // the track the toggle rolls through
            child: Stack(
              children: <Widget>[
                AnimatedPositioned(
                  duration: Duration(milliseconds: 1000),
                  curve: Curves.easeIn,
                  top: 3.0,
                  left: toggleValue?30.0: 0.0,
                  right:toggleValue? 0.0: 30.0,
                  child: InkWell(
                    onTap: toggleButton,
                    child: AnimatedSwitcher(
                      duration: Duration(milliseconds: 1000),
                      transitionBuilder: (Widget child,Animation<double> animation){
                        return ScaleTransition(child: child,scale: animation,);
                      },
                      child: toggleValue? Icon(Icons.check_circle,color: Colors.blue,size: 25.0,key: UniqueKey(),):
                      Icon(Icons.close,color: Colors.brown,size: 25.0,key: UniqueKey(),),
                    ),
                  ),
                ),
              ],
            ),
          ),

        ),
      ),
    );
  }
  toggleButton(){
    setState(() {
      toggleValue = !toggleValue;
    });
  }
}
