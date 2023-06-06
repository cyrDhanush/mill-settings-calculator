import 'package:flutter/material.dart';
import 'package:millsettingapp/shared/colors.dart';
import 'package:millsettingapp/shared/textfielddecoration.dart';
import 'package:millsettingapp/shared/textstyles.dart';

getTitle(BuildContext context) async {
  String? title;
  TextEditingController controller = TextEditingController();
  title = await showModalBottomSheet(
    context: context,
    backgroundColor: themecolor_light1,
    isScrollControlled: true,
    builder: (context) {
      return Padding(
        padding:
            EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
        child: Container(
          height: 300,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 5,
                    width: 40,
                    decoration: BoxDecoration(
                      color: themecolor,
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Enter the Title',
                        style: headings,
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      TextField(
                        controller: controller,
                        decoration: inputDecoration,
                      ),
                      Spacer(),
                      Row(
                        children: [
                          Expanded(
                            child: FilledButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              style: FilledButton.styleFrom(
                                padding: EdgeInsets.symmetric(vertical: 15),
                                backgroundColor: Colors.white.withAlpha(100),
                                foregroundColor: Colors.black.withAlpha(200),
                              ),
                              child: Text(
                                'Cancel',
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Expanded(
                            child: FilledButton(
                              onPressed: () {
                                if (controller.text != "") {
                                  title = controller.text;
                                  Navigator.pop(context, title);
                                }
                              },
                              style: FilledButton.styleFrom(
                                padding: EdgeInsets.symmetric(vertical: 15),
                                backgroundColor: themecolor,
                                foregroundColor: Colors.white,
                              ),
                              child: Text(
                                'Ok',
                                style: TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    },
  );
  return title;
}
