// totally 3 mill models
// input mill consists of top, feed, discharge
// output mill has feed, discharge, trash
// default values mill has fibreindex, millratio, lift

class InputMillModel {
  final int? millno;
  final double top;
  final double feed;
  final double disch;

  InputMillModel(
      {this.millno,
      required this.top,
      required this.feed,
      required this.disch});

  printer() {
    print(this.top);
    print(this.feed);
    print(this.disch);
  }
}

class OutputMillModel {
  final int? millno;
  final double feed;
  final double disch;
  final double trash;

  OutputMillModel(
      {this.millno,
      required this.feed,
      required this.disch,
      required this.trash});

  printer() {
    print(this.feed);
    print(this.disch);
    print(this.trash);
  }
}

class DefValMillModel {
  final int? millno;
  final double fibreindex;
  final double millratio;
  final double lift;

  DefValMillModel(
      {this.millno,
      required this.fibreindex,
      required this.millratio,
      required this.lift});
}
