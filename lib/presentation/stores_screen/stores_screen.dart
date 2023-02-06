import '../stores_screen/widgets/stores_item_widget.dart';
import 'controller/stores_controller.dart';
import 'models/stores_item_model.dart';
import 'package:flutter/material.dart';
import 'package:ipala/core/app_export.dart';
import 'package:ipala/presentation/homepage_page/homepage_page.dart';
import 'package:ipala/widgets/app_bar/appbar_image.dart';
import 'package:ipala/widgets/app_bar/appbar_subtitle.dart';
import 'package:ipala/widgets/app_bar/custom_app_bar.dart';
import 'package:ipala/widgets/custom_bottom_bar.dart';

class StoresScreen extends GetWidget<StoresController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray100,
            appBar: CustomAppBar(
                height: getVerticalSize(56.00),
                leadingWidth: 50,
                leading: AppbarImage(
                    height: getSize(24.00),
                    width: getSize(24.00),
                    svgPath: ImageConstant.imgArrowleftBlack9000224x24,
                    margin: getMargin(left: 26),
                    onTap: onTapArrowleft1),
                centerTitle: true,
                title: Row(children: [
                  AppbarImage(
                      height: getSize(24.00),
                      width: getSize(24.00),
                      svgPath: ImageConstant.imgLocation,
                      margin: getMargin(left: 66)),
                  AppbarSubtitle(
                      text: "lbl_abuja_gwarinpa".tr,
                      margin: getMargin(left: 7, top: 3, bottom: 4))
                ]),
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
                    child: Container(
                        margin:
                            getMargin(left: 24, top: 20, right: 26, bottom: 5),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                  padding: getPadding(left: 1),
                                  child: Text("lbl_stores_near_you".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtJosefinSansRomanSemiBold24
                                          .copyWith(
                                              height: getVerticalSize(1.30)))),
                              Padding(
                                  padding: getPadding(top: 27),
                                  child: Obx(() => ListView.separated(
                                      physics: NeverScrollableScrollPhysics(),
                                      shrinkWrap: true,
                                      separatorBuilder: (context, index) {
                                        return SizedBox(
                                            height: getVerticalSize(16.00));
                                      },
                                      itemCount: controller.storesModelObj.value
                                          .storesItemList.length,
                                      itemBuilder: (context, index) {
                                        StoresItemModel model = controller
                                            .storesModelObj
                                            .value
                                            .storesItemList[index];
                                        return StoresItemWidget(model);
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

  onTapArrowleft1() {
    Get.back();
  }
}
