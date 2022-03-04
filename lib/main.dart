import 'package:flutter/material.dart';
import './qutstions.dart';
import './answer.dart';
import './button.dart';
import './jokes.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

// ignore: must_be_immutable, use_key_in_widget_constructors
class MyAppState extends State<MyApp> {
  
  var jokeIndex = 0;

  changeJokeIndex(String direction) {
    if (direction == 'next') {
      if (jokeIndex != joks.length - 1) {
        setState(() {
          jokeIndex++;
        });
      } else {
        setState(() {
          jokeIndex = jokeIndex = 0;
        });
      }
    } else if (direction == 'prev') {
      if (jokeIndex != 0) {
        setState(() {
          jokeIndex--;
        });
      } else {
        setState(() {
          jokeIndex = joks.length - 1;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Questions(question: joks[jokeIndex]['qut'] as String),
              Answer(answer: joks[jokeIndex]['ans'] as String),
              SizedBox(
                height: 80.0,
              ),
              Buttons(changeJokeIndex: changeJokeIndex)
            ],
          ),
        ),
      ),
    );
  }
}
