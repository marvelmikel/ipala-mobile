import '../controller/notification_one_controller.dart';
import '../models/listrectangle3463278_item_model.dart';
import 'package:flutter/material.dart';
import 'package:ipala/core/app_export.dart';
import 'package:ipala/widgets/custom_button.dart';

// ignore: must_be_immutable
class Listrectangle3463278ItemWidget extends StatelessWidget {
  Listrectangle3463278ItemWidget(this.listrectangle3463278ItemModelObj);

  Listrectangle3463278ItemModel listrectangle3463278ItemModelObj;

  var controller = Get.find<NotificationOneController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgRectangle346327856x75,
          height: getSize(
            95.00,
          ),
          width: getSize(
            95.00,
          ),
          radius: BorderRadius.circular(
            getHorizontalSize(
              8.00,
            ),
          ),
        ),
        Padding(
          padding: getPadding(
            top: 4,
            bottom: 4,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "lbl_price_alert".tr,
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
                  178.00,
                ),
                margin: getMargin(
                  top: 6,
                ),
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "msg_spaghetti_pasta2".tr,
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
                        text: "lbl_n750".tr,
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
                        text: "lbl_per_pack".tr,
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
                  top: 5,
                ),
                child: Row(
                  children: [
                    CustomButton(
                      height: 26,
                      width: 102,
                      text: "lbl_nice_and_tees2".tr,
                      variant: ButtonVariant.FillOrangeA200,
                      shape: ButtonShape.RoundedBorder8,
                      fontStyle: ButtonFontStyle.JosefinSansRomanMedium14,
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
