import 'package:flutter/material.dart';
import 'package:quick_code/repository/networks_repository.dart';
import 'package:quick_code/ui/list_items/organization_list_item.dart';

class NetworksScreen extends StatefulWidget {
  @override
  _NetworksScreenState createState() => _NetworksScreenState();
}

class _NetworksScreenState extends State<NetworksScreen>
    with AutomaticKeepAliveClientMixin {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          padding: EdgeInsets.all(8.0),
          child: GridView.builder(
              itemCount: networks.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 4.0,
                  mainAxisSpacing: 4.0),
              itemBuilder: (context, index) {
                return OrganizationListItem(networks[index]);
              })
//        ListView.builder(
//            itemCount: networks.length,
//            itemBuilder: (BuildContext context, int index) {
//              return OrganizationListItem(networks[index]);
//            }),

          /*child: GridView.builder(
            itemCount: networks.length,
            gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2),
            itemBuilder: (BuildContext context, int index) {
              return OrganizationListItem(networks[index]);
            }),*/
          ),
    );
  }
}
