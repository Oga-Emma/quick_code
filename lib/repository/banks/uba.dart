import 'package:quick_code/model/organization_dto.dart';
import 'package:quick_code/model/ussd_model.dart';

// zenith
var uba = OrganizationDTO()
  ..name = "UBA Bank"
  ..color = Colors.red[800]
  ..coverImage = "assets/img/uba_bank.png"
  ..baseCode = "*919#"
  ..registerCode = "*919#"
  ..registerUssdInstruction = [
    /*"Note: You line to be registered for mobile banking, before you can purchase airtime on your line"
        "Follow the instruction below to register your line",*/
    "Dial *919#",
    "press the number 7",
    "press the number 2",
    "and then follow other instructions on the mobile phone number",
    "then you can create a 4 digit pin",
  ]
  ..listOfussd = [
    //airtime self
    UssdModel(
        description: "Recharge self",
        baseCode: "*919*",
        subCodes: [SubCode("amount")]),

    //airtime others
    UssdModel(description: "Recharge others", baseCode: "*919*", subCodes: [
      SubCode("Phone number", isContact: true),
      SubCode("amount"),
    ]),
  ];
