import 'package:flutter/material.dart';
import 'package:millsettingapp/shared/colors.dart';
import 'package:millsettingapp/shared/textstyles.dart';
import 'package:millsettingapp/widgets/custom_textfield.dart';
import 'package:millsettingapp/widgets/millinput.dart';

class DefaultValueSection extends StatefulWidget {
  const DefaultValueSection({super.key});

  @override
  State<DefaultValueSection> createState() => _DefaultValueSectionState();
}

class _DefaultValueSectionState extends State<DefaultValueSection> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5, vertical: 10),
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
                'Default Values',
                style: headings,
              ),
              SizedBox(
                height: 10,
              ),
              // top seperate values
              Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)),
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                  decoration: BoxDecoration(
                    color: themecolor_light3,
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      color: themecolor,
                    ),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            CustomTextField(
                              hint: "Fibre Percentage",
                            ),
                            SizedBox(height: 10),
                            CustomTextField(
                              hint: "L",
                            ),
                            SizedBox(height: 10),
                            CustomTextField(
                              hint: "N",
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        child: Column(
                          children: [
                            CustomTextField(
                              hint: "n(Pie)",
                            ),
                            SizedBox(height: 10),
                            CustomTextField(
                              hint: "Trash Ratio",
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Expanded(
                    child: MillInput(),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Expanded(
                    child: MillInput(),
                  ),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Expanded(
                    child: MillInput(),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Expanded(
                    child: MillInput(),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Expanded(
                    child: OutlinedButton(
                      onPressed: () {},
                      style: OutlinedButton.styleFrom(
                        padding: EdgeInsets.symmetric(vertical: 15),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                        side: BorderSide(
                          color: themecolor,
                          width: 1,
                        ),
                      ),
                      child: Text("Modify"),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: OutlinedButton(
                      onPressed: () {},
                      style: OutlinedButton.styleFrom(
                        padding: EdgeInsets.symmetric(vertical: 15),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                        backgroundColor: themecolor,
                        foregroundColor: Colors.white,
                        side: BorderSide(
                          color: themecolor,
                          width: 1,
                        ),
                      ),
                      child: Text("Set to Default"),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
