import 'controller/product_page_controller.dart';
import 'package:flutter/material.dart';
import 'package:ipala/core/app_export.dart';
import 'package:ipala/widgets/app_bar/appbar_image.dart';
import 'package:ipala/widgets/app_bar/appbar_stack.dart';
import 'package:ipala/widgets/app_bar/appbar_title.dart';
import 'package:ipala/widgets/app_bar/custom_app_bar.dart';
import 'package:ipala/widgets/custom_button.dart';
import 'package:ipala/widgets/custom_radio_button.dart';

class ProductPageScreen extends GetWidget<ProductPageController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray100,
            appBar: CustomAppBar(
                height: getVerticalSize(56.00),
                leadingWidth: 48,
                leading: AppbarImage(
                    height: getSize(24.00),
                    width: getSize(24.00),
                    svgPath: ImageConstant.imgArrowleftBlack9000224x24,
                    margin: getMargin(left: 24),
                    onTap: onTapArrowleft4),
                title: AppbarTitle(
                    text: "lbl_nice_and_tees".tr, margin: getMargin(left: 77)),
                actions: [
                  AppbarStack(margin: getMargin(left: 8, top: 5, bottom: 3)),
                  AppbarImage(
                      height: getSize(24.00),
                      width: getSize(24.00),
                      svgPath: ImageConstant.imgNotification,
                      margin: getMargin(left: 75, right: 24))
                ]),
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    child: Padding(
                        padding:
                            getPadding(left: 24, top: 25, right: 24, bottom: 5),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CustomRadioButton(
                                  text: "lbl_pasta".tr,
                                  value: "lbl_pasta".tr,
                                  groupValue: controller.radioGroup.value,
                                  onChange: (value) {
                                    controller.radioGroup.value = value;
                                  }),
                              Container(
                                  height: getVerticalSize(208.00),
                                  width: getHorizontalSize(327.00),
                                  margin: getMargin(top: 27),
                                  child: Stack(
                                      alignment: Alignment.bottomCenter,
                                      children: [
                                        CustomImageView(
                                            imagePath: ImageConstant
                                                .imgRectangle3463279,
                                            height: getVerticalSize(208.00),
                                            width: getHorizontalSize(326.00),
                                            radius: BorderRadius.circular(
                                                getHorizontalSize(16.00)),
                                            alignment: Alignment.center),
                                        Align(
                                            alignment: Alignment.bottomCenter,
                                            child: Container(
                                                height: getVerticalSize(79.00),
                                                width:
                                                    getHorizontalSize(326.00),
                                                decoration: BoxDecoration(
                                                    borderRadius: BorderRadius.only(
                                                        bottomLeft:
                                                            Radius.circular(
                                                                getHorizontalSize(
                                                                    16.00)),
                                                        bottomRight:
                                                            Radius.circular(
                                                                getHorizontalSize(
                                                                    16.00))),
                                                    gradient: LinearGradient(
                                                        begin:
                                                            Alignment(0.5, 0.98),
                                                        end: Alignment(0.49, -0.06),
                                                        colors: [
                                                          ColorConstant
                                                              .black90001,
                                                          ColorConstant
                                                              .black90000
                                                        ]))))
                                      ])),
                              Padding(
                                  padding:
                                      getPadding(left: 3, top: 3, right: 3),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        CustomImageView(
                                            imagePath: ImageConstant
                                                .imgRectangle346327856x75,
                                            height: getVerticalSize(56.00),
                                            width: getHorizontalSize(75.00),
                                            radius: BorderRadius.circular(
                                                getHorizontalSize(8.00))),
                                        CustomImageView(
                                            imagePath: ImageConstant
                                                .imgRectangle346327956x75,
                                            height: getVerticalSize(56.00),
                                            width: getHorizontalSize(75.00),
                                            radius: BorderRadius.circular(
                                                getHorizontalSize(8.00))),
                                        CustomImageView(
                                            imagePath: ImageConstant
                                                .imgRectangle3463280,
                                            height: getVerticalSize(56.00),
                                            width: getHorizontalSize(75.00),
                                            radius: BorderRadius.circular(
                                                getHorizontalSize(8.00))),
                                        CustomImageView(
                                            imagePath: ImageConstant
                                                .imgRectangle3463281,
                                            height: getVerticalSize(56.00),
                                            width: getHorizontalSize(75.00),
                                            radius: BorderRadius.circular(
                                                getHorizontalSize(8.00)))
                                      ])),
                              Padding(
                                  padding: getPadding(top: 24),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                            padding: getPadding(top: 1),
                                            child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Text(
                                                      "msg_goldenpenny_pasta"
                                                          .tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtJosefinSansRomanBold18
                                                          .copyWith(
                                                              height:
                                                                  getVerticalSize(
                                                                      1.30))),
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 5),
                                                      child: RichText(
                                                          text: TextSpan(
                                                              children: [
                                                                TextSpan(
                                                                    text:
                                                                        "lbl_1"
                                                                            .tr,
                                                                    style: TextStyle(
                                                                        color: ColorConstant.fromHex(
                                                                            "#f44a15"),
                                                                        fontSize:
                                                                            getFontSize(
                                                                                14),
                                                                        fontFamily:
                                                                            'Josefin Sans',
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .w500,
                                                                        height:
                                                                            getVerticalSize(1.07))),
                                                                TextSpan(
                                                                    text:
                                                                        "lbl_pack"
                                                                            .tr,
                                                                    style: TextStyle(
                                                                        color: ColorConstant.fromHex(
                                                                            "#f44a15"),
                                                                        fontSize:
                                                                            getFontSize(
                                                                                14),
                                                                        fontFamily:
                                                                            'Josefin Sans',
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .w400,
                                                                        height:
                                                                            getVerticalSize(1.07))),
                                                                TextSpan(
                                                                    text:
                                                                        "lbl_n4502"
                                                                            .tr,
                                                                    style: TextStyle(
                                                                        color: ColorConstant.fromHex(
                                                                            "#f44a15"),
                                                                        fontSize:
                                                                            getFontSize(
                                                                                14),
                                                                        fontFamily:
                                                                            'Josefin Sans',
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .w600,
                                                                        height:
                                                                            getVerticalSize(1.07)))
                                                              ]),
                                                          textAlign:
                                                              TextAlign.left))
                                                ])),
                                        Container(
                                            margin: getMargin(bottom: 16),
                                            padding: getPadding(
                                                left: 13,
                                                top: 5,
                                                right: 13,
                                                bottom: 5),
                                            decoration: AppDecoration
                                                .fillDeeporange600
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder12),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.end,
                                                children: [
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 1),
                                                      child: Text("lbl4".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtJosefinSansRomanMedium14Gray100
                                                              .copyWith(
                                                                  height:
                                                                      getVerticalSize(
                                                                          1.30)))),
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 17, bottom: 1),
                                                      child: Text("lbl_1".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtJosefinSansRomanMedium14Gray100
                                                              .copyWith(
                                                                  height:
                                                                      getVerticalSize(
                                                                          1.30)))),
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 17, top: 1),
                                                      child: Text("lbl5".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtJosefinSansRomanMedium14Gray100
                                                              .copyWith(
                                                                  height:
                                                                      getVerticalSize(
                                                                          1.30))))
                                                ]))
                                      ])),
                              Padding(
                                  padding: getPadding(top: 24),
                                  child: Text("msg_nutritional_food".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtJosefinSansRomanBold18
                                          .copyWith(
                                              height: getVerticalSize(1.30)))),
                              Container(
                                  width: getHorizontalSize(312.00),
                                  margin: getMargin(top: 6),
                                  child: Text("msg_lorem_ipsum_dolor3".tr,
                                      maxLines: null,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtJosefinSansRomanRegular16Black900e5
                                          .copyWith(
                                              height: getVerticalSize(1.40)))),
                              Padding(
                                  padding: getPadding(top: 21),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("lbl_reviews".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtJosefinSansRomanBold18
                                                .copyWith(
                                                    height:
                                                        getVerticalSize(1.30))),
                                        Padding(
                                            padding:
                                                getPadding(top: 4, bottom: 1),
                                            child: Text("lbl_comment".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtJosefinSansRomanRegular12Deeporange600
                                                    .copyWith(
                                                        height: getVerticalSize(
                                                            1.30),
                                                        decoration:
                                                            TextDecoration
                                                                .underline)))
                                      ])),
                              Padding(
                                  padding: getPadding(top: 20),
                                  child: Text("lbl_no_reviews".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtJosefinSansRomanRegular16Black900e5
                                          .copyWith(
                                              height: getVerticalSize(1.40)))),
                              CustomButton(
                                  height: 60,
                                  width: 327,
                                  text: "lbl_add_to_basket".tr.toUpperCase(),
                                  margin: getMargin(top: 86),
                                  padding: ButtonPadding.PaddingAll22,
                                  fontStyle: ButtonFontStyle
                                      .JosefinSansRomanSemiBold14,
                                  onTap: onTapAddtobasket)
                            ]))))));
  }

  onTapAddtobasket() {
    Get.toNamed(AppRoutes.basketScreen);
  }

  onTapArrowleft4() {
    Get.back();
  }
}
