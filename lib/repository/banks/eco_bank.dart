import 'package:quick_code/model/organization_dto.dart';
import 'package:quick_code/model/ussd_model.dart';

// zenith
var eco = OrganizationDTO()
  ..name = "Eco Bank"
  ..coverImage = "assets/img/eco_bank.jpg"
  ..baseCode = "*326#"
  ..registerCode = "*326#"
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
        baseCode: "*326*1*",
        subCodes: [SubCode("amount")]),
  ];
