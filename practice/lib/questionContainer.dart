import 'package:flutter/material.dart';

import './question.dart';

class QuestionContainer extends StatelessWidget {
  final String question;

  QuestionContainer(this.question);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Question(this.question),
      width: double.infinity,
      margin: EdgeInsets.all(10),
    );
  }
}
