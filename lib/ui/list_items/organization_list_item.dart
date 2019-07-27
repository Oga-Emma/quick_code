import 'package:flutter/material.dart';
import 'package:quick_code/model/organization_dto.dart';
import 'package:quick_code/ui/util/color_utils.dart';

class OrganizationListItem extends StatelessWidget {
  OrganizationListItem(this.org);
  final OrganizationDTO org;
  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      clipBehavior: Clip.hardEdge,
      child: InkWell(
        splashColor: ColorUtils.primaryColorDark,
        onTap: () {},
        child: Stack(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(org.coverImage),
                      fit: BoxFit.cover)),
            ),
            Container(
              color: Colors.black12,
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                color: Colors.black45,
                padding: EdgeInsets.all(16),
                child: Text(
                  org.name,
                  style: textTheme.title.copyWith(color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
