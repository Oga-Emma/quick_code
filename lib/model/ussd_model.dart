class UssdModel{
  final String description;
  final String baseCode;
  final List<SubCode> subCodes;

  UssdModel(this.description, this.baseCode, this.subCodes);

  String toUssd(){
    return "$baseCode${subCodes.map((sub) => sub.digit).toList().join("*")}\#";
  }
}

class SubCode{
  bool isContact;
  String digit;
  final String label;

  SubCode(this.label, {this.isContact = false});
}