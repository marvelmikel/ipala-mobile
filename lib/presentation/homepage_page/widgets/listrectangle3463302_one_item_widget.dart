import '../controller/homepage_controller.dart';
import '../models/listrectangle3463302_one_item_model.dart';
import 'package:flutter/material.dart';
import 'package:ipala/core/app_export.dart';

// ignore: must_be_immutable
class Listrectangle3463302OneItemWidget extends StatelessWidget {
  Listrectangle3463302OneItemWidget(this.listrectangle3463302OneItemModelObj);

  Listrectangle3463302OneItemModel listrectangle3463302OneItemModelObj;

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
              imagePath: ImageConstant.imgRectangle3463302,
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
                "lbl_vegetable".tr,
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
                top: 3,
              ),
              child: Text(
                "lbl_n890".tr,
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
