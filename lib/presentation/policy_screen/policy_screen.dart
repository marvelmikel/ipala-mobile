import 'controller/policy_controller.dart';
import 'package:flutter/material.dart';
import 'package:ipala/core/app_export.dart';

class PolicyScreen extends GetWidget<PolicyController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: size.width,
                padding: getPadding(
                  left: 30,
                  top: 17,
                  right: 30,
                  bottom: 17,
                ),
                decoration: AppDecoration.fillRed100.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder16,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: getVerticalSize(
                        5.00,
                      ),
                      width: getHorizontalSize(
                        47.00,
                      ),
                      margin: getMargin(
                        left: 127,
                      ),
                      decoration: BoxDecoration(
                        color: ColorConstant.black900E5,
                        borderRadius: BorderRadius.circular(
                          getHorizontalSize(
                            2.00,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        top: 43,
                      ),
                      child: Text(
                        "msg_terms_of_service".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtJosefinSansRomanSemiBold20.copyWith(
                          height: getVerticalSize(
                            1.30,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: getHorizontalSize(
                        268.00,
                      ),
                      margin: getMargin(
                        top: 8,
                      ),
                      child: Text(
                        "msg_lorem_ipsum_dolor".tr,
                        maxLines: null,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtJosefinSansRomanMedium14Black90001
                            .copyWith(
                          height: getVerticalSize(
                            1.30,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        top: 17,
                      ),
                      child: Text(
                        "lbl_return_policy".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtJosefinSansRomanSemiBold20.copyWith(
                          height: getVerticalSize(
                            1.30,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        top: 8,
                        bottom: 74,
                      ),
                      child: Text(
                        "msg_lorem_ipsum_dolor2".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtJosefinSansRomanMedium14Black90001
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
    );
  }
}
