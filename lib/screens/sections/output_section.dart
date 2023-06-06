import 'package:flutter/material.dart';
import 'package:millsettingapp/process/models/output_model.dart';
import 'package:millsettingapp/shared/colors.dart';
import 'package:millsettingapp/shared/textstyles.dart';
import 'package:millsettingapp/widgets/milloutput.dart';

class OutputSection extends StatelessWidget {
  OutputModel? outputModel;
  OutputSection({super.key, this.outputModel});

  @override
  Widget build(BuildContext context) {
    if (outputModel == null) {
      outputModel = OutputModel.outputZero();
    }
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
                "Output",
                style: headings,
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Expanded(
                    child: MillOutput(
                      millname: "Mill I",
                      ques: ['Feed', 'Disch', 'Trash'],
                      ans: [
                        outputModel!.commonoutput[0].feed,
                        outputModel!.commonoutput[0].disch,
                        outputModel!.commonoutput[0].trash,
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Expanded(
                    child: MillOutput(
                      millname: "Mill II",
                      ques: ['Feed', 'Disch', 'Trash'],
                      ans: [
                        outputModel!.commonoutput[1].feed,
                        outputModel!.commonoutput[1].disch,
                        outputModel!.commonoutput[1].trash,
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
                    child: MillOutput(
                      millname: "Mill III",
                      ques: ['Feed', 'Disch', 'Trash'],
                      ans: [
                        outputModel!.commonoutput[2].feed,
                        outputModel!.commonoutput[2].disch,
                        outputModel!.commonoutput[2].trash,
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Expanded(
                    child: MillOutput(
                      millname: "Mill IV",
                      ques: ['Feed', 'Disch', 'Trash'],
                      ans: [
                        outputModel!.commonoutput[3].feed,
                        outputModel!.commonoutput[3].disch,
                        outputModel!.commonoutput[3].trash,
                      ],
                    ),
                  ),
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
                  Expanded(
                    child: MillOutput(
                      millname: "Mill I",
                      ques: ['Feed', 'Disch', 'Trash'],
                      ans: [
                        outputModel!.trambleoutput[0].feed,
                        outputModel!.trambleoutput[0].disch,
                        outputModel!.trambleoutput[0].trash,
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Expanded(
                    child: MillOutput(
                      millname: "Mill II",
                      ques: ['Feed', 'Disch', 'Trash'],
                      ans: [
                        outputModel!.trambleoutput[1].feed,
                        outputModel!.trambleoutput[1].disch,
                        outputModel!.trambleoutput[1].trash,
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
                    child: MillOutput(
                      millname: "Mill III",
                      ques: ['Feed', 'Disch', 'Trash'],
                      ans: [
                        outputModel!.trambleoutput[2].feed,
                        outputModel!.trambleoutput[2].disch,
                        outputModel!.trambleoutput[2].trash,
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Expanded(
                    child: MillOutput(
                      millname: "Mill IV",
                      ques: ['Feed', 'Disch', 'Trash'],
                      ans: [
                        outputModel!.trambleoutput[3].feed,
                        outputModel!.trambleoutput[3].disch,
                        outputModel!.trambleoutput[3].trash,
                      ],
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
