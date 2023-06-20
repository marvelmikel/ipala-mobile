import '../controller/listing_controller.dart';
import '../models/listing_item_model.dart';
import 'package:flutter/material.dart';
import 'package:ipala/core/app_export.dart';

// ignore: must_be_immutable
class ListingItemWidget extends StatelessWidget {
  ListingItemWidget(this.listingItemModelObj);

  ListingItemModel listingItemModelObj;

  var controller = Get.find<ListingController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgRectangle3463279,
              height: getVerticalSize(
                76.00,
              ),
              width: getHorizontalSize(
                82.00,
              ),
              radius: BorderRadius.circular(
                getHorizontalSize(
                  8.00,
                ),
              ),
            ),
            Padding(
              padding: getPadding(
                left: 16,
                top: 2,
                bottom: 1,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "lbl_spaghetti".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtJosefinSansRomanMedium14.copyWith(
                      height: getVerticalSize(
                        1.30,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: getPadding(
                        top: 5,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: getPadding(
                              top: 1,
                            ),
                            child: Text(
                              "lbl_n450".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle
                                  .txtJosefinSansRomanMedium16Deeporange600
                                  .copyWith(
                                height: getVerticalSize(
                                  1.30,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            width: getHorizontalSize(
                              48.00,
                            ),
                            margin: getMargin(
                              left: 5,
                            ),
                            padding: getPadding(
                              top: 1,
                              bottom: 1,
                            ),
                            decoration: AppDecoration.txtFillRed100.copyWith(
                              borderRadius: BorderRadiusStyle.txtRoundedBorder2,
                            ),
                            child: Text(
                              "lbl_in_stock".tr,
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
                    ),
                  ),
                  Container(
                    margin: getMargin(
                      top: 9,
                      right: 14,
                    ),
                    padding: getPadding(
                      left: 13,
                      top: 5,
                      right: 13,
                      bottom: 5,
                    ),
                    decoration: AppDecoration.fillDeeporange600.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder12,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Padding(
                          padding: getPadding(
                            top: 1,
                          ),
                          child: Text(
                            "lbl4".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtJosefinSansRomanMedium14Gray100
                                .copyWith(
                              height: getVerticalSize(
                                1.30,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 17,
                            bottom: 1,
                          ),
                          child: Text(
                            "lbl_1".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtJosefinSansRomanMedium14Gray100
                                .copyWith(
                              height: getVerticalSize(
                                1.30,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 17,
                            top: 1,
                          ),
                          child: Text(
                            "lbl5".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtJosefinSansRomanMedium14Gray100
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
          ],
        ),
        Padding(
          padding: getPadding(
            top: 30,
            bottom: 33,
          ),
          child: Text(
            "lbl_add_to_list".tr,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: AppStyle.txtJosefinSansRomanMedium12Deeporange6001.copyWith(
              height: getVerticalSize(
                1.30,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
