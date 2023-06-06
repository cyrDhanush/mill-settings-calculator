import 'package:flutter/material.dart';
import 'package:millsettingapp/process/models/input_model.dart';
import 'package:millsettingapp/process/models/millmodels.dart';
import 'package:millsettingapp/shared/colors.dart';
import 'package:millsettingapp/shared/textfielddecoration.dart';
import 'package:millsettingapp/shared/textstyles.dart';
import 'package:millsettingapp/widgets/millinput.dart';
import 'package:millsettingapp/widgets/custom_textfield.dart';

class InputSection extends StatefulWidget {
  final Function result;
  const InputSection({super.key, required this.result});

  @override
  State<InputSection> createState() => _InputSectionState();
}

class _InputSectionState extends State<InputSection> {
  List<TextEditingController> controllers = [];
  // c[0] is for tch, and remaining goes to mills
  createControllers() {
    for (int i = 0; i < 13; i++) {
      TextEditingController ctrl = TextEditingController();
      controllers.add(ctrl);
    }
  }

  validator() {
    bool emptyCheck = true;
    bool formatCheck = true;
    for (int i = 0; i < controllers.length; i++) {
      if (controllers[i].text.length == 0) {
        emptyCheck = false;
      }
      try {
        double.parse(controllers[i].text.toString());
      } catch (e) {
        formatCheck = false;
      }
    }
    if (emptyCheck == true && formatCheck == true) {
      print("check passed");
      return true;
    }
    return false;
  }

  controller_to_double(List<TextEditingController> controllers) {
    List<double> ans = [];
    for (TextEditingController i in controllers) {
      ans.add(double.parse(i.text.toString()));
    }
    return ans;
  }

  onSumbit() {
    if (validator() == true) {
      // controllers to double(values)
      List<double> values = controller_to_double(controllers);

      //values to models
      double tch = values[0];
      InputMillModel mill1 =
          InputMillModel(top: values[1], feed: values[2], disch: values[3]);
      InputMillModel mill2 =
          InputMillModel(top: values[4], feed: values[5], disch: values[6]);
      InputMillModel mill3 =
          InputMillModel(top: values[7], feed: values[8], disch: values[9]);
      InputMillModel mill4 =
          InputMillModel(top: values[10], feed: values[11], disch: values[12]);

      InputModel inputModel =
          InputModel(tch: tch, millmodels: [mill1, mill2, mill3, mill4]);

      // sending model values back to parent
      widget.result(inputModel);
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    createControllers();
    super.initState();
  }

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
                  controller: controllers[0],
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
                    child: MillInput(
                      millname: "Mill I",
                      names: ["Top", "Feed", "Disch"],
                      controllers: [
                        controllers[1],
                        controllers[2],
                        controllers[3],
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Expanded(
                    child: MillInput(
                      millname: "Mill II",
                      names: ["Top", "Feed", "Disch"],
                      controllers: [
                        controllers[4],
                        controllers[5],
                        controllers[6],
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Expanded(
                    child: MillInput(
                      millname: "Mill III",
                      names: ["Top", "Feed", "Disch"],
                      controllers: [
                        controllers[7],
                        controllers[8],
                        controllers[9],
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Expanded(
                    child: MillInput(
                      millname: "Mill IV",
                      names: ["Top", "Feed", "Disch"],
                      controllers: [
                        controllers[10],
                        controllers[11],
                        controllers[12],
                      ],
                    ),
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
                      onPressed: () {
                        widget.result('string');
                      },
                      style: OutlinedButton.styleFrom(
                        backgroundColor: Colors.white.withAlpha(100),
                        foregroundColor: themecolor,
                        padding: EdgeInsets.symmetric(vertical: 15),
                        side: BorderSide(
                          color: themecolor,
                          width: 1,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(14),
                        ),
                      ),
                      child: Text("Clear"),
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        onSumbit();
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: themecolor,
                        foregroundColor: Colors.white,
                        padding: EdgeInsets.symmetric(vertical: 15),
                        elevation: 7,
                        side: BorderSide(
                          color: themecolor,
                          width: 1,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(14),
                        ),
                      ),
                      child: Text("Calculate"),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
