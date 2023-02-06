import '../store_homepage_screen/widgets/store_homepage_item_widget.dart';
import 'controller/store_homepage_controller.dart';
import 'models/store_homepage_item_model.dart';
import 'package:flutter/material.dart';
import 'package:ipala/core/app_export.dart';
import 'package:ipala/presentation/homepage_page/homepage_page.dart';
import 'package:ipala/widgets/app_bar/appbar_image.dart';
import 'package:ipala/widgets/app_bar/custom_app_bar.dart';
import 'package:ipala/widgets/custom_bottom_bar.dart';
import 'package:ipala/widgets/custom_button.dart';

class StoreHomepageScreen extends GetWidget<StoreHomepageController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray100,
            appBar: CustomAppBar(
                height: getVerticalSize(56.00),
                leadingWidth: 45,
                leading: AppbarImage(
                    height: getSize(24.00),
                    width: getSize(24.00),
                    svgPath: ImageConstant.imgArrowleftBlack9000224x24,
                    margin: getMargin(left: 21),
                    onTap: onTapArrowleft2),
                actions: [
                  AppbarImage(
                      height: getSize(24.00),
                      width: getSize(24.00),
                      svgPath: ImageConstant.imgNotification,
                      margin: getMargin(left: 27, right: 27))
                ]),
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    child: Padding(
                        padding:
                            getPadding(left: 21, top: 16, right: 21, bottom: 5),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                  padding: getPadding(left: 1, right: 7),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Text("lbl_nice_and_tees".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtJosefinSansRomanSemiBold24
                                                      .copyWith(
                                                          height:
                                                              getVerticalSize(
                                                                  1.30))),
                                              Padding(
                                                  padding: getPadding(top: 10),
                                                  child: Row(children: [
                                                    Padding(
                                                        padding: getPadding(
                                                            bottom: 3),
                                                        child: Text(
                                                            "lbl_stand_alone_fin"
                                                                .tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtJosefinSansRomanRegular12
                                                                .copyWith(
                                                                    height: getVerticalSize(
                                                                        1.30)))),
                                                    Card(
                                                        clipBehavior:
                                                            Clip.antiAlias,
                                                        elevation: 0,
                                                        margin:
                                                            getMargin(left: 8),
                                                        color: ColorConstant
                                                            .gray100,
                                                        shape: RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadiusStyle
                                                                    .roundedBorder2),
                                                        child: Container(
                                                            height:
                                                                getVerticalSize(
                                                                    16.00),
                                                            width:
                                                                getHorizontalSize(
                                                                    19.00),
                                                            padding: getPadding(
                                                                left: 3,
                                                                top: 1,
                                                                right: 3,
                                                                bottom: 1),
                                                            decoration: AppDecoration
                                                                .fillGray100
                                                                .copyWith(
                                                                    borderRadius:
                                                                        BorderRadiusStyle
                                                                            .roundedBorder2),
                                                            child: Stack(
                                                                children: [
                                                                  CustomImageView(
                                                                      imagePath:
                                                                          ImageConstant
                                                                              .imgRectangle346328513x13,
                                                                      height: getSize(
                                                                          13.00),
                                                                      width: getSize(
                                                                          13.00),
                                                                      radius: BorderRadius.circular(
                                                                          getHorizontalSize(
                                                                              4.00)),
                                                                      alignment:
                                                                          Alignment
                                                                              .topCenter)
                                                                ])))
                                                  ]))
                                            ]),
                                        CustomButton(
                                            height: 26,
                                            width: 91,
                                            text: "lbl_follow".tr,
                                            margin: getMargin(
                                                left: 2,
                                                top: 11,
                                                right: 2,
                                                bottom: 12),
                                            shape: ButtonShape.CircleBorder13)
                                      ])),
                              CustomImageView(
                                  imagePath: ImageConstant.imgRectangle3463276,
                                  height: getVerticalSize(200.00),
                                  width: getHorizontalSize(327.00),
                                  radius: BorderRadius.circular(
                                      getHorizontalSize(16.00)),
                                  margin:
                                      getMargin(left: 1, top: 16, right: 1)),
                              Padding(
                                  padding: getPadding(left: 3, top: 20),
                                  child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                            padding: getPadding(top: 2),
                                            child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Text(
                                                      "msg_opening_hours_6_00"
                                                          .tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtJosefinSansRomanSemiBold14Black900e5
                                                          .copyWith(
                                                              height:
                                                                  getVerticalSize(
                                                                      1.30))),
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 6),
                                                      child: RichText(
                                                          text: TextSpan(
                                                              children: [
                                                                TextSpan(
                                                                    text:
                                                                        "lbl_abuja_gwarinpa4"
                                                                            .tr,
                                                                    style: TextStyle(
                                                                        color: ColorConstant.fromHex(
                                                                            "#e50f0400"),
                                                                        fontSize:
                                                                            getFontSize(
                                                                                12),
                                                                        fontFamily:
                                                                            'Josefin Sans',
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .w400,
                                                                        height:
                                                                            getVerticalSize(1.07))),
                                                                TextSpan(
                                                                    text: " ",
                                                                    style: TextStyle(
                                                                        color: ColorConstant.fromHex(
                                                                            "#e50f0400"),
                                                                        fontSize:
                                                                            getFontSize(
                                                                                24),
                                                                        fontFamily:
                                                                            'Josefin Sans',
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .w400,
                                                                        height:
                                                                            getVerticalSize(1.07)))
                                                              ]),
                                                          textAlign:
                                                              TextAlign.left)),
                                                  Container(
                                                      height: getVerticalSize(
                                                          15.00),
                                                      width: getHorizontalSize(
                                                          281.00),
                                                      margin: getMargin(
                                                          top: 2, bottom: 10),
                                                      child: Stack(
                                                          alignment:
                                                              Alignment.center,
                                                          children: [
                                                            Align(
                                                                alignment: Alignment
                                                                    .bottomLeft,
                                                                child: Padding(
                                                                    padding: getPadding(
                                                                        left:
                                                                            74),
                                                                    child: Row(
                                                                        children: [
                                                                          CustomImageView(
                                                                              svgPath: ImageConstant.imgSearchBlack90002,
                                                                              height: getSize(12.00),
                                                                              width: getSize(12.00)),
                                                                          CustomImageView(
                                                                              svgPath: ImageConstant.imgMail,
                                                                              height: getSize(12.00),
                                                                              width: getSize(12.00),
                                                                              margin: getMargin(left: 77))
                                                                        ]))),
                                                            Align(
                                                                alignment:
                                                                    Alignment
                                                                        .center,
                                                                child:
                                                                    Container(
                                                                        height: getVerticalSize(
                                                                            15.00),
                                                                        width: getHorizontalSize(
                                                                            281.00),
                                                                        margin: getMargin(
                                                                            left:
                                                                                20,
                                                                            top:
                                                                                2,
                                                                            right:
                                                                                20,
                                                                            bottom:
                                                                                1),
                                                                        child: Stack(
                                                                            alignment:
                                                                                Alignment.bottomRight,
                                                                            children: [
                                                                              Align(
                                                                                  alignment: Alignment.center,
                                                                                  child: Container(
                                                                                      margin: getMargin(top: 1, bottom: 2),
                                                                                      padding: getPadding(bottom: 40),
                                                                                      child: RichText(
                                                                                          text: TextSpan(children: [
                                                                                            TextSpan(text: "lbl_contact_us".tr, style: TextStyle(color: ColorConstant.fromHex("#e50f0400"), fontSize: getFontSize(12), fontFamily: 'Josefin Sans', fontWeight: FontWeight.w400, height: getVerticalSize(1.07))),
                                                                                            TextSpan(text: "lbl2".tr, style: TextStyle(color: ColorConstant.fromHex("#e50f0400"), fontSize: getFontSize(24), fontFamily: 'Josefin Sans', fontWeight: FontWeight.w400, height: getVerticalSize(1.07))),
                                                                                            TextSpan(text: "lbl_whatsapp".tr, style: TextStyle(color: ColorConstant.fromHex("#e50f0400"), fontSize: getFontSize(12), fontFamily: 'Josefin Sans', fontWeight: FontWeight.w400, height: getVerticalSize(1.07), decoration: TextDecoration.underline)),
                                                                                            TextSpan(text: "lbl2".tr, style: TextStyle(color: ColorConstant.fromHex("#e50f0400"), fontSize: getFontSize(24), fontFamily: 'Josefin Sans', fontWeight: FontWeight.w400, height: getVerticalSize(1.07))),
                                                                                            TextSpan(text: "lbl_email".tr, style: TextStyle(color: ColorConstant.fromHex("#e50f0400"), fontSize: getFontSize(12), fontFamily: 'Josefin Sans', fontWeight: FontWeight.w400, height: getVerticalSize(1.07), decoration: TextDecoration.underline)),
                                                                                            TextSpan(text: "  ".tr, style: TextStyle(color: ColorConstant.fromHex("#e50f0400"), fontSize: getFontSize(12), fontFamily: 'Josefin Sans', fontWeight: FontWeight.w400, height: getVerticalSize(1.07))),
                                                                                            TextSpan(text: "lbl3".tr, style: TextStyle(color: ColorConstant.fromHex("#e50f0400"), fontSize: getFontSize(24), fontFamily: 'Josefin Sans', fontWeight: FontWeight.w400, height: getVerticalSize(1.07))),
                                                                                            TextSpan(text: "lbl_website".tr, style: TextStyle(color: ColorConstant.fromHex("#e50f0400"), fontSize: getFontSize(12), fontFamily: 'Josefin Sans', fontWeight: FontWeight.w400, height: getVerticalSize(1.07), decoration: TextDecoration.underline)),
                                                                                            TextSpan(text: "  ".tr, style: TextStyle(color: ColorConstant.fromHex("#e50f0400"), fontSize: getFontSize(16), fontFamily: 'Josefin Sans', fontWeight: FontWeight.w400, height: getVerticalSize(1.07)))
                                                                                          ]),
                                                                                          textAlign: TextAlign.left))),
                                                                              CustomImageView(svgPath: ImageConstant.imgTicket, height: getSize(12.00), width: getSize(12.00), alignment: Alignment.bottomRight, margin: getMargin(right: 44, bottom: 1))
                                                                            ])))
                                                          ]))
                                                ])),
                                        GestureDetector(
                                            onTap: () {
                                              onTapTxtFrame627294();
                                            },
                                            child: Container(
                                                width: getHorizontalSize(35.00),
                                                margin: getMargin(
                                                    left: 5, bottom: 41),
                                                padding: getPadding(
                                                    left: 2,
                                                    top: 3,
                                                    right: 2,
                                                    bottom: 3),
                                                decoration: AppDecoration
                                                    .txtFillRed100
                                                    .copyWith(
                                                        borderRadius:
                                                            BorderRadiusStyle
                                                                .txtRoundedBorder2),
                                                child: Text("lbl_policy".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtJosefinSansRomanMedium12Black900e5
                                                        .copyWith(
                                                            height:
                                                                getVerticalSize(
                                                                    1.30)))))
                                      ])),
                              Padding(
                                  padding: getPadding(top: 31),
                                  child: Text("lbl_categories".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtJosefinSansRomanSemiBold16
                                          .copyWith(
                                              height: getVerticalSize(1.30)))),
                              Padding(
                                  padding: getPadding(top: 18),
                                  child: Row(children: [
                                    Container(
                                        width: getHorizontalSize(104.00),
                                        padding: getPadding(
                                            left: 30,
                                            top: 12,
                                            right: 34,
                                            bottom: 12),
                                        decoration: AppDecoration
                                            .txtOutlineDeeporange600
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .txtRoundedBorder12),
                                        child: Text("lbl_pasta".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtJosefinSansRomanMedium14
                                                .copyWith(
                                                    height: getVerticalSize(
                                                        1.30)))),
                                    Container(
                                        width: getHorizontalSize(104.00),
                                        margin: getMargin(left: 6),
                                        padding: getPadding(
                                            left: 30,
                                            top: 12,
                                            right: 35,
                                            bottom: 12),
                                        decoration: AppDecoration
                                            .txtOutlineBlack90001
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .txtRoundedBorder12),
                                        child: Text("lbl_meat".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtJosefinSansRomanMedium14
                                                .copyWith(
                                                    height: getVerticalSize(
                                                        1.30)))),
                                    Container(
                                        width: getHorizontalSize(104.00),
                                        margin: getMargin(left: 6),
                                        padding: getPadding(
                                            left: 30,
                                            top: 13,
                                            right: 34,
                                            bottom: 13),
                                        decoration: AppDecoration
                                            .txtOutlineBlack90001
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .txtRoundedBorder12),
                                        child: Text("lbl_diary".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtJosefinSansRomanMedium14
                                                .copyWith(
                                                    height:
                                                        getVerticalSize(1.30))))
                                  ])),
                              Padding(
                                  padding: getPadding(top: 22),
                                  child: Text("lbl_pasta".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtJosefinSansRomanMedium16
                                          .copyWith(
                                              height: getVerticalSize(1.30)))),
                              Padding(
                                  padding: getPadding(top: 19, right: 4),
                                  child: Obx(() => ListView.separated(
                                      physics: NeverScrollableScrollPhysics(),
                                      shrinkWrap: true,
                                      separatorBuilder: (context, index) {
                                        return SizedBox(
                                            height: getVerticalSize(24.00));
                                      },
                                      itemCount: controller
                                          .storeHomepageModelObj
                                          .value
                                          .storeHomepageItemList
                                          .length,
                                      itemBuilder: (context, index) {
                                        StoreHomepageItemModel model =
                                            controller
                                                .storeHomepageModelObj
                                                .value
                                                .storeHomepageItemList[index];
                                        return StoreHomepageItemWidget(model);
                                      }))),
                              Container(
                                  height: getVerticalSize(2.00),
                                  width: getHorizontalSize(321.00),
                                  margin: getMargin(left: 3, top: 16),
                                  decoration: BoxDecoration(
                                      color: ColorConstant.black9000c)),
                              Padding(
                                  padding: getPadding(top: 15, right: 7),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Text("lbl_total_price".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtJosefinSansRomanSemiBold14Black900e5
                                                      .copyWith(
                                                          height:
                                                              getVerticalSize(
                                                                  1.40))),
                                              Padding(
                                                  padding: getPadding(top: 8),
                                                  child: Text("lbl_16_items".tr,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtJosefinSansRomanSemiBold14Black9007e
                                                          .copyWith(
                                                              height:
                                                                  getVerticalSize(
                                                                      1.40))))
                                            ]),
                                        Padding(
                                            padding:
                                                getPadding(top: 11, bottom: 10),
                                            child: Text("lbl_n12_2502".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtJosefinSansRomanSemiBold14Black900e5
                                                    .copyWith(
                                                        height: getVerticalSize(
                                                            1.40))))
                                      ])),
                              CustomButton(
                                  height: 52,
                                  width: 333,
                                  text: "lbl_view_list2".tr.toUpperCase(),
                                  margin: getMargin(top: 20),
                                  padding: ButtonPadding.PaddingAll16,
                                  fontStyle: ButtonFontStyle
                                      .JosefinSansRomanSemiBold16Gray200)
                            ])))),
            bottomNavigationBar:
                CustomBottomBar(onChanged: (BottomBarEnum type) {
              Get.toNamed(getCurrentRoute(type), id: 1);
            })));
  }

  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.homepagePage;
      case BottomBarEnum.Listing:
        return "/";
      case BottomBarEnum.Basket:
        return "/";
      case BottomBarEnum.Profile:
        return "/";
      default:
        return "/";
    }
  }

  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.homepagePage:
        return HomepagePage();
      default:
        return DefaultWidget();
    }
  }

  onTapTxtFrame627294() {
    Get.toNamed(AppRoutes.policyScreen);
  }

  onTapArrowleft2() {
    Get.back();
  }
}
