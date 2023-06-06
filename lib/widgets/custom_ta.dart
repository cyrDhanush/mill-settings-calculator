import 'package:flutter/material.dart';

class CustomTextAns extends StatelessWidget {
  final String question;
  var answer;
  CustomTextAns({super.key, this.question = "Question", this.answer = 100.00});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          question.toString(),
          style: TextStyle(fontSize: 14),
        ),
        Text(
          answer.toString(),
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
