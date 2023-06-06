import 'package:flutter/material.dart';
import 'package:millsettingapp/shared/colors.dart';
import 'package:millsettingapp/shared/textstyles.dart';
import 'package:millsettingapp/widgets/textfield.dart';

class MillInput extends StatefulWidget {
  const MillInput({super.key});

  @override
  State<MillInput> createState() => _MillInputState();
}

class _MillInputState extends State<MillInput> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        decoration: BoxDecoration(
          color: themecolor_light3,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: themecolor,
          ),
        ),
        child: Column(
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
            CustomTextField(
              hint: "Top",
            ),
            SizedBox(height: 7),
            CustomTextField(
              hint: "Feed",
            ),
            SizedBox(height: 7),
            CustomTextField(
              hint: "Disch",
            ),
          ],
        ),
      ),
    );
  }
}
