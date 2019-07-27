class UssdModel {
  String description = "";
  String baseCode = "";
  List<SubCode> subCodes = [];
  List<String> instructions = [];


  UssdModel(
      {this.description, this.baseCode, this.subCodes, this.instructions});

  String toUssd() {
    return "$baseCode${subCodes.map((sub) => sub.digit).toList().join("*")}\#";
  }
}

class SubCode {
  bool isContact;
  String digit;
  final String label;

  SubCode(this.label, {this.isContact = false});
}
