import 'package:flutter/material.dart';

import './questionContainer.dart';
import './optionContainer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  int questionIndex;
  int _score = 0;
  var data = [
    {
      "question": "What's your favorite color among the following?",
      "options": ["Red", "Blue", "Yellow", "Green"]
    },
    {
      "question": "What's your favorite animal among the following?",
      "options": ["Lion", "Tiger", "Gorilla", "Crocodile"]
    },
    {
      "question": "What's your favorite food among the following?",
      "options": ["Burger", "Pizza", "Salad", "Chinese"]
    }
  ];

  MyAppState() {
    questionIndex = 0;
  }

  void onPressedHandler(int score) {
    setState(() {
      questionIndex += 1;
    });
    _score += score;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Quiz App"),
        ),
        body: questionIndex < this.data.length
            ? Column(
                children: <Widget>[
                  QuestionContainer(this.data[questionIndex]["question"]),
                  OptionContainer(
                      options: this.data[questionIndex]["options"],
                      onPressedHandler: () => this.onPressedHandler(10))
                ],
              )
            : Center(
                child: Text(
                  "You did it! Your score is " + _score.toString(),
                  style: TextStyle(fontSize: 25),
                ),
              ),
      ),
    );
  }
}
