import 'package:flutter/material.dart';
import 'package:quick_code/model/organization_dto.dart';
import 'package:quick_code/ui/util/color_utils.dart';

class OrganizationListItem extends StatelessWidget {
  OrganizationListItem(this.org);
  final OrganizationDTO org;
  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        elevation: 8.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
//          side: BorderSide(
//              color: ColorUtils.primaryColor,
//              width: 2,
//              style: BorderStyle.solid)
        ),
        clipBehavior: Clip.hardEdge,
        child: InkWell(
          splashColor: ColorUtils.primaryColorDark,
          onTap: () {},
          child: Stack(
            children: <Widget>[
              Container(
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
                  color: Colors
                      .black38, //ColorUtils.primaryColorDark.withOpacity(0.3),
                  padding: EdgeInsets.all(8),
                  child: Text(
                    org.name,
                    style: textTheme.title
                        .copyWith(color: Colors.white, fontSize: 18),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
