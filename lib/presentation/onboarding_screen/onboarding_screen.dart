import 'controller/onboarding_controller.dart';
import 'package:flutter/material.dart';
import 'package:ipala/core/app_export.dart';
import 'package:ipala/widgets/custom_button.dart';

class OnboardingScreen extends GetWidget<OnboardingController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.black900,
            body: Container(
                height: getVerticalSize(766.00),
                width: size.width,
                child: Stack(children: [
                  Align(
                      alignment: Alignment.center,
                      child: SingleChildScrollView(
                          child: Container(
                              height: getVerticalSize(766.00),
                              width: size.width,
                              child: Stack(
                                  alignment: Alignment.bottomCenter,
                                  children: [
                                    CustomImageView(
                                        imagePath:
                                            ImageConstant.imgRectangle11024,
                                        height: getVerticalSize(586.00),
                                        width: getHorizontalSize(375.00),
                                        radius: BorderRadius.circular(
                                            getHorizontalSize(20.00)),
                                        alignment: Alignment.topCenter),
                                    Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Container(
                                            width: size.width,
                                            padding: getPadding(
                                                left: 24,
                                                top: 34,
                                                right: 24,
                                                bottom: 34),
                                            decoration: AppDecoration
                                                .fillGray100
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder40),
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Container(
                                                      width: getHorizontalSize(
                                                          284.00),
                                                      margin: getMargin(top: 3),
                                                      child: RichText(
                                                          text: TextSpan(
                                                              children: [
                                                                TextSpan(
                                                                    text:
                                                                        "lbl_get"
                                                                            .tr,
                                                                    style: TextStyle(
                                                                        color: ColorConstant.fromHex(
                                                                            "#000000"),
                                                                        fontSize:
                                                                            getFontSize(
                                                                                28),
                                                                        fontFamily:
                                                                            'Josefin Sans',
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .w700,
                                                                        height:
                                                                            getVerticalSize(1.28))),
                                                                TextSpan(
                                                                    text:
                                                                        "lbl_updates"
                                                                            .tr,
                                                                    style: TextStyle(
                                                                        color: ColorConstant.fromHex(
                                                                            "#f44a15"),
                                                                        fontSize:
                                                                            getFontSize(
                                                                                28),
                                                                        fontFamily:
                                                                            'Josefin Sans',
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .w700,
                                                                        height:
                                                                            getVerticalSize(1.28))),
                                                                TextSpan(
                                                                    text:
                                                                        "msg_on_latest_food_items"
                                                                            .tr,
                                                                    style: TextStyle(
                                                                        color: ColorConstant.fromHex(
                                                                            "#000000"),
                                                                        fontSize:
                                                                            getFontSize(
                                                                                28),
                                                                        fontFamily:
                                                                            'Josefin Sans',
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .w700,
                                                                        height:
                                                                            getVerticalSize(1.28)))
                                                              ]),
                                                          textAlign:
                                                              TextAlign.left)),
                                                  Container(
                                                      width: getHorizontalSize(
                                                          214.00),
                                                      margin: getMargin(top: 8),
                                                      child: Text(
                                                          "msg_start_creating_automated"
                                                              .tr,
                                                          maxLines: null,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtJosefinSansRomanRegular16
                                                              .copyWith(
                                                                  height:
                                                                      getVerticalSize(
                                                                          1.40)))),
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 27),
                                                      child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          children: [
                                                            CustomButton(
                                                                height: 64,
                                                                width: 156,
                                                                text: "lbl_log_in"
                                                                    .tr
                                                                    .toUpperCase(),
                                                                variant:
                                                                    ButtonVariant
                                                                        .FillDeeporange6006c,
                                                                padding:
                                                                    ButtonPadding
                                                                        .PaddingAll22,
                                                                fontStyle:
                                                                    ButtonFontStyle
                                                                        .JosefinSansRomanSemiBold16,
                                                                onTap:
                                                                    onTapLogin),
                                                            CustomButton(
                                                                height: 64,
                                                                width: 156,
                                                                text: "lbl_sign_up"
                                                                    .tr
                                                                    .toUpperCase(),
                                                                padding:
                                                                    ButtonPadding
                                                                        .PaddingAll22,
                                                                fontStyle:
                                                                    ButtonFontStyle
                                                                        .JosefinSansRomanSemiBold16Gray200,
                                                                onTap:
                                                                    onTapSignup)
                                                          ]))
                                                ])))
                                  ]))))
                ]))));
  }

  onTapLogin() {
    Get.offNamed(AppRoutes.signInScreen);
  }

  onTapSignup() {
    Get.offNamed(AppRoutes.signUpScreen);
  }
}
