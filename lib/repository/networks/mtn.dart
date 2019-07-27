import 'package:quick_code/model/organization_dto.dart';

// mtn
var mtn = OrganizationDTO()
  ..name = "Mtn"
  ..coverImage = "assets/img/mtn.png"
  ..listOfussd = [
    //airtime self
    UssdModel(
        description: "Recharge airtem",
        baseCode: "*555*",
        subCodes: [SubCode("recharge card pin")]),
  ];
