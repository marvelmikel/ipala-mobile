import '../stores_near_you_screen/widgets/listrectangle3463276_item_widget.dart';
import 'controller/stores_near_you_controller.dart';
import 'models/listrectangle3463276_item_model.dart';
import 'package:flutter/material.dart';
import 'package:ipala/core/app_export.dart';
import 'package:ipala/widgets/app_bar/appbar_image.dart';
import 'package:ipala/widgets/app_bar/appbar_subtitle.dart';
import 'package:ipala/widgets/app_bar/custom_app_bar.dart';

class StoresNearYouScreen extends GetWidget<StoresNearYouController> {
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
                    svgPath: ImageConstant.imgArrowleftBlack90002,
                    margin: getMargin(left: 24),
                    onTap: onTapArrowleft),
                title: Row(children: [
                  AppbarImage(
                      height: getSize(24.00),
                      width: getSize(24.00),
                      svgPath: ImageConstant.imgLocation,
                      margin: getMargin(left: 31)),
                  AppbarSubtitle(
                      text: "lbl_abuja_gwarinpa".tr,
                      margin: getMargin(left: 7, top: 3, right: 154, bottom: 4))
                ])),
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    child: Padding(
                        padding:
                            getPadding(left: 24, top: 27, right: 27, bottom: 5),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                  padding: getPadding(left: 4),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text("lbl_stores_near_you".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtJosefinSansRomanSemiBold24
                                                .copyWith(
                                                    height:
                                                        getVerticalSize(1.30))),
                                        CustomImageView(
                                            svgPath: ImageConstant
                                                .imgMenuDeepOrange600,
                                            height: getVerticalSize(13.00),
                                            width: getHorizontalSize(57.00),
                                            margin:
                                                getMargin(top: 4, bottom: 6),
                                            onTap: () {
                                              onTapImgMenu();
                                            })
                                      ])),
                              Padding(
                                  padding: getPadding(top: 27),
                                  child: Obx(() => ListView.separated(
                                      physics: NeverScrollableScrollPhysics(),
                                      shrinkWrap: true,
                                      separatorBuilder: (context, index) {
                                        return SizedBox(
                                            height: getVerticalSize(23.00));
                                      },
                                      itemCount: controller
                                          .storesNearYouModelObj
                                          .value
                                          .listrectangle3463276ItemList
                                          .length,
                                      itemBuilder: (context, index) {
                                        Listrectangle3463276ItemModel model =
                                            controller
                                                    .storesNearYouModelObj
                                                    .value
                                                    .listrectangle3463276ItemList[
                                                index];
                                        return Listrectangle3463276ItemWidget(
                                            model);
                                      })))
                            ]))))));
  }

  onTapImgMenu() {
    Get.offNamed(AppRoutes.homepageContainerScreen);
  }

  onTapArrowleft() {
    Get.back();
  }
}
