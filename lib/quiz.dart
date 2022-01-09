import 'package:flutter/material.dart';


import './question.dart';
import './answer.dart';
class Quiz extends StatelessWidget {
  
  final  questions ;
  final  questionIndex;
  final Function whenAnsClicked;

  Quiz(this.questions,this.questionIndex,this.whenAnsClicked);

  @override
  Widget build(BuildContext context) {
    return Container(
      child:Column(
                children: [
                  Question((questions[questionIndex]['question']).toString()),
                  ...(questions[questionIndex]['answers'] as List<Map<String,Object>>)
                      .map((answers) {
                    return Answer(() => whenAnsClicked(answers['score']), answers['text'].toString());
                  }).toList()
                ],
              )
    );
  }
}