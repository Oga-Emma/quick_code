import 'package:flutter/material.dart';
import 'package:quick_code/repository/networks_repository.dart';
import 'package:quick_code/ui/list_items/organization_list_item.dart';
import 'package:quick_code/ui/util/color_utils.dart';

class NetworksScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(8.0),
        child: GridView.builder(
            itemCount: networks.length,
            gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2),
            itemBuilder: (BuildContext context, int index) {
              return OrganizationListItem(networks[index]);
            }),
      ),
    );
  }
}
