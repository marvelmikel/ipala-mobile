import 'package:flutter/material.dart';
import 'package:ipala/core/app_export.dart';

// ignore: must_be_immutable
class AppbarStack extends StatelessWidget {
  AppbarStack({this.margin, this.onTap});

  EdgeInsetsGeometry? margin;

  Function? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap!();
      },
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: Card(
          clipBehavior: Clip.antiAlias,
          elevation: 0,
          margin: EdgeInsets.all(0),
          color: ColorConstant.gray100,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusStyle.roundedBorder2,
          ),
          child: Container(
            height: getVerticalSize(
              16.00,
            ),
            width: getHorizontalSize(
              19.00,
            ),
            padding: getPadding(
              left: 3,
              top: 1,
              right: 3,
              bottom: 1,
            ),
            decoration: AppDecoration.fillGray100.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder2,
            ),
            child: Stack(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgRectangle346328513x13,
                  height: getSize(
                    13.00,
                  ),
                  width: getSize(
                    13.00,
                  ),
                  radius: BorderRadius.circular(
                    getHorizontalSize(
                      4.00,
                    ),
                  ),
                  alignment: Alignment.topCenter,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
