import 'package:flutter/material.dart';
import 'package:quick_code/repository/banks_repository.dart';
import 'package:quick_code/ui/list_items/organization_list_item.dart';

class BanksScreen extends StatefulWidget {
  @override
  _BanksScreenState createState() => _BanksScreenState();
}

class _BanksScreenState extends State<BanksScreen>  with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;

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
