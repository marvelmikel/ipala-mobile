import 'controller/success_controller.dart';
import 'package:flutter/material.dart';
import 'package:ipala/core/app_export.dart';
import 'package:ipala/widgets/custom_button.dart';

class SuccessScreen extends GetWidget<SuccessController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.gray100,
        body: Container(
          width: size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    width: size.width,
                    padding: getPadding(
                      left: 24,
                      right: 24,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgBirthdayparty,
                          height: getVerticalSize(
                            202.00,
                          ),
                          width: getHorizontalSize(
                            327.00,
                          ),
                          margin: getMargin(
                            top: 150,
                            bottom: 20,
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            top: 1,
                          ),
                          child: Text(
                            "lbl_success".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style:
                                AppStyle.txtJosefinSansRomanSemiBold40.copyWith(
                              height: getVerticalSize(
                                1.30,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: getHorizontalSize(
                            284.00,
                          ),
                          margin: getMargin(
                            top: 14,
                          ),
                          child: Text(
                            "msg_you_have_successfully".tr,
                            maxLines: null,
                            textAlign: TextAlign.center,
                            style: AppStyle
                                .txtJosefinSansRomanRegular16Black90001
                                .copyWith(
                              height: getVerticalSize(
                                1.40,
                              ),
                            ),
                          ),
                        ),
                        CustomButton(
                          height: 56,
                          width: 327,
                          text: "lbl_shop_again".tr.toUpperCase(),
                          margin: getMargin(
                            top: 16,
                            bottom: 54,
                          ),
                          padding: ButtonPadding.PaddingAll19,
                          fontStyle: ButtonFontStyle.JosefinSansRomanSemiBold14,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
