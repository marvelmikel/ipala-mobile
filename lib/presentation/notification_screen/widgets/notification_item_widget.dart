import '../controller/notification_controller.dart';
import '../models/notification_item_model.dart';
import 'package:flutter/material.dart';
import 'package:ipala/core/app_export.dart';
import 'package:ipala/widgets/custom_button.dart';

// ignore: must_be_immutable
class NotificationItemWidget extends StatelessWidget {
  NotificationItemWidget(this.notificationItemModelObj);

  NotificationItemModel notificationItemModelObj;

  var controller = Get.find<NotificationController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgRectangle3463276,
          height: getSize(
            95.00,
          ),
          width: getSize(
            95.00,
          ),
          radius: BorderRadius.circular(
            getHorizontalSize(
              12.00,
            ),
          ),
        ),
        Padding(
          padding: getPadding(
            left: 16,
            top: 4,
            bottom: 5,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "lbl_new_store".tr,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtJosefinSansRomanBold14.copyWith(
                  height: getVerticalSize(
                    1.00,
                  ),
                ),
              ),
              Container(
                width: getHorizontalSize(
                  167.00,
                ),
                margin: getMargin(
                  top: 5,
                ),
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "msg_abuja_garki_road2".tr,
                        style: TextStyle(
                          color: ColorConstant.fromHex("#000000"),
                          fontSize: getFontSize(
                            14,
                          ),
                          fontFamily: 'Josefin Sans',
                          fontWeight: FontWeight.w400,
                          height: getVerticalSize(
                            1.00,
                          ),
                        ),
                      ),
                      TextSpan(
                        text: "lbl_6_00am_7_00pm".tr,
                        style: TextStyle(
                          color: ColorConstant.fromHex("#000000"),
                          fontSize: getFontSize(
                            14,
                          ),
                          fontFamily: 'Josefin Sans',
                          fontWeight: FontWeight.w500,
                          height: getVerticalSize(
                            1.00,
                          ),
                        ),
                      ),
                      TextSpan(
                        text: "lbl6".tr,
                        style: TextStyle(
                          color: ColorConstant.fromHex("#000000"),
                          fontSize: getFontSize(
                            14,
                          ),
                          fontFamily: 'Josefin Sans',
                          fontWeight: FontWeight.w400,
                          height: getVerticalSize(
                            1.00,
                          ),
                        ),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 4,
                ),
                child: Row(
                  children: [
                    CustomButton(
                      height: 26,
                      width: 101,
                      text: "lbl_nice_and_tees2".tr,
                      variant: ButtonVariant.FillOrangeA200,
                      shape: ButtonShape.RoundedBorder8,
                      fontStyle: ButtonFontStyle.JosefinSansRomanRegular14,
                    ),
                    Padding(
                      padding: getPadding(
                        left: 16,
                        top: 6,
                        bottom: 5,
                      ),
                      child: Text(
                        "lbl_1hr_ago".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtJosefinSansRomanMedium14Black9007e01
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
            ],
          ),
        ),
      ],
    );
  }
}
