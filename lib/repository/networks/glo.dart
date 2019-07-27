import 'package:quick_code/model/organization_dto.dart';

// glo
var glo = OrganizationDTO()
  ..name = "Glo"
  ..coverImage = "assets/img/glo.jpg"
  ..listOfussd = [
    //airtime self
    UssdModel(
        description: "Recharge airtem",
        baseCode: "*123*",
        subCodes: [SubCode("recharge card pin")]),
  ];
