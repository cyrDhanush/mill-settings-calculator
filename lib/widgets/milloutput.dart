import 'package:flutter/material.dart';
import 'package:millsettingapp/shared/colors.dart';
import 'package:millsettingapp/shared/textstyles.dart';
import 'package:millsettingapp/widgets/custom_ta.dart';

class MillOutput extends StatelessWidget {
  const MillOutput({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
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
                  "Mill I",
                  style: heading2,
                ),
              ],
            ),
            SizedBox(height: 10),
            CustomTextAns(),
            SizedBox(height: 7),
            CustomTextAns(),
            SizedBox(height: 7),
            CustomTextAns(),
          ],
        ),
      ),
    );
  }
}
