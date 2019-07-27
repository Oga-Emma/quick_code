import 'package:quick_code/model/organization_dto.dart';

// etisalat
var etisalat = OrganizationDTO()
  ..name = "9Mobile (etisalat)"
  ..color = Colors.lime
  ..coverImage = "assets/img/etisalat.jpg"
  ..listOfussd = [
    //airtime self
    UssdModel(
        description: "Recharge airtime",
        baseCode: "*222*",
        subCodes: [SubCode("recharge card pin")]),
  ];
