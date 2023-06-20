import '../listing_screen/widgets/listing_item_widget.dart';
import 'controller/listing_controller.dart';
import 'models/listing_item_model.dart';
import 'package:flutter/material.dart';
import 'package:ipala/core/app_export.dart';
import 'package:ipala/presentation/homepage_page/homepage_page.dart';
import 'package:ipala/widgets/app_bar/appbar_image.dart';
import 'package:ipala/widgets/app_bar/appbar_subtitle.dart';
import 'package:ipala/widgets/app_bar/custom_app_bar.dart';
import 'package:ipala/widgets/custom_bottom_bar.dart';
import 'package:ipala/widgets/custom_button.dart';
import 'package:ipala/widgets/custom_drop_down.dart';

class ListingScreen extends GetWidget<ListingController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.gray100,
        appBar: CustomAppBar(
          height: getVerticalSize(
            56.00,
          ),
          leadingWidth: 46,
          leading: AppbarImage(
            height: getSize(
              24.00,
            ),
            width: getSize(
              24.00,
            ),
            svgPath: ImageConstant.imgLocation,
            margin: getMargin(
              left: 22,
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
                left: 28,
                right: 28,
              ),
            ),
          ],
        ),
        body: SizedBox(
          width: size.width,
          child: SingleChildScrollView(
            child: Padding(
              padding: getPadding(
                left: 22,
                top: 19,
                right: 26,
                bottom: 5,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "lbl_listing2".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtJosefinSansRomanSemiBold24.copyWith(
                      height: getVerticalSize(
                        1.30,
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 17,
                    ),
                    child: Text(
                      "lbl_choose_store".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtJosefinSansRomanSemiBold16Black900a2
                          .copyWith(
                        height: getVerticalSize(
                          1.00,
                        ),
                      ),
                    ),
                  ),
                  CustomDropDown(
                    width: 327,
                    focusNode: FocusNode(),
                    icon: Container(
                      margin: getMargin(
                        left: 30,
                        right: 13,
                      ),
                      child: CustomImageView(
                        svgPath: ImageConstant.imgArrowdown,
                      ),
                    ),
                    hintText: "lbl_select_a_store".tr,
                    margin: getMargin(
                      top: 17,
                    ),
                    items: controller.listingModelObj.value.dropdownItemList,
                    onChanged: (value) {
                      controller.onSelected(value);
                    },
                  ),
                  Padding(
                    padding: getPadding(
                      top: 23,
                    ),
                    child: Text(
                      "lbl_select_category".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtJosefinSansRomanSemiBold16Black900a2
                          .copyWith(
                        height: getVerticalSize(
                          1.00,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 16,
                      right: 3,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: getHorizontalSize(
                            104.00,
                          ),
                          padding: getPadding(
                            left: 30,
                            top: 12,
                            right: 35,
                            bottom: 12,
                          ),
                          decoration:
                              AppDecoration.txtOutlineDeeporange600.copyWith(
                            borderRadius: BorderRadiusStyle.txtRoundedBorder12,
                          ),
                          child: Text(
                            "lbl_meat".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style:
                                AppStyle.txtJosefinSansRomanMedium14.copyWith(
                              height: getVerticalSize(
                                1.30,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: getHorizontalSize(
                            104.00,
                          ),
                          padding: getPadding(
                            left: 30,
                            top: 12,
                            right: 34,
                            bottom: 12,
                          ),
                          decoration:
                              AppDecoration.txtOutlineBlack90001.copyWith(
                            borderRadius: BorderRadiusStyle.txtRoundedBorder12,
                          ),
                          child: Text(
                            "lbl_pasta".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style:
                                AppStyle.txtJosefinSansRomanMedium14.copyWith(
                              height: getVerticalSize(
                                1.30,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: getHorizontalSize(
                            104.00,
                          ),
                          padding: getPadding(
                            left: 30,
                            top: 13,
                            right: 34,
                            bottom: 13,
                          ),
                          decoration:
                              AppDecoration.txtOutlineBlack90001.copyWith(
                            borderRadius: BorderRadiusStyle.txtRoundedBorder12,
                          ),
                          child: Text(
                            "lbl_diary".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style:
                                AppStyle.txtJosefinSansRomanMedium14.copyWith(
                              height: getVerticalSize(
                                1.30,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 25,
                    ),
                    child: Text(
                      "lbl_pasta".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtJosefinSansRomanMedium16.copyWith(
                        height: getVerticalSize(
                          1.30,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 19,
                      right: 1,
                    ),
                    child: Obx(
                      () => ListView.separated(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        separatorBuilder: (context, index) {
                          return SizedBox(
                            height: getVerticalSize(
                              24.00,
                            ),
                          );
                        },
                        itemCount: controller
                            .listingModelObj.value.listingItemList.length,
                        itemBuilder: (context, index) {
                          ListingItemModel model = controller
                              .listingModelObj.value.listingItemList[index];
                          return ListingItemWidget(
                            model,
                          );
                        },
                      ),
                    ),
                  ),
                  Container(
                    height: getVerticalSize(
                      2.00,
                    ),
                    width: getHorizontalSize(
                      321.00,
                    ),
                    margin: getMargin(
                      left: 2,
                      top: 24,
                    ),
                    decoration: BoxDecoration(
                      color: ColorConstant.black9000c,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 15,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "lbl_total_price".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle
                                  .txtJosefinSansRomanSemiBold14Black900e5
                                  .copyWith(
                                height: getVerticalSize(
                                  1.40,
                                ),
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                top: 8,
                              ),
                              child: Text(
                                "lbl_16_items".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle
                                    .txtJosefinSansRomanSemiBold14Black9007e
                                    .copyWith(
                                  height: getVerticalSize(
                                    1.40,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: getPadding(
                            top: 11,
                            bottom: 10,
                          ),
                          child: Text(
                            "lbl_n12_250".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle
                                .txtJosefinSansRomanSemiBold14Black900e5
                                .copyWith(
                              height: getVerticalSize(
                                1.40,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  CustomButton(
                    height: 52,
                    width: 327,
                    text: "lbl_view_list".tr.toUpperCase(),
                    margin: getMargin(
                      top: 19,
                    ),
                    padding: ButtonPadding.PaddingAll16,
                    fontStyle:
                        ButtonFontStyle.JosefinSansRomanSemiBold16Gray200,
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
