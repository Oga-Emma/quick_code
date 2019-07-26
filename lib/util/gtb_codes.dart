import 'package:quick_code/model/ussd_model.dart';

var gtbList = <UssdModel>[
  UssdModel("Open a GTB Account", "*737*0", <SubCode>[]),
  UssdModel("Check Account Details", "*737*6*1", <SubCode>[]),
  UssdModel("Transfer to GTBank Account", "*737*1*", <SubCode>[SubCode("Amount"), SubCode("Account Number")]),
  UssdModel("Transfer to other Banks", "*737*2*", <SubCode>[SubCode("Amount"), SubCode("Account Number")]),
  UssdModel("Airtime Topup(Self)", "*737*", <SubCode>[SubCode("Amount")]),
  UssdModel("Airtime Topup(Other)", "*737*", <SubCode>[SubCode("Amount"), SubCode("Recipient’s number", isContact: true)]),
  UssdModel("Data Topup", "*737*4", <SubCode>[]),
];