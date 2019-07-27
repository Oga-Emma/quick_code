import 'package:quick_code/model/organization_dto.dart';
import 'package:quick_code/model/ussd_model.dart';

// zenith
var zenith = OrganizationDTO()
  ..name = "Zenith Bank"
  ..coverImage = "assets/img/zenith_bank.jpg"
  ..baseCode = "*966#"
  ..registerCode = "*966*00#"
  ..registerUssdInstruction = [
    /*"Note: You line to be registered for mobile banking, before you can purchase airtime on your line"
        "Follow the instruction below to register your line",*/
    "Simply dial *966*00# with your AlertZ number",
    "You will be prompted to enter the last 4 digits of your Debit (ATM) card number.",
    "The next page will display your Account Name and you will be prompted to create a 4 digit PIN",
    "Confirm the 4 digit PIN",
    "If successful, you will get a message \“ Retrieving your balance \“",
    "You will receive an SMS with the balances on all your accounts",
  ]
  ..listOfussd = [
    //airtime self
    UssdModel(
        description: "Recharge self",
        baseCode: "*966*",
        subCodes: [SubCode("amount")]),

    //airtime others
    UssdModel(description: "Recharge others", baseCode: "*966*", subCodes: [
      SubCode("amount"),
      SubCode("Phone number", isContact: true),
    ]),
  ];
