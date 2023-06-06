import 'dart:io';
import 'dart:typed_data';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:image_gallery_saver/image_gallery_saver.dart';
import 'package:millsettingapp/process/calculator.dart';
import 'package:millsettingapp/process/models/input_model.dart';
import 'package:millsettingapp/process/models/output_model.dart';
import 'package:millsettingapp/screens/sections/defaultvalues_section.dart';
import 'package:millsettingapp/screens/sections/input_section.dart';
import 'package:millsettingapp/screens/sections/output_section.dart';
import 'package:millsettingapp/shared/colors.dart';
import 'package:millsettingapp/utils/gettitle.dart';
import 'package:path_provider/path_provider.dart';
import 'package:screenshot/screenshot.dart';

class CalculationScreen extends StatefulWidget {
  const CalculationScreen({Key? key}) : super(key: key);

  @override
  State<CalculationScreen> createState() => _CalculationScreenState();
}

class _CalculationScreenState extends State<CalculationScreen> {
  OutputModel? outputModel;
  ScreenshotController screenshotController = ScreenshotController();
  String title = '';

  takeScreenShot() async {
    Directory directory = (await getApplicationDocumentsDirectory());
    Uint8List? screenshot = await screenshotController.capture();
    // fileName: (title == '')
    //     ? (DateTime.now().millisecondsSinceEpoch.toString())
    //     : (title),
    print(screenshot);
    if (screenshot != null) {
      ImageGallerySaver.saveImage(screenshot,
          name: (title == '')
              ? (DateTime.now().millisecondsSinceEpoch.toString())
              : (title));
    }
  }

  onSubmit(InputModel inputModel) {
    Calculator calculator = Calculator();
    OutputModel outputModel = calculator.Calculate(inputModel);
    this.outputModel = outputModel;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          onPressed: () async {
            String? t = await getTitle(context);
            if (t != null) {
              title = t;
              setState(() {});
            }
          },
          icon: Icon(Icons.title_rounded),
        ),
        title: Text("Mill Settings"),
        actions: [
          IconButton(
            onPressed: () {
              takeScreenShot();
            },
            icon: Icon(Icons.screenshot_rounded),
          ),
        ],
      ),
      body: Column(
        children: [
          Visibility(
            visible: (title != "") ? (true) : (false),
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 5),
              decoration: BoxDecoration(
                color: Colors.black.withAlpha(160),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Screenshot(
                controller: screenshotController,
                child: Column(
                  children: [
                    InputSection(
                      result: (InputModel inputmodel) {
                        onSubmit(inputmodel);
                      },
                    ),
                    OutputSection(
                      outputModel: outputModel,
                    ),
                    DefaultValueSection(),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 5),
                      decoration: BoxDecoration(
                        color: Colors.black.withAlpha(160),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Developed by',
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "Dhanush D",
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
