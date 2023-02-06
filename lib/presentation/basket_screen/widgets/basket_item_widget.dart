import '../controller/basket_controller.dart';
import '../models/basket_item_model.dart';
import 'package:flutter/material.dart';
import 'package:ipala/core/app_export.dart';

// ignore: must_be_immutable
class BasketItemWidget extends StatelessWidget {
  BasketItemWidget(this.basketItemModelObj);

  BasketItemModel basketItemModelObj;

  var controller = Get.find<BasketController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgRectangle3463279,
          height: getVerticalSize(
            106.00,
          ),
          width: getHorizontalSize(
            156.00,
          ),
          radius: BorderRadius.circular(
            getHorizontalSize(
              16.00,
            ),
          ),
        ),
        Padding(
          padding: getPadding(
            left: 15,
            bottom: 25,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "lbl_pasta".tr,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtJosefinSansRomanBold18.copyWith(
                  height: getVerticalSize(
                    1.30,
                  ),
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 5,
                ),
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "lbl_1".tr,
                        style: TextStyle(
                          color: ColorConstant.fromHex("#e50f0400"),
                          fontSize: getFontSize(
                            14,
                          ),
                          fontFamily: 'Josefin Sans',
                          fontWeight: FontWeight.w400,
                          height: getVerticalSize(
                            1.07,
                          ),
                        ),
                      ),
                      TextSpan(
                        text: "lbl_bundle".tr,
                        style: TextStyle(
                          color: ColorConstant.fromHex("#e50f0400"),
                          fontSize: getFontSize(
                            14,
                          ),
                          fontFamily: 'Josefin Sans',
                          fontWeight: FontWeight.w400,
                          height: getVerticalSize(
                            1.07,
                          ),
                        ),
                      ),
                      TextSpan(
                        text: "lbl_n4502".tr,
                        style: TextStyle(
                          color: ColorConstant.fromHex("#e50f0400"),
                          fontSize: getFontSize(
                            14,
                          ),
                          fontFamily: 'Josefin Sans',
                          fontWeight: FontWeight.w500,
                          height: getVerticalSize(
                            1.07,
                          ),
                        ),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              Container(
                width: getHorizontalSize(
                  85.00,
                ),
                margin: getMargin(
                  top: 4,
                ),
                child: Text(
                  "msg_nice_and_tees_store".tr,
                  maxLines: null,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtJosefinSansRomanRegular14Deeporange600
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
        CustomImageView(
          svgPath: ImageConstant.imgOverflowmenu,
          height: getVerticalSize(
            24.00,
          ),
          width: getHorizontalSize(
            25.00,
          ),
          margin: getMargin(
            left: 33,
            bottom: 81,
          ),
        ),
      ],
    );
  }
}
