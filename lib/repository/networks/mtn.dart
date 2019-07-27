import 'package:quick_code/model/organization_dto.dart';

// mtn
var mtn = OrganizationDTO()
  ..name = "Mtn"
  ..color = Colors.yellow[700]
  ..coverImage = "assets/img/mtn.png"
  ..listOfussd = [
    //airtime self
    UssdModel(
        description: "Recharge airtme",
        baseCode: "*555*",
        subCodes: [SubCode("recharge card pin")]),
  ];
