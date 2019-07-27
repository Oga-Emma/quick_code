import 'package:quick_code/model/organization_dto.dart';
import 'package:quick_code/model/ussd_model.dart';

// zenith
var gtb = OrganizationDTO()
  ..name = "GTB Bank"
  ..coverImage = "assets/img/gtb_bank.jpg"
  ..baseCode = "*737#"
  ..registerCode = "*737*5#"
  ..registerUssdInstruction = [
    /*"Note: You line to be registered for mobile banking, before you can purchase airtime on your line"
        "Follow the instruction below to register your line",*/
    "The processes listed below will guide you on How to register, create or reset PIN for Guaranty Trust Bank USSD transaction",
    "Dial *737*5#",
    "Enter the last 6 digits of your debit card (that is your ATM Card number)",
    "Enter your prefered(new) 4 digit pin.",
    "You could also reset your pin, it will request you to enter old one and then enter the new one twice."
  ]
  ..listOfussd = [
    //airtime self
    UssdModel(
        description: "Recharge self",
        baseCode: "*737*",
        subCodes: [SubCode("amount")]),

    //airtime others
    UssdModel(description: "Recharge others", baseCode: "*737*", subCodes: [
      SubCode("amount"),
      SubCode("Phone number", isContact: true),
    ]),
  ];
