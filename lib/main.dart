//A9ra documentation besh tefhem koll star fel code :)
import 'package:flutter/material.dart';

import './light.dart';
import './lightChoice.dart';

void main () => runApp(MyMainApp());
/*
arrow function is more fun for one statement functions ;)!
void main () 
{
  runApp(MyMainApp());
}
*/

class MyMainApp extends StatefulWidget
{
  @override
  State<StatefulWidget> createState()
  {
    return new _MyAppState();  
  }
}

class _MyAppState extends State<MyMainApp> 
{
   var _lightIndex = 0;

    void _selectedLight ()
    {
      setState(() {
      _lightIndex = _lightIndex + 1;
    });
    
    print(_lightIndex);

    print("Turned on");
  }

  @override
  Widget build(BuildContext context)
  {
    var lightList = 
    [
      //We will use Maps
      {
        "Question" : "Which room light you want to turn on?", 
        "Answer" : 
        //We have multiple choices therefore we used a list of objects                          
        [
          "Garden Light",
          "Garage Light",
          "Hallway Light",
          "Porche Light",
          "Kitchen Light",
          "Living Room Light",
        ]
      },
      {
        "Question" : "TURN ON?",
        "Answer" : "ON",
      },
      {
        "Question" : "TURN OFF?",
        "Answer" : "OFF",
      },
    ];
    return MaterialApp(home: Scaffold
    (
      appBar: AppBar
        (
          title: Text("DaHome"),
          backgroundColor: Colors.pinkAccent,
        ),
      body: Column
      (
        children:
        [
          Light
          (
            lightList[_lightIndex]["Question"],
          ),

          ...(lightList[_lightIndex]["Answer"] as List<String> ).map
          (
            (answer) 
            {
              return Choice( _selectedLight, answer);
            }
          ).toList()

        ],
      ),
    ),
    );
  }
}

