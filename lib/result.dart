import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetQuiz;

  Result(this.resultScore, this.resetQuiz);

  String get resultPhrase {
    print(resultScore);

    String resultText;

    if (resultScore < 5)
      resultText = "Wow, you are so boring...";
    else if (resultScore < 10)
      resultText = "You are...strange?!";
    else if (resultScore < 15)
      resultText = "You are pretty likeable";
    else
      resultText = "You are awesome human being";

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          TextButton(
            // style: ButtonStyle(
            //   backgroundColor: MaterialStateProperty.all(Colors.grey[300]),
            //   foregroundColor: MaterialStateProperty.all(Colors.black),
            // ),
            style: TextButton.styleFrom(
                backgroundColor: Colors.grey[300], foregroundColor: Colors.red),
            onPressed: resetQuiz,
            child: Text('Restart Quiz!'),
          ),
          OutlinedButton(
              style: OutlinedButton.styleFrom(
                  foregroundColor: Colors.amber,
                  backgroundColor: Colors.black,
                  side: BorderSide(color: Colors.amber)),
              onPressed: () {},
              child: Text('Test'))
        ],
      ),
    );
  }
}
