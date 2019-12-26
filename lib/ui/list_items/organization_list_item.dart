import 'package:flutter/material.dart';
import 'package:quick_code/model/organization_dto.dart';
import 'package:quick_code/ui/organization_details/organization_details_screen.dart';
import 'package:quick_code/ui/util/color_utils.dart';

class OrganizationListItem extends StatelessWidget {
  OrganizationListItem(this.org);
  final OrganizationDTO org;
  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;
    return Material(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
          side: BorderSide(
              color: ColorUtils.primaryColor.withOpacity(0.5),
              width: .5,
              style: BorderStyle.solid)),
      clipBehavior: Clip.hardEdge,
      child: InkWell(
        splashColor: ColorUtils.primaryColorDark,
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => OrganizationDetailsScreen(org)));
        },
        child: Stack(
          children: <Widget>[
            Container(
              height: 250,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(org.coverImage), fit: BoxFit.cover)),
            ),
//            Container(
//              color: ColorUtils.primaryColor.withOpacity(0.3),
//            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                color: Colors.white.withOpacity(
                    0.9), //ColorUtils.primaryColorDark.withOpacity(0.3),
                padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                child: Text(
                  org.name,
                  style: textTheme.title
                      .copyWith(color: ColorUtils.primaryColor, fontSize: 14),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
