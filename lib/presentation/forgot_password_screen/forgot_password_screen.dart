import 'controller/forgot_password_controller.dart';
import 'package:flutter/material.dart';
import 'package:ipala/core/app_export.dart';
import 'package:ipala/core/utils/validation_functions.dart';
import 'package:ipala/widgets/custom_button.dart';
import 'package:ipala/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class ForgotPasswordScreen extends GetWidget<ForgotPasswordController> {
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
                          Container(
                              width: size.width,
                              padding: getPadding(left: 107, right: 107),
                              decoration: AppDecoration.fillDeeporange600,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    CustomImageView(
                                        imagePath: ImageConstant
                                            .imgIpalalogo2removebgpreview,
                                        height: getVerticalSize(78.00),
                                        width: getHorizontalSize(160.00),
                                        margin: getMargin(top: 4))
                                  ])),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: getPadding(left: 24, top: 29),
                                  child: Text("lbl_forgot_password".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtJosefinSansRomanBold32
                                          .copyWith(
                                              height: getVerticalSize(1.30))))),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                  width: getHorizontalSize(293.00),
                                  margin: getMargin(left: 24, top: 6),
                                  child: Text("msg_don_t_worry_enter".tr,
                                      maxLines: null,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtJosefinSansRomanRegular16Black900e5
                                          .copyWith(
                                              height: getVerticalSize(1.30))))),
                          CustomTextFormField(
                              width: 327,
                              focusNode: FocusNode(),
                              controller: controller.group627241Controller,
                              hintText: "lbl_email_address".tr,
                              margin: getMargin(top: 23),
                              padding: TextFormFieldPadding.PaddingT18,
                              textInputAction: TextInputAction.done,
                              textInputType: TextInputType.emailAddress,
                              validator: (value) {
                                if (value == null ||
                                    (!isValidEmail(value, isRequired: true))) {
                                  return "Please enter valid email";
                                }
                                return null;
                              }),
                          CustomButton(
                              height: 56,
                              width: 326,
                              text: "lbl_continue".tr.toUpperCase(),
                              margin: getMargin(top: 24),
                              padding: ButtonPadding.PaddingAll19,
                              fontStyle:
                                  ButtonFontStyle.JosefinSansRomanSemiBold14,
                              onTap: onTapContinue),
                          Spacer(),
                          Padding(
                              padding: getPadding(bottom: 35),
                              child: Text("lbl_learn_more".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtJosefinSansRomanRegular14
                                      .copyWith(
                                          height: getVerticalSize(1.40),
                                          decoration:
                                              TextDecoration.underline)))
                        ])))));
  }

  onTapContinue() {
    Get.toNamed(AppRoutes.verifyPasswordScreen);
  }
}
