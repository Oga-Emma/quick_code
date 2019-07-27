import 'package:quick_code/model/organization_dto.dart';

// airtel
var airtel = OrganizationDTO()
  ..name = "Airtel"
  ..coverImage = "assets/img/airtel.jpg"
  ..listOfussd = [
    //airtime self
    UssdModel(
        description: "Recharge airtem",
        baseCode: "*126*",
        subCodes: [SubCode("recharge card pin")]),
  ];
