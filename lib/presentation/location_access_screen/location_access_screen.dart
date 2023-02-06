import 'controller/location_access_controller.dart';
import 'package:flutter/material.dart';
import 'package:ipala/core/app_export.dart';

class LocationAccessScreen extends GetWidget<LocationAccessController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray100,
            body: Container(
                width: size.width,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          width: size.width,
                          padding: getPadding(left: 107, right: 107),
                          decoration: AppDecoration.fillDeeporange600,
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                CustomImageView(
                                    imagePath: ImageConstant
                                        .imgIpalalogo2removebgpreview,
                                    height: getVerticalSize(80.00),
                                    width: getHorizontalSize(160.00),
                                    margin: getMargin(top: 49))
                              ])),
                      Padding(
                          padding: getPadding(left: 24, top: 33),
                          child: Text("lbl_location_acess".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtJosefinSansRomanBold32
                                  .copyWith(height: getVerticalSize(1.30)))),
                      Container(
                          width: getHorizontalSize(205.00),
                          margin: getMargin(left: 24, top: 15),
                          child: Text("msg_enable_your_location".tr,
                              maxLines: null,
                              textAlign: TextAlign.left,
                              style: AppStyle
                                  .txtJosefinSansRomanRegular16Black900e5
                                  .copyWith(height: getVerticalSize(1.30)))),
                      CustomImageView(
                          imagePath: ImageConstant.imgLocatormarkma,
                          height: getVerticalSize(247.00),
                          width: getHorizontalSize(327.00),
                          alignment: Alignment.center,
                          margin: getMargin(top: 23)),
                      Align(
                          alignment: Alignment.center,
                          child: GestureDetector(
                              onTap: () {
                                onTapTxtPrice();
                              },
                              child: Container(
                                  width: getHorizontalSize(321.00),
                                  margin: getMargin(top: 12, bottom: 5),
                                  padding: getPadding(
                                      left: 70, top: 20, right: 8, bottom: 20),
                                  decoration: AppDecoration.txtFillDeeporange600
                                      .copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .txtRoundedBorder16),
                                  child: Text(
                                      "lbl_allow_location".tr.toUpperCase(),
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtJosefinSansRomanSemiBold14
                                          .copyWith(
                                              height: getVerticalSize(1.40))))))
                    ]))));
  }

  onTapTxtPrice() {
    Get.toNamed(AppRoutes.storesNearYouScreen);
  }
}
