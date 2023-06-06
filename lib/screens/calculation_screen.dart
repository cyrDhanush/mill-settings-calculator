import 'package:flutter/material.dart';
import 'package:millsettingapp/process/calculator.dart';
import 'package:millsettingapp/process/models/input_model.dart';
import 'package:millsettingapp/process/models/output_model.dart';
import 'package:millsettingapp/screens/sections/input_section.dart';
import 'package:millsettingapp/screens/sections/output_section.dart';
import 'package:millsettingapp/shared/colors.dart';

class CalculationScreen extends StatefulWidget {
  const CalculationScreen({Key? key}) : super(key: key);

  @override
  State<CalculationScreen> createState() => _CalculationScreenState();
}

class _CalculationScreenState extends State<CalculationScreen> {
  OutputModel? outputModel;

  onSubmit(InputModel inputModel) {
    Calculator calculator = Calculator();
    OutputModel outputModel = calculator.Calculate(inputModel);
    // outputModel.printer();
    this.outputModel = outputModel;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Mill Settings"),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
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
          ],
        ),
      ),
    );
  }
}
