import '../notification_screen/widgets/notification_item_widget.dart';
import 'controller/notification_controller.dart';
import 'models/notification_item_model.dart';
import 'package:flutter/material.dart';
import 'package:ipala/core/app_export.dart';
import 'package:ipala/presentation/homepage_page/homepage_page.dart';
import 'package:ipala/widgets/app_bar/appbar_image.dart';
import 'package:ipala/widgets/app_bar/custom_app_bar.dart';
import 'package:ipala/widgets/custom_bottom_bar.dart';

class NotificationScreen extends GetWidget<NotificationController> {
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
                    onTap: onTapArrowleft5),
                actions: [
                  AppbarImage(
                      height: getSize(24.00),
                      width: getSize(24.00),
                      svgPath: ImageConstant.imgNotification,
                      margin: getMargin(left: 24, right: 24))
                ]),
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    child: Padding(
                        padding: getPadding(left: 1, top: 25, bottom: 5),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                  padding: getPadding(left: 23),
                                  child: Text("lbl_notification".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtJosefinSansRomanSemiBold24
                                          .copyWith(
                                              height: getVerticalSize(1.30)))),
                              Padding(
                                  padding:
                                      getPadding(left: 23, top: 14, right: 81),
                                  child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                            padding:
                                                getPadding(top: 2, bottom: 5),
                                            child: Text("lbl_price".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtJosefinSansRomanMedium14
                                                    .copyWith(
                                                        height: getVerticalSize(
                                                            1.30)))),
                                        Container(
                                            width: getHorizontalSize(18.00),
                                            margin: getMargin(left: 8),
                                            padding: getPadding(
                                                left: 4,
                                                top: 1,
                                                right: 4,
                                                bottom: 1),
                                            decoration: AppDecoration
                                                .txtFillRed100
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .txtRoundedBorder2),
                                            child: Text("lbl_42".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtMontserratRomanMedium14
                                                    .copyWith(
                                                        height: getVerticalSize(
                                                            1.07)))),
                                        Spacer(),
                                        Padding(
                                            padding:
                                                getPadding(top: 2, bottom: 5),
                                            child: Text("lbl_recommedation".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtJosefinSansRomanMedium14
                                                    .copyWith(
                                                        height: getVerticalSize(
                                                            1.30)))),
                                        Container(
                                            width: getHorizontalSize(17.00),
                                            margin: getMargin(left: 8),
                                            padding: getPadding(
                                                left: 4,
                                                top: 1,
                                                right: 4,
                                                bottom: 1),
                                            decoration: AppDecoration
                                                .txtFillDeeporange600
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .txtRoundedBorder2),
                                            child: Text("lbl_6".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtMontserratRomanMedium14Gray100
                                                    .copyWith(
                                                        height: getVerticalSize(
                                                            1.07))))
                                      ])),
                              Container(
                                  width: getHorizontalSize(374.00),
                                  margin: getMargin(top: 15),
                                  padding: getPadding(
                                      left: 24, top: 8, right: 24, bottom: 8),
                                  decoration: AppDecoration.fillRed100,
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Padding(
                                            padding: getPadding(bottom: 2),
                                            child: Text("lbl_today".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtJosefinSansRomanBold18
                                                    .copyWith(
                                                        height: getVerticalSize(
                                                            1.30))))
                                      ])),
                              Align(
                                  alignment: Alignment.centerRight,
                                  child: Container(
                                      height: getVerticalSize(2.00),
                                      width: getHorizontalSize(118.00),
                                      margin: getMargin(right: 84),
                                      decoration: BoxDecoration(
                                          color: ColorConstant.black90001))),
                              Padding(
                                  padding:
                                      getPadding(left: 23, top: 65, right: 65),
                                  child: Obx(() => ListView.separated(
                                      physics: NeverScrollableScrollPhysics(),
                                      shrinkWrap: true,
                                      separatorBuilder: (context, index) {
                                        return SizedBox(
                                            height: getVerticalSize(24.00));
                                      },
                                      itemCount: controller.notificationModelObj
                                          .value.notificationItemList.length,
                                      itemBuilder: (context, index) {
                                        NotificationItemModel model = controller
                                            .notificationModelObj
                                            .value
                                            .notificationItemList[index];
                                        return NotificationItemWidget(model);
                                      })))
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

  onTapArrowleft5() {
    Get.back();
  }
}
