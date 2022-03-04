import 'package:flutter/material.dart';

class Questions extends StatelessWidget {
  final String question;
  Questions({required this.question});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(25.5),
      child: Text(
        question,
        style: TextStyle(fontSize: 27.5, fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      ),
    );
  }
}

class name extends StatelessWidget {
  const name({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
