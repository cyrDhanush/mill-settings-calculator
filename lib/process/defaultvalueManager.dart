import 'package:millsettingapp/process/models/defval_model.dart';
import 'package:millsettingapp/process/models/millmodels.dart';
import 'package:millsettingapp/process/models/output_model.dart';

class DefaultValueManager {
  static late DefValuesModel currentDefaults;

  DefaultValueManager() {
    currentDefaults = setConstDefValues();
  }

  // call this to set constant default values
  DefValuesModel setConstDefValues() {
    // call this method to get default values
    DefValuesModel defValuesModel = DefValuesModel(
      fibre: 0.125,
      n: 3.145,
      L: 1.85,
      trashratio: 1.7,
      N: 4.5,
      mills: getdefmills(),
      groovemills: getgroovemills(),
    );
    return defValuesModel;
  }

  // below are setters - these will return default mill values
  List<DefValMillModel> getdefmills() {
    return [
      DefValMillModel(millno: 1, fibreindex: 480, millratio: 2, lift: 8),
      DefValMillModel(millno: 2, fibreindex: 640, millratio: 2.1, lift: 7),
      DefValMillModel(millno: 3, fibreindex: 752, millratio: 2.15, lift: 6),
      DefValMillModel(millno: 4, fibreindex: 880, millratio: 2.22, lift: 6),
    ];
  }

  List<InputMillModel> getgroovemills() {
    return [
      InputMillModel(millno: 1, top: 46, feed: 76, disch: 58),
      InputMillModel(millno: 2, top: 46, feed: 76, disch: 58),
      InputMillModel(millno: 3, top: 27, feed: 44.5, disch: 30),
      InputMillModel(millno: 4, top: 22, feed: 31, disch: 22),
    ];
  }
}
