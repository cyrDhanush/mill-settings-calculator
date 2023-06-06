import 'package:flutter/material.dart';
import 'package:millsettingapp/shared/colors.dart';
import 'package:millsettingapp/widgets/input_section.dart';

class CalculationScreen extends StatelessWidget {
  const CalculationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Mill Settings"),
      ),
      body: Column(
        children: [
          InputSection(),
        ],
      ),
    );
  }
}
