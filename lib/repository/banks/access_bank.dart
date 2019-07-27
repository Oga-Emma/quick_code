import 'package:quick_code/model/organization_dto.dart';
import 'package:quick_code/model/ussd_model.dart';

// zenith
var access = OrganizationDTO()
  ..name = "Access Bank"
  ..color = Colors.orange[600]
  ..coverImage = "assets/img/access.png"
  ..baseCode = "*901#"
  ..registerCode = "*901#"
  ..registerUssdInstruction = [
    /*"Note: You line to be registered for mobile banking, before you can purchase airtime on your line"
        "Follow the instruction below to register your line",*/
    "Dial *901# using a SIM linked with your account",
    "Select the option that says “register”",
    "Enter the last 4 digits of your debit card",
    "Choose a 5-digit PIN for this service and keep it safe.",
  ]
  ..listOfussd = [
    //airtime self
    UssdModel(
        description: "Recharge self",
        baseCode: "*901*",
        subCodes: [SubCode("amount")]),

    //airtime others
    UssdModel(description: "Recharge self", baseCode: "*901*", subCodes: [
      SubCode("amount"),
      SubCode("phone number", isContact: true)
    ]),
  ];

//airtime
