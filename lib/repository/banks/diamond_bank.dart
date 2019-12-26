import 'package:quick_code/model/organization_dto.dart';
import 'package:quick_code/model/ussd_model.dart';

// zenith
var diamond = OrganizationDTO()
  ..name = "Diamond(Access) Bank"
  ..color = Colors.green[600]
  ..coverImage = "assets/img/access.png"
  ..baseCode = "*426#"
  ..registerCode = "*426#"
  ..registerUssdInstruction = [
    "Dial *4260# on the phone number you use to open your Diamond Bank Account (or where you receive your alert)",
    "OR dial *426# to register account, then press 0, again ",
    "To register your pin,then you can create a 4 digit pin",
    "Follow the other instructions."
  ]
  ..listOfussd = [
    //airtime self
    UssdModel(
        description: "Recharge self method 1",
        baseCode: "*426*",
        subCodes: [SubCode("amount")]),
    UssdModel(
        description: "Recharge self method 2",
        baseCode: "*937*",
        subCodes: [SubCode("amount")]),

    //airtime others
    UssdModel(
        description: "Recharge others method 1",
        baseCode: "*426*",
        subCodes: [
          SubCode("amount"),
          SubCode("phone number", isContact: true)
        ]),
    //airtime others
    UssdModel(
        description: "Recharge others method 2",
        baseCode: "*937*",
        subCodes: [
          SubCode("amount"),
          SubCode("phone number", isContact: true)
        ]),
  ];
