import 'package:flutter/material.dart';
import 'package:quick_code/repository/banks_repository.dart';
import 'package:quick_code/ui/list_items/organization_list_item.dart';
import 'package:quick_code/ui/util/color_utils.dart';

class BanksScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: GridView.builder(
            itemCount: banks.length,
            gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2),
            itemBuilder: (BuildContext context, int index) {
              return OrganizationListItem(banks[index]);
            }),
      ),
    );
  }
}
