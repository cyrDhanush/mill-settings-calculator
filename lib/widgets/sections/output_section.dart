import 'package:flutter/material.dart';
import 'package:millsettingapp/shared/colors.dart';
import 'package:millsettingapp/shared/textstyles.dart';
import 'package:millsettingapp/widgets/milloutput.dart';

class OutputSection extends StatefulWidget {
  const OutputSection({super.key});

  @override
  State<OutputSection> createState() => _OutputSectionState();
}

class _OutputSectionState extends State<OutputSection> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: Card(
        elevation: 7,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
          decoration: BoxDecoration(
            color: themecolor_light2,
            borderRadius: BorderRadius.circular(16),
            border: Border.all(
              color: themecolor,
            ),
          ),
          child: Column(
            children: [
              Text(
                "Output",
                style: headings,
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Expanded(child: MillOutput()),
                  SizedBox(
                    width: 5,
                  ),
                  Expanded(child: MillOutput()),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Expanded(child: MillOutput()),
                  SizedBox(
                    width: 5,
                  ),
                  Expanded(child: MillOutput()),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Tramble Output",
                style: headings,
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Expanded(child: MillOutput()),
                  SizedBox(
                    width: 5,
                  ),
                  Expanded(child: MillOutput()),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Expanded(child: MillOutput()),
                  SizedBox(
                    width: 5,
                  ),
                  Expanded(child: MillOutput()),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
