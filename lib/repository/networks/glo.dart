import 'package:quick_code/model/organization_dto.dart';

// glo
var glo = OrganizationDTO()
  ..name = "Glo"
  ..color = Colors.green[700]
  ..coverImage = "assets/img/glo.jpg"
  ..listOfussd = [
    //airtime self
    UssdModel(
        description: "Recharge airtime",
        baseCode: "*123*",
        subCodes: [SubCode("recharge card pin")]),
  ];
