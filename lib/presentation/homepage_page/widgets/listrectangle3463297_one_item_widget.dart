import '../controller/homepage_controller.dart';
import '../models/listrectangle3463297_one_item_model.dart';
import 'package:flutter/material.dart';
import 'package:ipala/core/app_export.dart';

// ignore: must_be_immutable
class Listrectangle3463297OneItemWidget extends StatelessWidget {
  Listrectangle3463297OneItemWidget(this.listrectangle3463297OneItemModelObj);

  Listrectangle3463297OneItemModel listrectangle3463297OneItemModelObj;

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
              imagePath: ImageConstant.imgRectangle346329775x99,
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
                top: 4,
              ),
              child: Text(
                "lbl_tumeric".tr,
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
                "lbl_n16000".tr,
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
