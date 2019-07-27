import 'package:flutter/material.dart';

import 'package:quick_code/model/ussd_model.dart';
import 'package:quick_code/ui/util/color_utils.dart';
export 'ussd_model.dart';
export 'package:flutter/material.dart';

class OrganizationDTO {
  String name = '';
  Color color = ColorUtils.primaryColor;
  String coverImage = '';
  List<UssdModel> listOfussd = [];
  List<String> registerUssdInstruction = [];
  String registerCode = '';
  String baseCode = '';
}
