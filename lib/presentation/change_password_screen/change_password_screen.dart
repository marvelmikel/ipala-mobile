import 'controller/change_password_controller.dart';
import 'package:flutter/material.dart';
import 'package:ipala/core/app_export.dart';
import 'package:ipala/core/utils/validation_functions.dart';
import 'package:ipala/widgets/custom_text_form_field.dart';

class ChangePasswordScreen extends GetWidget<ChangePasswordController> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: ColorConstant.gray100,
        body: Form(
          key: _formKey,
          child: Container(
            width: size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  child: SingleChildScrollView(
                    child: Container(
                      width: size.width,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            width: size.width,
                            padding: getPadding(
                              left: 107,
                              right: 107,
                            ),
                            decoration: AppDecoration.fillDeeporange600,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant
                                      .imgIpalalogo2removebgpreview,
                                  height: getVerticalSize(
                                    78.00,
                                  ),
                                  width: getHorizontalSize(
                                    160.00,
                                  ),
                                  margin: getMargin(
                                    top: 49,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: getPadding(
                                left: 24,
                                top: 29,
                              ),
                              child: Text(
                                "lbl_change_password".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style:
                                    AppStyle.txtJosefinSansRomanBold32.copyWith(
                                  height: getVerticalSize(
                                    1.30,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: getPadding(
                                left: 24,
                                top: 1,
                              ),
                              child: Text(
                                "msg_enter_a_new_password".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle
                                    .txtJosefinSansRomanRegular16Black900e5
                                    .copyWith(
                                  height: getVerticalSize(
                                    1.30,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Obx(
                            () => CustomTextFormField(
                              width: 327,
                              focusNode: FocusNode(),
                              controller: controller.group627241Controller,
                              hintText: "lbl_password".tr,
                              margin: getMargin(
                                top: 26,
                              ),
                              textInputType: TextInputType.visiblePassword,
                              suffix: InkWell(
                                onTap: () {
                                  controller.isShowPassword.value =
                                      !controller.isShowPassword.value;
                                },
                                child: Container(
                                  margin: getMargin(
                                    left: 30,
                                    top: 14,
                                    right: 18,
                                    bottom: 20,
                                  ),
                                  child: CustomImageView(
                                    svgPath: controller.isShowPassword.value
                                        ? ImageConstant.imgEye
                                        : ImageConstant.imgEye,
                                  ),
                                ),
                              ),
                              suffixConstraints: BoxConstraints(
                                maxHeight: getVerticalSize(
                                  56.00,
                                ),
                              ),
                              validator: (value) {
                                if (value == null ||
                                    (!isValidPassword(value,
                                        isRequired: true))) {
                                  return "Please enter valid password";
                                }
                                return null;
                              },
                              isObscureText: !controller.isShowPassword.value,
                            ),
                          ),
                          Obx(
                            () => CustomTextFormField(
                              width: 327,
                              focusNode: FocusNode(),
                              controller: controller.group627242Controller,
                              hintText: "msg_confirm_password".tr,
                              margin: getMargin(
                                top: 24,
                              ),
                              textInputAction: TextInputAction.done,
                              textInputType: TextInputType.visiblePassword,
                              suffix: InkWell(
                                onTap: () {
                                  controller.isShowPassword1.value =
                                      !controller.isShowPassword1.value;
                                },
                                child: Container(
                                  margin: getMargin(
                                    left: 30,
                                    top: 14,
                                    right: 18,
                                    bottom: 20,
                                  ),
                                  child: CustomImageView(
                                    svgPath: controller.isShowPassword1.value
                                        ? ImageConstant.imgEye
                                        : ImageConstant.imgEye,
                                  ),
                                ),
                              ),
                              suffixConstraints: BoxConstraints(
                                maxHeight: getVerticalSize(
                                  56.00,
                                ),
                              ),
                              validator: (value) {
                                if (value == null ||
                                    (!isValidPassword(value,
                                        isRequired: true))) {
                                  return "Please enter valid password";
                                }
                                return null;
                              },
                              isObscureText: !controller.isShowPassword1.value,
                            ),
                          ),
                          Container(
                            width: getHorizontalSize(
                              327.00,
                            ),
                            margin: getMargin(
                              top: 24,
                            ),
                            padding: getPadding(
                              left: 110,
                              top: 17,
                              right: 100,
                              bottom: 17,
                            ),
                            decoration:
                                AppDecoration.txtFillDeeporange600.copyWith(
                              borderRadius:
                                  BorderRadiusStyle.txtRoundedBorder16,
                            ),
                            child: Text(
                              "lbl_continue".tr.toUpperCase(),
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtMontserratSemiBold14.copyWith(
                                height: getVerticalSize(
                                  1.15,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              top: 343,
                              bottom: 37,
                            ),
                            child: Text(
                              "lbl_learn_more".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtJosefinSansRomanRegular14
                                  .copyWith(
                                height: getVerticalSize(
                                  1.40,
                                ),
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
