import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:quick_code/model/organization_dto.dart';

class OrganizationDetailsScreen extends StatelessWidget {
  OrganizationDetailsScreen(this.org);
  final OrganizationDTO org;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: org.color,
          title: Text(org.name),
          actions: <Widget>[
            IconButton(icon: Icon(EvaIcons.searchOutline), onPressed: () {}),
          ],
        ),
        body: Container(
          child: ListView.builder(
              itemCount: org.listOfussd.length,
              itemBuilder: (context, index) {
                var ussd = org.listOfussd[index];
                return Card(
                  child: Container(
                      padding: EdgeInsets.all(16.0),
                      child: Row(
                        children: <Widget>[
                          Icon(
                            Icons.subdirectory_arrow_right,
                            color: org.color,
                            size: 16,
                          ),
                          SizedBox(width: 16),
                          Expanded(
                            child: Text(
                              "${ussd.description}",
                              style: Theme.of(context).textTheme.title,
                            ),
                          ),
                          SizedBox(width: 16),
                          Icon(
                            Icons.keyboard_arrow_right,
                            color: org.color,
                          )
                        ],
                      )),
                );
              }),
        ));
  }
}
