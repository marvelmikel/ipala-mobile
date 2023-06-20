import '../controller/homepage_controller.dart';
import '../models/listrectangle3463297_item_model.dart';
import 'package:flutter/material.dart';
import 'package:ipala/core/app_export.dart';

// ignore: must_be_immutable
class Listrectangle3463297ItemWidget extends StatelessWidget {
  Listrectangle3463297ItemWidget(this.listrectangle3463297ItemModelObj);

  Listrectangle3463297ItemModel listrectangle3463297ItemModelObj;

  var controller = Get.find<HomepageController>();

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Padding(
        padding: getPadding(
          right: 15,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgRectangle3463297,
              height: getVerticalSize(
                75.00,
              ),
              width: getHorizontalSize(
                99.00,
              ),
              radius: BorderRadius.circular(
                getHorizontalSize(
                  16.00,
                ),
              ),
            ),
            Padding(
              padding: getPadding(
                top: 5,
              ),
              child: Text(
                "lbl_pepper".tr,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtJosefinSansRomanSemiBold12.copyWith(
                  height: getVerticalSize(
                    1.30,
                  ),
                ),
              ),
            ),
            Padding(
              padding: getPadding(
                top: 2,
              ),
              child: Text(
                "lbl_n600".tr,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtJosefinSansRomanSemiBold12Deeporange600
                    .copyWith(
                  height: getVerticalSize(
                    1.30,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
