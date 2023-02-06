import 'controller/profile_controller.dart';
import 'package:flutter/material.dart';
import 'package:ipala/core/app_export.dart';
import 'package:ipala/presentation/homepage_page/homepage_page.dart';
import 'package:ipala/widgets/app_bar/appbar_image.dart';
import 'package:ipala/widgets/app_bar/appbar_subtitle.dart';
import 'package:ipala/widgets/app_bar/custom_app_bar.dart';
import 'package:ipala/widgets/custom_bottom_bar.dart';
import 'package:ipala/widgets/custom_button.dart';

class ProfileScreen extends GetWidget<ProfileController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.gray100,
        appBar: CustomAppBar(
          height: getVerticalSize(
            56.00,
          ),
          leadingWidth: 48,
          leading: AppbarImage(
            height: getSize(
              24.00,
            ),
            width: getSize(
              24.00,
            ),
            svgPath: ImageConstant.imgLocation,
            margin: getMargin(
              left: 24,
            ),
          ),
          title: AppbarSubtitle(
            text: "lbl_abuja_gwarinpa".tr,
            margin: getMargin(
              left: 7,
            ),
          ),
          actions: [
            AppbarImage(
              height: getSize(
                24.00,
              ),
              width: getSize(
                24.00,
              ),
              svgPath: ImageConstant.imgNotification,
              margin: getMargin(
                left: 26,
                right: 26,
              ),
            ),
          ],
        ),
        body: SizedBox(
          width: size.width,
          child: SingleChildScrollView(
            child: Padding(
              padding: getPadding(
                left: 24,
                top: 16,
                right: 24,
                bottom: 5,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "lbl_profile".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtJosefinSansRomanSemiBold24Black90099
                          .copyWith(
                        height: getVerticalSize(
                          1.30,
                        ),
                      ),
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgEllipse26,
                    height: getSize(
                      64.00,
                    ),
                    width: getSize(
                      64.00,
                    ),
                    radius: BorderRadius.circular(
                      getHorizontalSize(
                        32.00,
                      ),
                    ),
                    margin: getMargin(
                      top: 22,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 15,
                    ),
                    child: Text(
                      "msg_johndoe_gmail_com".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtJosefinSansRomanSemiBold14Black90099
                          .copyWith(
                        height: getVerticalSize(
                          1.30,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: getVerticalSize(
                      1.00,
                    ),
                    width: getHorizontalSize(
                      304.00,
                    ),
                    margin: getMargin(
                      top: 23,
                    ),
                    decoration: BoxDecoration(
                      color: ColorConstant.deepOrange60011,
                    ),
                  ),
                  Container(
                    margin: getMargin(
                      top: 23,
                    ),
                    padding: getPadding(
                      left: 8,
                      top: 4,
                      right: 8,
                      bottom: 4,
                    ),
                    decoration: AppDecoration.fillDeeporange50.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder8,
                    ),
                    child: Row(
                      children: [
                        Card(
                          clipBehavior: Clip.antiAlias,
                          elevation: 0,
                          margin: EdgeInsets.all(0),
                          color: ColorConstant.deepOrange60011,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadiusStyle.roundedBorder8,
                          ),
                          child: Container(
                            height: getSize(
                              32.00,
                            ),
                            width: getSize(
                              32.00,
                            ),
                            padding: getPadding(
                              all: 4,
                            ),
                            decoration:
                                AppDecoration.fillDeeporange60011.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder8,
                            ),
                            child: Stack(
                              children: [
                                CustomImageView(
                                  svgPath: ImageConstant.imgLock,
                                  height: getSize(
                                    24.00,
                                  ),
                                  width: getSize(
                                    24.00,
                                  ),
                                  alignment: Alignment.center,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 7,
                            top: 6,
                            bottom: 9,
                          ),
                          child: Text(
                            "lbl_password".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle
                                .txtJosefinSansRomanMedium16Black90001
                                .copyWith(
                              height: getVerticalSize(
                                1.30,
                              ),
                            ),
                          ),
                        ),
                        Spacer(),
                        CustomImageView(
                          svgPath: ImageConstant.imgArrowrightBlack90001,
                          height: getSize(
                            24.00,
                          ),
                          width: getSize(
                            24.00,
                          ),
                          margin: getMargin(
                            top: 4,
                            right: 25,
                            bottom: 4,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: getMargin(
                      top: 24,
                    ),
                    padding: getPadding(
                      left: 8,
                      top: 4,
                      right: 8,
                      bottom: 4,
                    ),
                    decoration: AppDecoration.fillDeeporange50.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder8,
                    ),
                    child: Row(
                      children: [
                        Card(
                          clipBehavior: Clip.antiAlias,
                          elevation: 0,
                          margin: EdgeInsets.all(0),
                          color: ColorConstant.deepOrange60011,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadiusStyle.roundedBorder8,
                          ),
                          child: Container(
                            height: getSize(
                              32.00,
                            ),
                            width: getSize(
                              32.00,
                            ),
                            padding: getPadding(
                              all: 4,
                            ),
                            decoration:
                                AppDecoration.fillDeeporange60011.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder8,
                            ),
                            child: Stack(
                              children: [
                                CustomImageView(
                                  svgPath:
                                      ImageConstant.imgNotificationBlack90001,
                                  height: getSize(
                                    24.00,
                                  ),
                                  width: getSize(
                                    24.00,
                                  ),
                                  alignment: Alignment.center,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 7,
                            top: 6,
                            bottom: 9,
                          ),
                          child: Text(
                            "lbl_notifications".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle
                                .txtJosefinSansRomanMedium16Black90001
                                .copyWith(
                              height: getVerticalSize(
                                1.30,
                              ),
                            ),
                          ),
                        ),
                        Spacer(),
                        CustomImageView(
                          svgPath: ImageConstant.imgArrowrightBlack90001,
                          height: getSize(
                            24.00,
                          ),
                          width: getSize(
                            24.00,
                          ),
                          margin: getMargin(
                            top: 4,
                            right: 25,
                            bottom: 4,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: getMargin(
                      top: 24,
                    ),
                    padding: getPadding(
                      left: 8,
                      top: 4,
                      right: 8,
                      bottom: 4,
                    ),
                    decoration: AppDecoration.fillDeeporange50.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder8,
                    ),
                    child: Row(
                      children: [
                        Card(
                          clipBehavior: Clip.antiAlias,
                          elevation: 0,
                          margin: EdgeInsets.all(0),
                          color: ColorConstant.deepOrange60011,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadiusStyle.roundedBorder8,
                          ),
                          child: Container(
                            height: getSize(
                              32.00,
                            ),
                            width: getSize(
                              32.00,
                            ),
                            padding: getPadding(
                              all: 4,
                            ),
                            decoration:
                                AppDecoration.fillDeeporange60011.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder8,
                            ),
                            child: Stack(
                              children: [
                                CustomImageView(
                                  svgPath: ImageConstant.imgUpload,
                                  height: getSize(
                                    24.00,
                                  ),
                                  width: getSize(
                                    24.00,
                                  ),
                                  alignment: Alignment.center,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 7,
                            top: 8,
                            bottom: 7,
                          ),
                          child: Text(
                            "lbl_upgrade".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle
                                .txtJosefinSansRomanMedium16Black90001
                                .copyWith(
                              height: getVerticalSize(
                                1.30,
                              ),
                            ),
                          ),
                        ),
                        Spacer(),
                        CustomImageView(
                          svgPath: ImageConstant.imgArrowrightBlack90001,
                          height: getSize(
                            24.00,
                          ),
                          width: getSize(
                            24.00,
                          ),
                          margin: getMargin(
                            top: 4,
                            right: 25,
                            bottom: 4,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: getMargin(
                      top: 24,
                    ),
                    padding: getPadding(
                      left: 8,
                      top: 4,
                      right: 8,
                      bottom: 4,
                    ),
                    decoration: AppDecoration.fillDeeporange50.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder8,
                    ),
                    child: Row(
                      children: [
                        Card(
                          clipBehavior: Clip.antiAlias,
                          elevation: 0,
                          margin: EdgeInsets.all(0),
                          color: ColorConstant.deepOrange60011,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadiusStyle.roundedBorder8,
                          ),
                          child: Container(
                            height: getSize(
                              32.00,
                            ),
                            width: getSize(
                              32.00,
                            ),
                            padding: getPadding(
                              all: 4,
                            ),
                            decoration:
                                AppDecoration.fillDeeporange60011.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder8,
                            ),
                            child: Stack(
                              children: [
                                CustomImageView(
                                  svgPath: ImageConstant.imgInfo,
                                  height: getSize(
                                    24.00,
                                  ),
                                  width: getSize(
                                    24.00,
                                  ),
                                  alignment: Alignment.center,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 7,
                            top: 6,
                            bottom: 9,
                          ),
                          child: Text(
                            "lbl_about".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle
                                .txtJosefinSansRomanMedium16Black90001
                                .copyWith(
                              height: getVerticalSize(
                                1.30,
                              ),
                            ),
                          ),
                        ),
                        Spacer(),
                        CustomImageView(
                          svgPath: ImageConstant.imgArrowrightBlack90001,
                          height: getSize(
                            24.00,
                          ),
                          width: getSize(
                            24.00,
                          ),
                          margin: getMargin(
                            top: 4,
                            right: 25,
                            bottom: 4,
                          ),
                        ),
                      ],
                    ),
                  ),
                  CustomButton(
                    height: 56,
                    width: 264,
                    text: "lbl_logout".tr.toUpperCase(),
                    margin: getMargin(
                      top: 142,
                    ),
                    padding: ButtonPadding.PaddingAll19,
                    fontStyle: ButtonFontStyle.JosefinSansRomanSemiBold14,
                  ),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: CustomBottomBar(
          onChanged: (BottomBarEnum type) {
            Get.toNamed(getCurrentRoute(type), id: 1);
          },
        ),
      ),
    );
  }

  ///Handling route based on bottom click actions
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

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.homepagePage:
        return HomepagePage();
      default:
        return DefaultWidget();
    }
  }
}
