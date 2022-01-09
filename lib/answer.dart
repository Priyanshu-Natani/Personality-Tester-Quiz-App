import 'package:flutter/material.dart';

class Answer extends StatelessWidget {

  final VoidCallback hendaler;
  final String answer;
  Answer(this.hendaler, this.answer);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin:EdgeInsets.all(10) ,
      width: double.infinity,
      child: RaisedButton(
        
        child: Container(
          padding: EdgeInsets.all(16),
          child: Text(answer,style: TextStyle(fontSize: 22,color:Colors.white),)),
        onPressed: hendaler,
        color: Colors.blue,
      ),
    );
  }
}
