import 'package:quick_code/model/organization_dto.dart';
import 'package:quick_code/model/ussd_model.dart';

// zenith
var union = OrganizationDTO()
  ..name = "Union Bank"
  ..coverImage = "assets/img/union_bank.png"
  ..baseCode = "*826#"
  ..registerCode = "*826*5#"
  ..registerUssdInstruction = [
    /*"Note: You line to be registered for mobile banking, before you can purchase airtime on your line"
        "Follow the instruction below to register your line",*/
    "Dial *826*5# on the phone number you use to open your Union Account (or where you receive your alert)",
    "Follow the instructions",
  ]
  ..listOfussd = [
    //airtime self
    UssdModel(
        description: "Recharge self",
        baseCode: "*826*",
        subCodes: [SubCode("amount")]),

    UssdModel(
        description: "Recharge self method 2",
        baseCode: "*389*032*",
        subCodes: [SubCode("amount")]),

    //airtime others
    UssdModel(description: "Recharge others", baseCode: "*826*", subCodes: [
      SubCode("amount"),
      SubCode("Phone number", isContact: true),
    ]),
  ];
