import 'package:millsettingapp/process/models/millmodels.dart';

class InputModel {
  final double tch;
  final List<InputMillModel> millmodels;

  InputModel({required this.tch, required this.millmodels});

  printer() {
    print(tch);
    for (InputMillModel mill in millmodels) {
      mill.printer();
    }
  }
}
