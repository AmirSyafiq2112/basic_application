import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var questionIndex = 0;

  var question = ['test', 'test2'];
  //can be accessed in build
  void answerQuestion() {
    setState(() {
      if (questionIndex < 1) questionIndex = questionIndex + 1;
    });
    print(questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favorite color?',
      'What\'s your favorite animal?',
    ]; //will be execute everytime it rebuild

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber,
          centerTitle: true,
          title: Text('Basic Application'),
        ),
        body: Column(children: <Widget>[
          Text(questions[questionIndex]),
          ElevatedButton(
            onPressed:
                answerQuestion, //pass reference of function instead of function
            // child: Text(question.first),
            child: Text('Answer 1'),
          ),
          ElevatedButton(
            onPressed: () {
              answerQuestion(); //pass function on pressed because it is in anonymous function
            },
            // child: Text(questions.elementAt(1)),
            child: Text('Answer 2'),
          ),
          ElevatedButton(
            onPressed: () {
              print('Answer 3');
            },
            // child: Text(questions[0]),
            child: Text('Answer 3'),
          ),
        ]),
      ),
    );
  }
}
