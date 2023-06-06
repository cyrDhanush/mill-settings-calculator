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

  factory OutputModel.outputZero() {
    return OutputModel(
      commonoutput: [
        OutputMillModel(feed: 0.0, disch: 0.0, trash: 0.0),
        OutputMillModel(feed: 0.0, disch: 0.0, trash: 0.0),
        OutputMillModel(feed: 0.0, disch: 0.0, trash: 0.0),
        OutputMillModel(feed: 0.0, disch: 0.0, trash: 0.0),
      ],
      trambleoutput: [
        OutputMillModel(feed: 0.0, disch: 0.0, trash: 0.0),
        OutputMillModel(feed: 0.0, disch: 0.0, trash: 0.0),
        OutputMillModel(feed: 0.0, disch: 0.0, trash: 0.0),
        OutputMillModel(feed: 0.0, disch: 0.0, trash: 0.0),
      ],
    );
  }

  // factory OutputModel.roundValues(OutputModel outputModel){
  //   // return OutputModel.outputZero();
  // }
}
