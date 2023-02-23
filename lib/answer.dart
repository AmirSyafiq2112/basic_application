import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answerText;

  Answer({this.selectHandler, this.answerText});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.amber[300]),
          foregroundColor: MaterialStateProperty.all(Colors.black),
        ),
        onPressed: selectHandler,
        child: Text(answerText),
      ),
      //  ElevatedButton(
      //       onPressed:
      //           _answerQuestion, //pass reference of function instead of function
      //       // child: Text(question.first),
      //       child: Text('Answer 1'),
      //     ),
    );
  }
}
