import 'package:flutter/material.dart';
import 'package:millsettingapp/shared/colors.dart';
import 'package:millsettingapp/shared/textstyles.dart';
import 'package:millsettingapp/widgets/custom_textfield.dart';

class MillInput extends StatefulWidget {
  final String millname;
  final List<String> names;
  final List<TextEditingController?> controllers;
  const MillInput(
      {super.key,
      this.millname = "Mill I",
      this.names = const ['name1', 'name2', 'name3'],
      this.controllers = const [null, null, null]});

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
                  widget.millname,
                  style: heading2,
                ),
              ],
            ),
            SizedBox(height: 10),
            CustomTextField(
              hint: widget.names[0],
              controller: widget.controllers[0],
            ),
            SizedBox(height: 7),
            CustomTextField(
              hint: widget.names[1],
              controller: widget.controllers[1],
            ),
            SizedBox(height: 7),
            CustomTextField(
              hint: widget.names[2],
              controller: widget.controllers[2],
            ),
          ],
        ),
      ),
    );
  }
}
