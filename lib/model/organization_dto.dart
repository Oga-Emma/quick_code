import 'package:quick_code/model/ussd_model.dart';
export 'ussd_model.dart';

class OrganizationDTO{
  String name = '';
  String coverImage = '';
  List<UssdModel> listOfussd = [];
  List<String> registerUssdInstruction = [];
  String registerCode = '';
  String baseCode = '';
}