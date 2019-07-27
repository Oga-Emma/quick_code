import 'package:quick_code/model/organization_dto.dart';
import 'package:quick_code/model/ussd_model.dart';

// zenith
var first = OrganizationDTO()
  ..name = "First Bank"
  ..color = Colors.blue[900].withRed(20)
  ..coverImage = "assets/img/first_bank.png"
  ..baseCode = "*894#"
  ..registerCode = "*894#"
  ..registerUssdInstruction = [
    /*"Note: You line to be registered for mobile banking, before you can purchase airtime on your line"
        "Follow the instruction below to register your line",*/
    "Dial *894*0#",
    "Enter a four digit Personal Identification Number (PIN) linked to the debit card; ",
    "Create a five digit PIN, and the registration is complete",
    "Note: PIN reset on this service requires only a quick dial of *894*0#",
  ]
  ..listOfussd = [
    //airtime self
    UssdModel(
        description: "Recharge self",
        baseCode: "*894*",
        subCodes: [SubCode("amount")]),

    //airtime others
    UssdModel(description: "Recharge others", baseCode: "*894*", subCodes: [
      SubCode("amount"),
      SubCode("Phone number", isContact: true),
    ]),
  ];
