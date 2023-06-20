import '../controller/personal_listing_controller.dart';
import '../models/listgoogle_ten_item_model.dart';
import 'package:flutter/material.dart';
import 'package:ipala/core/app_export.dart';

// ignore: must_be_immutable
class ListgoogleTenItemWidget extends StatelessWidget {
  ListgoogleTenItemWidget(this.listgoogleTenItemModelObj);

  ListgoogleTenItemModel listgoogleTenItemModelObj;

  var controller = Get.find<PersonalListingController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomImageView(
          svgPath: ImageConstant.imgGoogleRedA700,
          height: getSize(
            24.00,
          ),
          width: getSize(
            24.00,
          ),
        ),
        Padding(
          padding: getPadding(
            left: 4,
            top: 3,
            bottom: 6,
          ),
          child: Text(
            "msg_indomie_noodles".tr,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: AppStyle.txtJosefinSansRomanMedium14.copyWith(
              height: getVerticalSize(
                1.30,
              ),
            ),
          ),
        ),
        Spacer(),
        Padding(
          padding: getPadding(
            top: 3,
            bottom: 4,
          ),
          child: Text(
            "lbl_n450".tr,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.left,
            style: AppStyle.txtJosefinSansRomanMedium16Deeporange600.copyWith(
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
