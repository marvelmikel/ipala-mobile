import '../controller/stores_near_you_controller.dart';
import '../models/listrectangle3463276_item_model.dart';
import 'package:flutter/material.dart';
import 'package:ipala/core/app_export.dart';
import 'package:ipala/widgets/custom_button.dart';

// ignore: must_be_immutable
class Listrectangle3463276ItemWidget extends StatelessWidget {
  Listrectangle3463276ItemWidget(this.listrectangle3463276ItemModelObj);

  Listrectangle3463276ItemModel listrectangle3463276ItemModelObj;

  var controller = Get.find<StoresNearYouController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgRectangle3463276,
          height: getSize(
            106.00,
          ),
          width: getSize(
            106.00,
          ),
          radius: BorderRadius.circular(
            getHorizontalSize(
              16.00,
            ),
          ),
        ),
        Padding(
          padding: getPadding(
            top: 8,
            bottom: 8,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "lbl_stand_alone_fin".tr,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtJosefinSansRomanRegular8.copyWith(
                  height: getVerticalSize(
                    1.30,
                  ),
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 4,
                ),
                child: Text(
                  "lbl_nice_and_tees".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtJosefinSansRomanBold18.copyWith(
                    height: getVerticalSize(
                      1.30,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 7,
                ),
                child: Text(
                  "msg_no_12_vendata_street".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtJosefinSansRomanRegular12.copyWith(
                    height: getVerticalSize(
                      1.30,
                    ),
                  ),
                ),
              ),
              CustomButton(
                height: 26,
                width: 91,
                text: "lbl_follow".tr,
                margin: getMargin(
                  top: 13,
                ),
                shape: ButtonShape.CircleBorder13,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
