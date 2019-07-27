import 'package:quick_code/model/organization_dto.dart';

// etisalat
var etisalat = OrganizationDTO()
  ..name = "9Mobile (etisalat)"
  ..coverImage = "assets/img/etisalat.jpg"
  ..listOfussd = [
    //airtime self
    UssdModel(
        description: "Recharge airtem",
        baseCode: "*222*",
        subCodes: [SubCode("recharge card pin")]),
  ];
