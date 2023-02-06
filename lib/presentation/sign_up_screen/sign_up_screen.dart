import 'controller/sign_up_controller.dart';
import 'package:flutter/material.dart';
import 'package:ipala/core/app_export.dart';
import 'package:ipala/core/utils/validation_functions.dart';
import 'package:ipala/widgets/custom_button.dart';
import 'package:ipala/widgets/custom_text_form_field.dart';
import 'package:ipala/data/models/register/post_register_req.dart';
import 'package:ipala/data/models/register/post_register_resp.dart';
import 'package:ipala/core/constants/shop.dart';
import 'package:ipala/domain/googleauth/google_auth_helper.dart';
import 'package:ipala/domain/facebookauth/facebook_auth_helper.dart';

// ignore_for_file: must_be_immutable
class SignUpScreen extends GetWidget<SignUpController> {
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
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Container(
                                                width: size.width,
                                                padding: getPadding(
                                                    left: 107, right: 107),
                                                decoration: AppDecoration
                                                    .fillDeeporange600,
                                                child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      CustomImageView(
                                                          imagePath: ImageConstant
                                                              .imgIpalalogo2removebgpreview,
                                                          height:
                                                              getVerticalSize(
                                                                  100.00),
                                                          width:
                                                              getHorizontalSize(
                                                                  160.00),
                                                          margin:
                                                              getMargin(top: 3))
                                                    ])),
                                            Align(
                                                alignment: Alignment.centerLeft,
                                                child: Padding(
                                                    padding: getPadding(
                                                        left: 24, top: 32),
                                                    child: Text(
                                                        "lbl_get_started".tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtJosefinSansRomanBold32
                                                            .copyWith(
                                                                height:
                                                                    getVerticalSize(
                                                                        1.30))))),
                                            Align(
                                                alignment: Alignment.centerLeft,
                                                child: Padding(
                                                    padding: getPadding(
                                                        left: 24, top: 11),
                                                    child: Text(
                                                        "msg_create_an_account"
                                                            .tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtJosefinSansRomanRegular16Black900e5
                                                            .copyWith(
                                                                height:
                                                                    getVerticalSize(
                                                                        1.30))))),
                                            CustomTextFormField(
                                                width: 327,
                                                focusNode: FocusNode(),
                                                controller: controller
                                                    .group627241Controller,
                                                hintText:
                                                    "lbl_email_address".tr,
                                                margin: getMargin(top: 26),
                                                padding: TextFormFieldPadding
                                                    .PaddingT18,
                                                textInputType:
                                                    TextInputType.emailAddress,
                                                validator: (value) {
                                                  if (value == null ||
                                                      (!isValidEmail(value,
                                                          isRequired: true))) {
                                                    return "Please enter valid email";
                                                  }
                                                  return null;
                                                }),
                                            Obx(() => CustomTextFormField(
                                                width: 327,
                                                focusNode: FocusNode(),
                                                controller: controller
                                                    .group627241OneController,
                                                hintText: "lbl_password".tr,
                                                margin: getMargin(top: 24),
                                                textInputType: TextInputType
                                                    .visiblePassword,
                                                suffix: InkWell(
                                                    onTap: () {
                                                      controller.isShowPassword
                                                              .value =
                                                          !controller
                                                              .isShowPassword
                                                              .value;
                                                    },
                                                    child: Container(
                                                        margin: getMargin(
                                                            left: 30,
                                                            top: 14,
                                                            right: 18,
                                                            bottom: 20),
                                                        child: CustomImageView(
                                                            svgPath: controller
                                                                    .isShowPassword
                                                                    .value
                                                                ? ImageConstant
                                                                    .imgEye
                                                                : ImageConstant
                                                                    .imgEye))),
                                                suffixConstraints:
                                                    BoxConstraints(
                                                        maxHeight:
                                                            getVerticalSize(
                                                                56.00)),
                                                validator: (value) {
                                                  if (value == null ||
                                                      (!isValidPassword(value,
                                                          isRequired: true))) {
                                                    return "Please enter valid password";
                                                  }
                                                  return null;
                                                },
                                                isObscureText: !controller
                                                    .isShowPassword.value)),
                                            Obx(() => CustomTextFormField(
                                                width: 327,
                                                focusNode: FocusNode(),
                                                controller: controller
                                                    .group627242Controller,
                                                hintText:
                                                    "msg_confirm_password".tr,
                                                margin: getMargin(top: 24),
                                                textInputAction:
                                                    TextInputAction.done,
                                                textInputType: TextInputType
                                                    .visiblePassword,
                                                suffix: InkWell(
                                                    onTap: () {
                                                      controller.isShowPassword1
                                                              .value =
                                                          !controller
                                                              .isShowPassword1
                                                              .value;
                                                    },
                                                    child: Container(
                                                        margin: getMargin(
                                                            left: 30,
                                                            top: 14,
                                                            right: 18,
                                                            bottom: 20),
                                                        child: CustomImageView(
                                                            svgPath: controller
                                                                    .isShowPassword1
                                                                    .value
                                                                ? ImageConstant
                                                                    .imgEye
                                                                : ImageConstant
                                                                    .imgEye))),
                                                suffixConstraints:
                                                    BoxConstraints(
                                                        maxHeight:
                                                            getVerticalSize(
                                                                56.00)),
                                                validator: (value) {
                                                  if (value == null ||
                                                      (!isValidPassword(value,
                                                          isRequired: true))) {
                                                    return "Please enter valid password";
                                                  }
                                                  return null;
                                                },
                                                isObscureText: !controller
                                                    .isShowPassword1.value)),
                                            GestureDetector(
                                                onTap: () {
                                                  onTapTxtFrame627241();
                                                },
                                                child: Container(
                                                    width: getHorizontalSize(
                                                        327.00),
                                                    margin: getMargin(top: 24),
                                                    padding: getPadding(
                                                        left: 120,
                                                        top: 17,
                                                        right: 80,
                                                        bottom: 17),
                                                    decoration: AppDecoration
                                                        .txtFillDeeporange600
                                                        .copyWith(
                                                            borderRadius:
                                                                BorderRadiusStyle
                                                                    .txtRoundedBorder16),
                                                    child: Text(
                                                        "lbl_sign_up"
                                                            .tr
                                                            .toUpperCase(),
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtMontserratSemiBold14
                                                            .copyWith(
                                                                height:
                                                                    getVerticalSize(1.15))))),
                                            GestureDetector(
                                                onTap: () {
                                                  onTapTxtAlreadyhavean();
                                                },
                                                child: Padding(
                                                    padding:
                                                        getPadding(top: 19),
                                                    child: RichText(
                                                        text: TextSpan(
                                                            children: [
                                                              TextSpan(
                                                                  text:
                                                                      "msg_already_have_an2"
                                                                          .tr,
                                                                  style: TextStyle(
                                                                      color: ColorConstant
                                                                          .fromHex(
                                                                              "#e50f0400"),
                                                                      fontSize:
                                                                          getFontSize(
                                                                              14),
                                                                      fontFamily:
                                                                          'Josefin Sans',
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w400,
                                                                      height: getVerticalSize(
                                                                          1.40))),
                                                              TextSpan(
                                                                  text:
                                                                      "lbl".tr,
                                                                  style: TextStyle(
                                                                      color: ColorConstant
                                                                          .fromHex(
                                                                              "#e50f0400"),
                                                                      fontSize:
                                                                          getFontSize(
                                                                              14),
                                                                      fontFamily:
                                                                          'Josefin Sans',
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w400,
                                                                      height: getVerticalSize(
                                                                          1.40))),
                                                              TextSpan(
                                                                  text: " ",
                                                                  style: TextStyle(
                                                                      color: ColorConstant
                                                                          .fromHex(
                                                                              "#e50f0400"),
                                                                      fontSize:
                                                                          getFontSize(
                                                                              14),
                                                                      fontFamily:
                                                                          'Josefin Sans',
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w400,
                                                                      height: getVerticalSize(
                                                                          1.40))),
                                                              TextSpan(
                                                                  text:
                                                                      "lbl_sign_in"
                                                                          .tr,
                                                                  style: TextStyle(
                                                                      color: ColorConstant.fromHex(
                                                                          "#f44a15"),
                                                                      fontSize:
                                                                          getFontSize(
                                                                              14),
                                                                      fontFamily:
                                                                          'Josefin Sans',
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w400,
                                                                      height: getVerticalSize(
                                                                          1.40),
                                                                      decoration:
                                                                          TextDecoration
                                                                              .underline))
                                                            ]),
                                                        textAlign:
                                                            TextAlign.left))),
                                            Container(
                                                height: getVerticalSize(2.00),
                                                width:
                                                    getHorizontalSize(321.00),
                                                margin: getMargin(top: 26),
                                                decoration: BoxDecoration(
                                                    color: ColorConstant
                                                        .black9000c)),
                                            CustomButton(
                                                height: 56,
                                                width: 327,
                                                text: "msg_sign_in_with_google"
                                                    .tr
                                                    .toUpperCase(),
                                                margin: getMargin(top: 22),
                                                variant: ButtonVariant
                                                    .OutlineDeeporange600,
                                                padding:
                                                    ButtonPadding.PaddingT17,
                                                fontStyle: ButtonFontStyle
                                                    .MontserratSemiBold14,
                                                prefixWidget: Container(
                                                    margin: getMargin(right: 4),
                                                    child: CustomImageView(
                                                        svgPath: ImageConstant
                                                            .imgGoogle)),
                                                onTap: onTapSigninwithgoogle),
                                            CustomButton(
                                                height: 56,
                                                width: 327,
                                                text:
                                                    "msg_sign_in_with_facebook"
                                                        .tr
                                                        .toUpperCase(),
                                                margin: getMargin(top: 24),
                                                variant: ButtonVariant
                                                    .OutlineDeeporange600,
                                                padding:
                                                    ButtonPadding.PaddingT17,
                                                fontStyle: ButtonFontStyle
                                                    .MontserratSemiBold14,
                                                prefixWidget: Container(
                                                    margin: getMargin(right: 3),
                                                    child: CustomImageView(
                                                        svgPath: ImageConstant
                                                            .imgFacebook)),
                                                onTap: onTapSigninwithfacebook),
                                            Padding(
                                                padding: getPadding(
                                                    top: 44, bottom: 36),
                                                child: Text("lbl_learn_more".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtJosefinSansRomanRegular14
                                                        .copyWith(
                                                            height:
                                                                getVerticalSize(
                                                                    1.40),
                                                            decoration:
                                                                TextDecoration
                                                                    .underline)))
                                          ]))))
                        ])))));
  }

  Future<void> onTapTxtFrame627241() async {
    if (_formKey.currentState!.validate()) {
      PostRegisterReq postRegisterReq = PostRegisterReq(
        firstname: Shop.firstname,
        lastname: Shop.lastname,
        email: controller.group627241Controller.text,
        password: controller.group627241OneController.text,
        passwordConfirmation: controller.group627242Controller.text,
      );
      try {
        await controller.callCreateRegister(
          postRegisterReq.toJson(),
        );
        _onRegisterUserSuccess();
      } on PostRegisterResp {
        _onRegisterUserError();
      } on NoInternetException catch (e) {
        Get.rawSnackbar(message: e.toString());
      } catch (e) {
        //TODO: Handle generic errors
      }
    }
  }

  void _onRegisterUserSuccess() {
    Get.toNamed(AppRoutes.userVerificationScreen);
  }

  void _onRegisterUserError() {
    Get.defaultDialog(
        onConfirm: () => Get.back(),
        title: 'Sign up failed!',
        middleText: controller.postRegisterResp.message!.toString());
  }

  onTapTxtAlreadyhavean() {
    Get.offNamed(AppRoutes.signInScreen);
  }

  onTapSigninwithgoogle() async {
    await GoogleAuthHelper().googleSignInProcess().then((googleUser) {
      if (googleUser != null) {
        //TODO Actions to be performed after signin
      } else {
        Get.snackbar('Error', 'user data is empty');
      }
    }).catchError((onError) {
      Get.snackbar('Error', onError.toString());
    });
  }

  onTapSigninwithfacebook() async {
    await FacebookAuthHelper().facebookSignInProcess().then((facebookUser) {
      //TODO Actions to be performed after signin
    }).catchError((onError) {
      Get.snackbar('Error', onError.toString());
    });
  }
}
