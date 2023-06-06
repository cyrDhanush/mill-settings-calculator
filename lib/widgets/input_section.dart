import 'package:flutter/material.dart';
import 'package:millsettingapp/shared/colors.dart';
import 'package:millsettingapp/shared/textfielddecoration.dart';
import 'package:millsettingapp/shared/textstyles.dart';
import 'package:millsettingapp/widgets/millinput.dart';
import 'package:millsettingapp/widgets/textfield.dart';

class InputSection extends StatelessWidget {
  const InputSection({super.key});

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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Inputs",
                    style: headings,
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: 200,
                child: CustomTextField(
                  hint: "TCH",
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Roller OD",
                    style: headings,
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Expanded(
                    child: MillInput(),
                  ),
                  SizedBox(
                    width: 15,
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
                    child: MillInput(),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    child: MillInput(),
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
