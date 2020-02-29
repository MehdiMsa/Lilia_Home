import 'package:flutter/material.dart';
class Light extends StatelessWidget 
{
  final String questionText;
  Light (this.questionText);
  @override
  Widget build(BuildContext context) 
  {
    return Container
    (
      child: Text
      (
        questionText,
        style: TextStyle(fontSize: 25),
        textAlign: TextAlign.center,
      ),
      width: double.infinity,
      margin: EdgeInsets.all(12.5),
    );
  }
}