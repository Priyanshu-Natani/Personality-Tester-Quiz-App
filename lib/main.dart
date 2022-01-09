import 'package:flutter/material.dart';
import 'package:flutter_basic_app/result.dart';

import './result.dart';
import './quiz.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;
  var totalScore = 0;

  void reset(){
    setState(() {
      questionIndex = 0;
   totalScore = 0;
    });
    
  }

  void whenAnsClicked(int score) {
    setState(() {
      totalScore += score;
      questionIndex = questionIndex + 1;
    });

    print(questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      {
      'question': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Green', 'score': 3},
        {'text': 'White', 'score': 1},
      ],
    },
    {
      'question': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Rabbit', 'score': 3},
        {'text': 'Snake', 'score': 11},
        {'text': 'Elephant', 'score': 5},
        {'text': 'Lion', 'score': 9},
      ],
    },
    {
      'question': 'Which Type of movie do you like?',
      'answers': [
        {'text': 'Crime', 'score': 5},
        {'text': 'Drama', 'score': 2},
        {'text': 'Comedy', 'score': 1},
        {'text': 'Adventure ', 'score': 3},
      ],
    },
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(backgroundColor: Colors.white,
        foregroundColor: Colors.black,
          title: Text('Quiz App', style: TextStyle(color: Colors.black),),
        ),
        body: questionIndex < questions.length ? 
        Quiz(questions, questionIndex, whenAnsClicked)
            : Result(totalScore,reset),
      ),
    );
  }
}
