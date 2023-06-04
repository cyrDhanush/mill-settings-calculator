import 'package:millsettingapp/process/models/millmodels.dart';

class DefValuesModel {
  final double fibre;
  final double n;
  final double L;
  final double trashratio;
  final double N;

  List<DefValMillModel> mills;
  List<InputMillModel> groovemills;

  DefValuesModel({
    required this.fibre,
    required this.n,
    required this.L,
    required this.trashratio,
    required this.N,
    required this.mills,
    required this.groovemills,
  });
}
