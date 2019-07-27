import 'package:quick_code/model/organization_dto.dart';
import 'package:quick_code/model/ussd_model.dart';

// zenith
var polaris = OrganizationDTO()
  ..name = "Polaris Bank"
  ..coverImage = "assets/img/polaris_bank.png"
  ..baseCode = "*833#"
  ..registerCode = "*833#"
  ..registerUssdInstruction = [
    /*"Note: You line to be registered for mobile banking, before you can purchase airtime on your line"
        "Follow the instruction below to register your line",*/
    "Dial *833# on the phone number you use to open your Polaris Bank (Skye Bank) Account (or where you receive your alert)",
    "OR dial *833# to register account, to register your pin, then you can create a 4 digit pin, ",
    "then follow the other instructions",
  ]
  ..listOfussd = [
    //airtime self
    UssdModel(
        description: "Recharge self",
        baseCode: "*833*",
        subCodes: [SubCode("amount")]),

    //airtime others
    UssdModel(description: "Recharge others", baseCode: "*833*", subCodes: [
      SubCode("amount"),
      SubCode("Phone number", isContact: true),
    ]),
  ];
