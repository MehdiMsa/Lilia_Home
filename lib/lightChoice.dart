import 'package:flutter/material.dart';

class Choice extends StatelessWidget
{
  final Function selectHandler;
  final String answerText;

  Choice(this.selectHandler, this.answerText);
  
  @override
  Widget build(BuildContext context) 
  {
    return Container
    (
      width: double.infinity,
      child: RaisedButton
      (
        color: Colors.pinkAccent,
        child: Text(answerText),
        textColor: Colors.white,
        onPressed: selectHandler,
      )
    );
  }
}