import '../personal_listing_screen/widgets/listgoogle_eight_item_widget.dart';
import '../personal_listing_screen/widgets/listgoogle_item_widget.dart';
import '../personal_listing_screen/widgets/listgoogle_six_item_widget.dart';
import '../personal_listing_screen/widgets/listgoogle_ten_item_widget.dart';
import '../personal_listing_screen/widgets/listgoogle_three_item_widget.dart';
import 'controller/personal_listing_controller.dart';
import 'models/listgoogle_eight_item_model.dart';
import 'models/listgoogle_item_model.dart';
import 'models/listgoogle_six_item_model.dart';
import 'models/listgoogle_ten_item_model.dart';
import 'models/listgoogle_three_item_model.dart';
import 'package:flutter/material.dart';
import 'package:ipala/core/app_export.dart';
import 'package:ipala/widgets/app_bar/appbar_image.dart';
import 'package:ipala/widgets/app_bar/custom_app_bar.dart';
import 'package:ipala/widgets/custom_button.dart';

class PersonalListingScreen extends GetWidget<PersonalListingController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray100,
            appBar: CustomAppBar(
                height: getVerticalSize(56.00),
                leadingWidth: 46,
                leading: AppbarImage(
                    height: getSize(24.00),
                    width: getSize(24.00),
                    svgPath: ImageConstant.imgArrowleftBlack9000224x24,
                    margin: getMargin(left: 22),
                    onTap: onTapArrowleft10),
                actions: [
                  AppbarImage(
                      height: getSize(24.00),
                      width: getSize(24.00),
                      svgPath: ImageConstant.imgNotification,
                      margin: getMargin(left: 26, right: 26))
                ]),
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    child: Padding(
                        padding:
                            getPadding(left: 22, top: 19, right: 26, bottom: 5),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text("lbl_listing2".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtJosefinSansRomanSemiBold24
                                      .copyWith(height: getVerticalSize(1.30))),
                              Padding(
                                  padding: getPadding(top: 20),
                                  child: Text("lbl_pasta".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtJosefinSansRomanMedium16
                                          .copyWith(
                                              height: getVerticalSize(1.30)))),
                              Padding(
                                  padding: getPadding(top: 11, right: 2),
                                  child: Obx(() => ListView.separated(
                                      physics: NeverScrollableScrollPhysics(),
                                      shrinkWrap: true,
                                      separatorBuilder: (context, index) {
                                        return SizedBox(
                                            height: getVerticalSize(4.00));
                                      },
                                      itemCount: controller
                                          .personalListingModelObj
                                          .value
                                          .listgoogleItemList
                                          .length,
                                      itemBuilder: (context, index) {
                                        ListgoogleItemModel model = controller
                                            .personalListingModelObj
                                            .value
                                            .listgoogleItemList[index];
                                        return ListgoogleItemWidget(model);
                                      }))),
                              Container(
                                  height: getVerticalSize(2.00),
                                  width: getHorizontalSize(321.00),
                                  margin: getMargin(top: 12),
                                  decoration: BoxDecoration(
                                      color: ColorConstant.black9000c)),
                              Padding(
                                  padding:
                                      getPadding(left: 1, top: 14, right: 1),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("msg_from_bomas_store".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtJosefinSansRomanMedium12Black9006c
                                                .copyWith(
                                                    height:
                                                        getVerticalSize(1.30))),
                                        RichText(
                                            text: TextSpan(children: [
                                              TextSpan(
                                                  text: "lbl_total".tr,
                                                  style: TextStyle(
                                                      color:
                                                          ColorConstant.fromHex(
                                                              "#e50f0400"),
                                                      fontSize: getFontSize(12),
                                                      fontFamily:
                                                          'Josefin Sans',
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      height: getVerticalSize(
                                                          1.30))),
                                              TextSpan(
                                                  text: "lbl_n12850".tr,
                                                  style: TextStyle(
                                                      color:
                                                          ColorConstant.fromHex(
                                                              "#e50f0400"),
                                                      fontSize: getFontSize(12),
                                                      fontFamily:
                                                          'Josefin Sans',
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      height: getVerticalSize(
                                                          1.30)))
                                            ]),
                                            textAlign: TextAlign.left)
                                      ])),
                              Padding(
                                  padding: getPadding(top: 28),
                                  child: Text("lbl_meat".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtJosefinSansRomanMedium16
                                          .copyWith(
                                              height: getVerticalSize(1.30)))),
                              Padding(
                                  padding: getPadding(top: 11, right: 2),
                                  child: Obx(() => ListView.separated(
                                      physics: NeverScrollableScrollPhysics(),
                                      shrinkWrap: true,
                                      separatorBuilder: (context, index) {
                                        return SizedBox(
                                            height: getVerticalSize(4.00));
                                      },
                                      itemCount: controller
                                          .personalListingModelObj
                                          .value
                                          .listgoogleThreeItemList
                                          .length,
                                      itemBuilder: (context, index) {
                                        ListgoogleThreeItemModel model =
                                            controller
                                                .personalListingModelObj
                                                .value
                                                .listgoogleThreeItemList[index];
                                        return ListgoogleThreeItemWidget(model);
                                      }))),
                              Padding(
                                  padding: getPadding(top: 31),
                                  child: Text("lbl_sea_food".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtJosefinSansRomanMedium16
                                          .copyWith(
                                              height: getVerticalSize(1.30)))),
                              Padding(
                                  padding: getPadding(top: 12, right: 2),
                                  child: Obx(() => ListView.separated(
                                      physics: NeverScrollableScrollPhysics(),
                                      shrinkWrap: true,
                                      separatorBuilder: (context, index) {
                                        return SizedBox(
                                            height: getVerticalSize(3.00));
                                      },
                                      itemCount: controller
                                          .personalListingModelObj
                                          .value
                                          .listgoogleSixItemList
                                          .length,
                                      itemBuilder: (context, index) {
                                        ListgoogleSixItemModel model =
                                            controller
                                                .personalListingModelObj
                                                .value
                                                .listgoogleSixItemList[index];
                                        return ListgoogleSixItemWidget(model);
                                      }))),
                              Padding(
                                  padding: getPadding(top: 31),
                                  child: Text("lbl_sea_food".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtJosefinSansRomanMedium16
                                          .copyWith(
                                              height: getVerticalSize(1.30)))),
                              Padding(
                                  padding: getPadding(top: 12, right: 2),
                                  child: Obx(() => ListView.separated(
                                      physics: NeverScrollableScrollPhysics(),
                                      shrinkWrap: true,
                                      separatorBuilder: (context, index) {
                                        return SizedBox(
                                            height: getVerticalSize(4.00));
                                      },
                                      itemCount: controller
                                          .personalListingModelObj
                                          .value
                                          .listgoogleEightItemList
                                          .length,
                                      itemBuilder: (context, index) {
                                        ListgoogleEightItemModel model =
                                            controller
                                                .personalListingModelObj
                                                .value
                                                .listgoogleEightItemList[index];
                                        return ListgoogleEightItemWidget(model);
                                      }))),
                              Padding(
                                  padding: getPadding(top: 31),
                                  child: Text("lbl_sea_food".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtJosefinSansRomanMedium16
                                          .copyWith(
                                              height: getVerticalSize(1.30)))),
                              Padding(
                                  padding: getPadding(top: 12, right: 2),
                                  child: Obx(() => ListView.separated(
                                      physics: NeverScrollableScrollPhysics(),
                                      shrinkWrap: true,
                                      separatorBuilder: (context, index) {
                                        return SizedBox(
                                            height: getVerticalSize(4.00));
                                      },
                                      itemCount: controller
                                          .personalListingModelObj
                                          .value
                                          .listgoogleTenItemList
                                          .length,
                                      itemBuilder: (context, index) {
                                        ListgoogleTenItemModel model =
                                            controller
                                                .personalListingModelObj
                                                .value
                                                .listgoogleTenItemList[index];
                                        return ListgoogleTenItemWidget(model);
                                      }))),
                              Container(
                                  height: getVerticalSize(2.00),
                                  width: getHorizontalSize(327.00),
                                  margin: getMargin(top: 16),
                                  decoration: BoxDecoration(
                                      color: ColorConstant.black9000c)),
                              Padding(
                                  padding: getPadding(top: 9),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                            padding: getPadding(top: 1),
                                            child: Text(
                                                "msg_from_amazing_store".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtJosefinSansRomanMedium12Black9006c
                                                    .copyWith(
                                                        height: getVerticalSize(
                                                            1.30)))),
                                        Padding(
                                            padding: getPadding(bottom: 1),
                                            child: RichText(
                                                text: TextSpan(children: [
                                                  TextSpan(
                                                      text: "lbl_total".tr,
                                                      style: TextStyle(
                                                          color: ColorConstant
                                                              .fromHex(
                                                                  "#e50f0400"),
                                                          fontSize:
                                                              getFontSize(12),
                                                          fontFamily:
                                                              'Josefin Sans',
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          height:
                                                              getVerticalSize(
                                                                  1.30))),
                                                  TextSpan(
                                                      text: "lbl_n12850".tr,
                                                      style: TextStyle(
                                                          color: ColorConstant
                                                              .fromHex(
                                                                  "#e50f0400"),
                                                          fontSize:
                                                              getFontSize(12),
                                                          fontFamily:
                                                              'Josefin Sans',
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          height:
                                                              getVerticalSize(
                                                                  1.30)))
                                                ]),
                                                textAlign: TextAlign.left))
                                      ])),
                              Container(
                                  height: getVerticalSize(2.00),
                                  width: getHorizontalSize(327.00),
                                  margin: getMargin(top: 13),
                                  decoration: BoxDecoration(
                                      color: ColorConstant.black9000c)),
                              Padding(
                                  padding: getPadding(top: 15),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("msg_total_from_all_stores".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtJosefinSansRomanMedium12Black9006c
                                                .copyWith(
                                                    height:
                                                        getVerticalSize(1.30))),
                                        RichText(
                                            text: TextSpan(children: [
                                              TextSpan(
                                                  text: "lbl_total".tr,
                                                  style: TextStyle(
                                                      color:
                                                          ColorConstant.fromHex(
                                                              "#e50f0400"),
                                                      fontSize: getFontSize(12),
                                                      fontFamily:
                                                          'Josefin Sans',
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      height: getVerticalSize(
                                                          1.30))),
                                              TextSpan(
                                                  text: "lbl_n26950".tr,
                                                  style: TextStyle(
                                                      color:
                                                          ColorConstant.fromHex(
                                                              "#e50f0400"),
                                                      fontSize: getFontSize(12),
                                                      fontFamily:
                                                          'Josefin Sans',
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      height: getVerticalSize(
                                                          1.30)))
                                            ]),
                                            textAlign: TextAlign.left)
                                      ])),
                              Padding(
                                  padding: getPadding(top: 27),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        CustomButton(
                                            height: 56,
                                            width: 156,
                                            text: "lbl_export".tr.toUpperCase(),
                                            variant: ButtonVariant
                                                .FillDeeporange6006c,
                                            padding: ButtonPadding.PaddingAll19,
                                            fontStyle: ButtonFontStyle
                                                .JosefinSansRomanSemiBold16),
                                        CustomButton(
                                            height: 56,
                                            width: 156,
                                            text: "lbl_send".tr.toUpperCase(),
                                            padding: ButtonPadding.PaddingAll19,
                                            fontStyle: ButtonFontStyle
                                                .JosefinSansRomanSemiBold16Gray200,
                                            onTap: onTapSend)
                                      ]))
                            ]))))));
  }

  onTapSend() {
    Get.toNamed(AppRoutes.ratingsScreen);
  }

  onTapArrowleft10() {
    Get.back();
  }
}
