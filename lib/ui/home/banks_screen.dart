import 'package:flutter/material.dart';
import 'package:quick_code/repository/banks_repository.dart';
import 'package:quick_code/ui/list_items/organization_list_item.dart';
import 'package:quick_code/ui/util/color_utils.dart';

class BanksScreen extends StatefulWidget {
  @override
  _BanksScreenState createState() => _BanksScreenState();
}

class _BanksScreenState extends State<BanksScreen>
    with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          padding: EdgeInsets.all(8.0),
//          color: Colors.grey[200],
          child: GridView.builder(
              itemCount: banks.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 8.0,
                  mainAxisSpacing: 8.0),
              itemBuilder: (context, index) {
                return OrganizationListItem(banks[index]);
              })
//        ListView.builder(
//            itemCount: banks.length,
//            itemBuilder: (BuildContext context, int index) {
//              return OrganizationListItem(banks[index]);
//            }),
          ),
    );
  }
}
