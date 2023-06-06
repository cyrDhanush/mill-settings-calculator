import 'package:millsettingapp/process/models/millmodels.dart';

class OutputModel {
  final List<OutputMillModel> commonoutput;
  final List<OutputMillModel> trambleoutput;

  OutputModel({required this.commonoutput, required this.trambleoutput});

  printer() {
    for (OutputMillModel mill in commonoutput) {
      mill.printer();
    }
    for (OutputMillModel mill in trambleoutput) {
      mill.printer();
    }
  }
}
