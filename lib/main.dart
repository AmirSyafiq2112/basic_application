import 'package:flutter/material.dart';
import 'quiz.dart';
import 'result.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        'Black',
        'Red',
        'Blue',
        'White',
      ]
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        'Rabbit',
        'Snake',
        'Elephant',
        'Lion',
      ]
    },
    {
      'questionText': 'Who\'s your favorite instructor?',
      'answers': [
        'Net Ninja',
        'Max',
        'Hex',
        'Codetrain',
      ]
    },
  ]; //can be accessed in build

  var _questionIndex = 0;

  void _answerQuestion() {
    // if (_questionIndex < (_questions.length - 1))
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    // else
    //   setState(() {
    //     _questionIndex = 0;
    //   });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber,
          centerTitle: true,
          title: Text('Basic Application'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                questions: _questions,
                questionIndex: _questionIndex,
                answerQuestion: _answerQuestion,
              )
            : Result(),
      ),
    );
  }
}
