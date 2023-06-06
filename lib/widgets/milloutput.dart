import 'package:flutter/material.dart';
import 'package:millsettingapp/shared/colors.dart';
import 'package:millsettingapp/shared/textstyles.dart';
import 'package:millsettingapp/widgets/custom_ta.dart';

class MillOutput extends StatelessWidget {
  final String millname;
  final List<String> ques;
  final List<double> ans;
  const MillOutput(
      {super.key,
      this.millname = "Mill I",
      required this.ques,
      required this.ans});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
        decoration: BoxDecoration(
          color: themecolor_light3,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: themecolor,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  millname,
                  style: heading2,
                ),
              ],
            ),
            SizedBox(height: 10),
            CustomTextAns(
              question: ques[0],
              answer: ans[0],
            ),
            SizedBox(height: 7),
            CustomTextAns(
              question: ques[1],
              answer: ans[1],
            ),
            SizedBox(height: 7),
            CustomTextAns(
              question: ques[2],
              answer: ans[2],
            ),
          ],
        ),
      ),
    );
  }
}
