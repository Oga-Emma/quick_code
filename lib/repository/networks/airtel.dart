import 'package:quick_code/model/organization_dto.dart';

// airtel
var airtel = OrganizationDTO()
  ..name = "Airtel"
  ..color = Colors.red[700]
  ..coverImage = "assets/img/airtel.jpg"
  ..listOfussd = [
    //airtime self
    UssdModel(
        description: "Recharge airtime",
        baseCode: "*126*",
        subCodes: [SubCode("recharge card pin")]),
  ];
