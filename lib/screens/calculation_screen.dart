import 'package:flutter/material.dart';
import 'package:millsettingapp/process/calculator.dart';
import 'package:millsettingapp/process/models/input_model.dart';
import 'package:millsettingapp/process/models/output_model.dart';
import 'package:millsettingapp/shared/colors.dart';
import 'package:millsettingapp/widgets/sections/input_section.dart';
import 'package:millsettingapp/widgets/sections/output_section.dart';

class CalculationScreen extends StatefulWidget {
  const CalculationScreen({Key? key}) : super(key: key);

  @override
  State<CalculationScreen> createState() => _CalculationScreenState();
}

class _CalculationScreenState extends State<CalculationScreen> {
  onSubmit(InputModel inputModel) {
    Calculator calculator = Calculator();
    OutputModel outputModel = calculator.Calculate(inputModel);
    outputModel.printer();
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
            OutputSection(),
          ],
        ),
      ),
    );
  }
}
