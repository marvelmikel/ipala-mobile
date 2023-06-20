import 'controller/ratings_controller.dart';
import 'package:flutter/material.dart';
import 'package:ipala/core/app_export.dart';
import 'package:ipala/widgets/custom_button.dart';
import 'package:ipala/widgets/custom_text_form_field.dart';

class RatingsScreen extends GetWidget<RatingsController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
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
                                  padding:
                                      getPadding(left: 24, top: 101, right: 24),
                                  child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        CustomImageView(
                                            imagePath:
                                                ImageConstant.imgFeedbackconcep,
                                            height: getVerticalSize(338.00),
                                            width: getHorizontalSize(326.00)),
                                        Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              CustomImageView(
                                                  svgPath:
                                                      ImageConstant.imgStar,
                                                  height:
                                                      getVerticalSize(32.00),
                                                  width:
                                                      getHorizontalSize(30.00)),
                                              CustomImageView(
                                                  svgPath:
                                                      ImageConstant.imgStar,
                                                  height:
                                                      getVerticalSize(32.00),
                                                  width:
                                                      getHorizontalSize(30.00),
                                                  margin: getMargin(left: 9)),
                                              CustomImageView(
                                                  svgPath:
                                                      ImageConstant.imgStar,
                                                  height:
                                                      getVerticalSize(32.00),
                                                  width:
                                                      getHorizontalSize(30.00),
                                                  margin: getMargin(left: 9)),
                                              CustomImageView(
                                                  svgPath:
                                                      ImageConstant.imgStar,
                                                  height:
                                                      getVerticalSize(32.00),
                                                  width:
                                                      getHorizontalSize(30.00),
                                                  margin: getMargin(left: 9)),
                                              CustomImageView(
                                                  svgPath:
                                                      ImageConstant.imgStar,
                                                  height:
                                                      getVerticalSize(32.00),
                                                  width:
                                                      getHorizontalSize(30.00),
                                                  margin: getMargin(left: 9))
                                            ]),
                                        Container(
                                            width: getHorizontalSize(278.00),
                                            margin: getMargin(top: 16),
                                            child: Text(
                                                "msg_rate_your_experience".tr,
                                                maxLines: null,
                                                textAlign: TextAlign.center,
                                                style: AppStyle
                                                    .txtJosefinSansRomanRegular16Black900e5
                                                    .copyWith(
                                                        height: getVerticalSize(
                                                            1.41)))),
                                        CustomTextFormField(
                                            width: 327,
                                            focusNode: FocusNode(),
                                            controller: controller
                                                .group627241Controller,
                                            hintText: "lbl_leave_a_comment".tr,
                                            margin: getMargin(top: 19),
                                            padding:
                                                TextFormFieldPadding.PaddingT18,
                                            textInputAction:
                                                TextInputAction.done),
                                        CustomButton(
                                            height: 56,
                                            width: 327,
                                            text: "lbl_sumbit".tr.toUpperCase(),
                                            margin:
                                                getMargin(top: 24, bottom: 47),
                                            padding: ButtonPadding.PaddingAll19,
                                            fontStyle: ButtonFontStyle
                                                .JosefinSansRomanSemiBold14,
                                            onTap: onTapSumbit)
                                      ]))))
                    ]))));
  }

  onTapSumbit() {
    Get.toNamed(AppRoutes.successScreen);
  }
}
