import 'package:quick_code/model/organization_dto.dart';
import 'package:quick_code/model/ussd_model.dart';

// zenith
var fidelity = OrganizationDTO()
  ..name = "Fidelity Bank"
  ..coverImage = "assets/img/fidelity_bank.jpg"
  ..baseCode = "*770#"
  ..registerCode = "*770#"
  ..registerUssdInstruction = [
    /*"Note: You line to be registered for mobile banking, before you can purchase airtime on your line"
        "Follow the instruction below to register your line",*/
    "Dial *326# using a SIM linked with your account",
    "Follow the instruction",
  ]
  ..listOfussd = [
    //airtime self
    UssdModel(
        description: "Recharge self",
        baseCode: "*770*",
        subCodes: [SubCode("amount")]),

    //airtime others
    UssdModel(description: "Recharge others", baseCode: "*770*", subCodes: [
      SubCode("Phone number", isContact: true),
      SubCode("amount")
    ]),
  ];
