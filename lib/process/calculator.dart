import 'package:millsettingapp/process/defaultvalueManager.dart';
import 'package:millsettingapp/process/models/defval_model.dart';
import 'package:millsettingapp/process/models/input_model.dart';
import 'package:millsettingapp/process/models/millmodels.dart';

class Calculator {
  List<OutputMillModel> CalculatePerMill(
      InputModel inputModel, DefValuesModel defValuesModel, int millno) {
    millno -= 1;

    var dia = ((inputModel.millmodels[millno].top -
                defValuesModel.groovemills[millno].top) +
            (inputModel.millmodels[millno].feed -
                defValuesModel.groovemills[millno].feed) +
            (inputModel.millmodels[millno].disch -
                defValuesModel.groovemills[millno].disch)) /
        3;
    dia /= 1000;
    var weightofcane = (inputModel.tch * 1000) / 60;
    var workopening = (weightofcane * defValuesModel.fibre) /
        (defValuesModel.n *
            dia *
            defValuesModel.L *
            defValuesModel.N *
            defValuesModel.mills[millno].fibreindex) *
        1000;
    var feedworkopening = workopening * defValuesModel.mills[millno].millratio;
    var trashopening = feedworkopening * defValuesModel.trashratio;

    // for common output
    var disch = workopening - defValuesModel.mills[millno].lift;
    var feed = feedworkopening - defValuesModel.mills[millno].lift;
    var trash = trashopening - defValuesModel.mills[millno].lift;

    var cmn = (inputModel.millmodels[millno].top -
            defValuesModel.groovemills[millno].top) /
        2;

    // for tramble output
    var tfeed = (cmn + feed) - 380;
    var tdisch = (cmn + disch) - 380;
    var ttrash = (cmn + trash) - 380;

    return [
      OutputMillModel(feed: feed, disch: disch, trash: trash),
      OutputMillModel(feed: tfeed, disch: tdisch, trash: ttrash),
    ];
  }

  Calculate(InputModel inputModel) {
    DefValuesModel defValuesModel = DefaultValueManager.currentDefaults;
    List<OutputMillModel> millModel1 =
        CalculatePerMill(inputModel, defValuesModel, 1);
    List<OutputMillModel> millModel2 =
        CalculatePerMill(inputModel, defValuesModel, 2);
    List<OutputMillModel> millModel3 =
        CalculatePerMill(inputModel, defValuesModel, 3);
    List<OutputMillModel> millModel4 =
        CalculatePerMill(inputModel, defValuesModel, 4);
    // print(millModel1[0].printer());
    // print(millModel1[1].printer());
    // print(millModel2[0].printer());
    // print(millModel2[1].printer());
    // print(millModel3[0].printer());
    // print(millModel3[1].printer());
    // print(millModel4[0].printer());
    // print(millModel4[1].printer());
  }
}

void main() {
  // trial run
  DefaultValueManager defaultValueManager = DefaultValueManager();
  InputModel inputModel = InputModel(
    tch: 115,
    millmodels: [
      InputMillModel(top: 916, feed: 910, disch: 928),
      InputMillModel(top: 934, feed: 930, disch: 930),
      InputMillModel(top: 913, feed: 910, disch: 945),
      InputMillModel(top: 932, feed: 927, disch: 945),
    ], // sample outputs
  );
  Calculator calculator = Calculator();
  calculator.Calculate(inputModel);
}
