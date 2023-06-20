import '../homepage_page/widgets/listrectangle3463297_item_widget.dart';
import '../homepage_page/widgets/listrectangle3463297_one_item_widget.dart';
import '../homepage_page/widgets/listrectangle3463302_one_item_widget.dart';
import 'controller/homepage_controller.dart';
import 'models/homepage_model.dart';
import 'models/listrectangle3463297_item_model.dart';
import 'models/listrectangle3463297_one_item_model.dart';
import 'models/listrectangle3463302_one_item_model.dart';
import 'package:flutter/material.dart';
import 'package:ipala/core/app_export.dart';
import 'package:ipala/widgets/app_bar/appbar_image.dart';
import 'package:ipala/widgets/app_bar/appbar_subtitle.dart';
import 'package:ipala/widgets/app_bar/custom_app_bar.dart';
import 'package:ipala/widgets/custom_button.dart';
import 'package:ipala/widgets/custom_search_view.dart';

// ignore_for_file: must_be_immutable
class HomepagePage extends StatelessWidget {
  HomepageController controller =
      Get.put(HomepageController(HomepageModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: ColorConstant.gray10001,
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
              bottom: 8,
            ),
          ),
          title: AppbarSubtitle(
            text: "lbl_abuja_gwarinpa".tr,
            margin: getMargin(
              left: 8,
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
                left: 24,
                top: 8,
                right: 24,
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
                top: 14,
                right: 24,
                bottom: 5,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CustomSearchView(
                    width: 327,
                    focusNode: FocusNode(),
                    controller: controller.frame627382Controller,
                    hintText: "msg_search_by_name".tr,
                    prefix: Container(
                      margin: getMargin(
                        left: 18,
                        top: 24,
                        right: 8,
                        bottom: 24,
                      ),
                      child: CustomImageView(
                        svgPath: ImageConstant.imgSearch,
                      ),
                    ),
                    prefixConstraints: BoxConstraints(
                      maxHeight: getVerticalSize(
                        65.00,
                      ),
                    ),
                    suffix: Padding(
                      padding: EdgeInsets.only(
                        right: getHorizontalSize(
                          15.00,
                        ),
                      ),
                      child: IconButton(
                        onPressed: () {
                          controller.frame627382Controller.clear;
                        },
                        icon: Icon(
                          Icons.clear,
                          color: Colors.grey.shade600,
                        ),
                      ),
                    ),
                    suffixConstraints: BoxConstraints(
                      maxHeight: getVerticalSize(
                        65.00,
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 24,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Card(
                          clipBehavior: Clip.antiAlias,
                          elevation: 0,
                          margin: EdgeInsets.all(0),
                          color: ColorConstant.deepOrange600,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadiusStyle.roundedBorder16,
                          ),
                          child: Container(
                            height: getVerticalSize(
                              133.00,
                            ),
                            width: getHorizontalSize(
                              315.00,
                            ),
                            decoration:
                                AppDecoration.fillDeeporange600.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder16,
                            ),
                            child: Stack(
                              alignment: Alignment.bottomLeft,
                              children: [
                                Align(
                                  alignment: Alignment.topRight,
                                  child: Container(
                                    height: getVerticalSize(
                                      108.00,
                                    ),
                                    width: getHorizontalSize(
                                      113.00,
                                    ),
                                    decoration: BoxDecoration(
                                      color: ColorConstant.red10038,
                                      borderRadius: BorderRadius.circular(
                                        getHorizontalSize(
                                          56.00,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.bottomLeft,
                                  child: Container(
                                    height: getVerticalSize(
                                      74.00,
                                    ),
                                    width: getHorizontalSize(
                                      148.00,
                                    ),
                                    margin: getMargin(
                                      left: 10,
                                    ),
                                    decoration: BoxDecoration(
                                      color: ColorConstant.yellow900,
                                      borderRadius: BorderRadius.circular(
                                        getHorizontalSize(
                                          74.00,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                CustomImageView(
                                  svgPath: ImageConstant.imgArrowleft,
                                  height: getSize(
                                    32.00,
                                  ),
                                  width: getSize(
                                    32.00,
                                  ),
                                  alignment: Alignment.bottomRight,
                                  margin: getMargin(
                                    right: 22,
                                    bottom: 12,
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: Container(
                                    width: getHorizontalSize(
                                      157.00,
                                    ),
                                    margin: getMargin(
                                      right: 22,
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: getPadding(
                                            left: 2,
                                          ),
                                          child: Text(
                                            "lbl_get_30_offer".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtJosefinSansRomanSemiBold24WhiteA700
                                                .copyWith(
                                              height: getVerticalSize(
                                                1.00,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: getPadding(
                                            left: 2,
                                            top: 14,
                                          ),
                                          child: Text(
                                            "msg_for_your_order_right".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtJosefinSansRomanRegular14WhiteA700
                                                .copyWith(
                                              height: getVerticalSize(
                                                1.00,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          width: getHorizontalSize(
                                            102.00,
                                          ),
                                          margin: getMargin(
                                            top: 18,
                                          ),
                                          padding: getPadding(
                                            left: 8,
                                            top: 4,
                                            right: 8,
                                            bottom: 4,
                                          ),
                                          decoration: AppDecoration
                                              .fillAmberA200
                                              .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder12,
                                          ),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Padding(
                                                padding: getPadding(
                                                  bottom: 2,
                                                ),
                                                child: Text(
                                                  "lbl_nice_and_tees2".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtJosefinSansRomanMedium14
                                                      .copyWith(
                                                    height: getVerticalSize(
                                                      1.30,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant.imgSatisfiedcaref,
                                  height: getVerticalSize(
                                    109.00,
                                  ),
                                  width: getHorizontalSize(
                                    172.00,
                                  ),
                                  alignment: Alignment.bottomLeft,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          margin: getMargin(
                            left: 20,
                          ),
                          decoration: AppDecoration.fillBlack900e5.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder2,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgSatisfiedcaref98x4,
                                height: getVerticalSize(
                                  98.00,
                                ),
                                width: getHorizontalSize(
                                  4.00,
                                ),
                                margin: getMargin(
                                  top: 35,
                                ),
                              ),
                              Container(
                                height: getVerticalSize(
                                  74.00,
                                ),
                                width: getHorizontalSize(
                                  1.00,
                                ),
                                margin: getMargin(
                                  left: 6,
                                  top: 59,
                                ),
                                decoration: BoxDecoration(
                                  color: ColorConstant.gray800,
                                  borderRadius: BorderRadius.circular(
                                    getHorizontalSize(
                                      37.00,
                                    ),
                                  ),
                                ),
                              ),
                              SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                padding: getPadding(
                                  left: 132,
                                  top: 24,
                                  bottom: 15,
                                ),
                                child: IntrinsicWidth(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: getPadding(
                                          left: 2,
                                        ),
                                        child: Text(
                                          "lbl_get_60_offer".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtJosefinSansRomanSemiBold24WhiteA700
                                              .copyWith(
                                            height: getVerticalSize(
                                              1.00,
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          left: 2,
                                          top: 11,
                                        ),
                                        child: Text(
                                          "msg_for_your_order_right".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtJosefinSansRomanRegular14WhiteA700
                                              .copyWith(
                                            height: getVerticalSize(
                                              1.00,
                                            ),
                                          ),
                                        ),
                                      ),
                                      CustomButton(
                                        height: 26,
                                        width: 103,
                                        text: "lbl_bomas_store".tr,
                                        margin: getMargin(
                                          top: 19,
                                        ),
                                        variant: ButtonVariant.FillGreenA700,
                                        shape: ButtonShape.CircleBorder13,
                                        fontStyle:
                                            ButtonFontStyle.MontserratMedium14,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                height: getVerticalSize(
                                  108.00,
                                ),
                                width: getHorizontalSize(
                                  1.00,
                                ),
                                margin: getMargin(
                                  left: 198,
                                  bottom: 24,
                                ),
                                decoration: BoxDecoration(
                                  color: ColorConstant.red10038,
                                  borderRadius: BorderRadius.circular(
                                    getHorizontalSize(
                                      54.00,
                                    ),
                                  ),
                                ),
                              ),
                              CustomImageView(
                                svgPath: ImageConstant.imgMaterialsymbol,
                                height: getVerticalSize(
                                  32.00,
                                ),
                                width: getHorizontalSize(
                                  1.00,
                                ),
                                margin: getMargin(
                                  left: 257,
                                  top: 89,
                                  bottom: 12,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 25,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: getPadding(
                            top: 1,
                            bottom: 2,
                          ),
                          child: Text(
                            "lbl_stores_near_you2".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style:
                                AppStyle.txtJosefinSansRomanRegular20.copyWith(
                              height: getVerticalSize(
                                1.30,
                              ),
                            ),
                          ),
                        ),
                        CustomImageView(
                          svgPath: ImageConstant.imgArrowright,
                          height: getSize(
                            24.00,
                          ),
                          width: getSize(
                            24.00,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 9,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgRectangle34632761,
                              height: getVerticalSize(
                                122.00,
                              ),
                              width: getHorizontalSize(
                                231.00,
                              ),
                              radius: BorderRadius.circular(
                                getHorizontalSize(
                                  16.00,
                                ),
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                top: 5,
                              ),
                              child: Text(
                                "lbl_ferimansas".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtJosefinSansRomanSemiBold16
                                    .copyWith(
                                  height: getVerticalSize(
                                    1.30,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                top: 9,
                              ),
                              child: Text(
                                "lbl_abuja_jabi".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle
                                    .txtJosefinSansRomanMedium14Deeporange600
                                    .copyWith(
                                  height: getVerticalSize(
                                    1.30,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: IntrinsicWidth(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgRectangle3463276,
                                  height: getVerticalSize(
                                    122.00,
                                  ),
                                  width: getHorizontalSize(
                                    230.00,
                                  ),
                                  radius: BorderRadius.circular(
                                    getHorizontalSize(
                                      16.00,
                                    ),
                                  ),
                                  margin: getMargin(
                                    left: 20,
                                    right: 2,
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    top: 5,
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text(
                                            "lbl_nice_and_tees2".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtJosefinSansRomanSemiBold16
                                                .copyWith(
                                              height: getVerticalSize(
                                                1.30,
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: getPadding(
                                              top: 10,
                                            ),
                                            child: Text(
                                              "lbl_abuja_gwarinpa2".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtJosefinSansRomanMedium14Deeporange600
                                                  .copyWith(
                                                height: getVerticalSize(
                                                  1.30,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      CustomImageView(
                                        svgPath: ImageConstant
                                            .imgLocationDeepOrange600,
                                        height: getSize(
                                          12.00,
                                        ),
                                        width: getSize(
                                          12.00,
                                        ),
                                        margin: getMargin(
                                          left: 89,
                                          top: 27,
                                          bottom: 1,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 30,
                    ),
                    child: Text(
                      "lbl_following".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtJosefinSansRomanRegular20.copyWith(
                        height: getVerticalSize(
                          1.30,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 12,
                    ),
                    child: Text(
                      "lbl_bomas".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtJosefinSansRomanSemiBold16.copyWith(
                        height: getVerticalSize(
                          1.30,
                        ),
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                  Container(
                    height: getVerticalSize(
                      118.00,
                    ),
                    child: Obx(
                      () => ListView.separated(
                        padding: getPadding(
                          top: 11,
                        ),
                        scrollDirection: Axis.horizontal,
                        physics: BouncingScrollPhysics(),
                        separatorBuilder: (context, index) {
                          return SizedBox(
                            height: getVerticalSize(
                              15.00,
                            ),
                          );
                        },
                        itemCount: controller.homepageModelObj.value
                            .listrectangle3463297ItemList.length,
                        itemBuilder: (context, index) {
                          Listrectangle3463297ItemModel model = controller
                              .homepageModelObj
                              .value
                              .listrectangle3463297ItemList[index];
                          return Listrectangle3463297ItemWidget(
                            model,
                          );
                        },
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 28,
                    ),
                    child: Text(
                      "lbl_nice_and_tees3".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtJosefinSansRomanSemiBold16.copyWith(
                        height: getVerticalSize(
                          1.30,
                        ),
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                  Container(
                    height: getVerticalSize(
                      118.00,
                    ),
                    child: Obx(
                      () => ListView.separated(
                        padding: getPadding(
                          top: 11,
                        ),
                        scrollDirection: Axis.horizontal,
                        physics: BouncingScrollPhysics(),
                        separatorBuilder: (context, index) {
                          return SizedBox(
                            height: getVerticalSize(
                              15.00,
                            ),
                          );
                        },
                        itemCount: controller.homepageModelObj.value
                            .listrectangle3463302OneItemList.length,
                        itemBuilder: (context, index) {
                          Listrectangle3463302OneItemModel model = controller
                              .homepageModelObj
                              .value
                              .listrectangle3463302OneItemList[index];
                          return Listrectangle3463302OneItemWidget(
                            model,
                          );
                        },
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 29,
                    ),
                    child: Text(
                      "lbl_amazing".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtJosefinSansRomanSemiBold16.copyWith(
                        height: getVerticalSize(
                          1.30,
                        ),
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                  Container(
                    height: getVerticalSize(
                      117.00,
                    ),
                    child: Obx(
                      () => ListView.separated(
                        padding: getPadding(
                          top: 10,
                        ),
                        scrollDirection: Axis.horizontal,
                        physics: BouncingScrollPhysics(),
                        separatorBuilder: (context, index) {
                          return SizedBox(
                            height: getVerticalSize(
                              15.00,
                            ),
                          );
                        },
                        itemCount: controller.homepageModelObj.value
                            .listrectangle3463297OneItemList.length,
                        itemBuilder: (context, index) {
                          Listrectangle3463297OneItemModel model = controller
                              .homepageModelObj
                              .value
                              .listrectangle3463297OneItemList[index];
                          return Listrectangle3463297OneItemWidget(
                            model,
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
