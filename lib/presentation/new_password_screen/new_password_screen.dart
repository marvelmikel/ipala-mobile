import 'controller/new_password_controller.dart';
import 'package:flutter/material.dart';
import 'package:ipala/core/app_export.dart';
import 'package:ipala/core/utils/validation_functions.dart';
import 'package:ipala/presentation/homepage_page/homepage_page.dart';
import 'package:ipala/widgets/app_bar/appbar_image.dart';
import 'package:ipala/widgets/app_bar/custom_app_bar.dart';
import 'package:ipala/widgets/custom_bottom_bar.dart';
import 'package:ipala/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class NewPasswordScreen extends GetWidget<NewPasswordController> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: ColorConstant.gray100,
            appBar: CustomAppBar(
                height: getVerticalSize(56.00),
                leadingWidth: 46,
                leading: AppbarImage(
                    height: getSize(24.00),
                    width: getSize(24.00),
                    svgPath: ImageConstant.imgArrowleftBlack9000224x24,
                    margin: getMargin(left: 22),
                    onTap: onTapArrowleft7),
                actions: [
                  AppbarImage(
                      height: getSize(24.00),
                      width: getSize(24.00),
                      svgPath: ImageConstant.imgNotification,
                      margin: getMargin(left: 26, right: 26))
                ]),
            body: Form(
                key: _formKey,
                child: Container(
                    margin: getMargin(left: 22, top: 16, right: 26),
                    padding: getPadding(left: 8, top: 23, right: 8, bottom: 23),
                    decoration: AppDecoration.fillRed100.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder16),
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("lbl_change_password".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle
                                  .txtJosefinSansRomanRegular16Black900e5
                                  .copyWith(height: getVerticalSize(1.40))),
                          Padding(
                              padding: getPadding(top: 18),
                              child: Text("msg_current_password".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle
                                      .txtJosefinSansRomanRegular12Black900a2
                                      .copyWith(
                                          height: getVerticalSize(1.00)))),
                          Obx(() => CustomTextFormField(
                              width: 311,
                              focusNode: FocusNode(),
                              controller: controller.passwordController,
                              hintText: "lbl7".tr,
                              margin: getMargin(top: 9),
                              padding: TextFormFieldPadding.PaddingT24,
                              textInputType: TextInputType.visiblePassword,
                              suffix: InkWell(
                                  onTap: () {
                                    controller.isShowPassword.value =
                                        !controller.isShowPassword.value;
                                  },
                                  child: Container(
                                      margin: getMargin(
                                          left: 30,
                                          top: 17,
                                          right: 14,
                                          bottom: 24),
                                      child: CustomImageView(
                                          svgPath:
                                              controller.isShowPassword.value
                                                  ? ImageConstant.imgEye
                                                  : ImageConstant.imgEye))),
                              suffixConstraints: BoxConstraints(
                                  maxHeight: getVerticalSize(65.00)),
                              validator: (value) {
                                if (value == null ||
                                    (!isValidPassword(value,
                                        isRequired: true))) {
                                  return "Please enter valid password";
                                }
                                return null;
                              },
                              isObscureText: !controller.isShowPassword.value)),
                          Padding(
                              padding: getPadding(top: 14),
                              child: Text("lbl_new_password".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle
                                      .txtJosefinSansRomanRegular12Black900a2
                                      .copyWith(
                                          height: getVerticalSize(1.00)))),
                          Obx(() => CustomTextFormField(
                              width: 311,
                              focusNode: FocusNode(),
                              controller: controller.passwordOneController,
                              hintText: "lbl7".tr,
                              margin: getMargin(top: 9),
                              padding: TextFormFieldPadding.PaddingT24,
                              textInputType: TextInputType.visiblePassword,
                              suffix: InkWell(
                                  onTap: () {
                                    controller.isShowPassword1.value =
                                        !controller.isShowPassword1.value;
                                  },
                                  child: Container(
                                      margin: getMargin(
                                          left: 30,
                                          top: 17,
                                          right: 14,
                                          bottom: 24),
                                      child: CustomImageView(
                                          svgPath:
                                              controller.isShowPassword1.value
                                                  ? ImageConstant.imgEye
                                                  : ImageConstant.imgEye))),
                              suffixConstraints: BoxConstraints(
                                  maxHeight: getVerticalSize(65.00)),
                              validator: (value) {
                                if (value == null ||
                                    (!isValidPassword(value,
                                        isRequired: true))) {
                                  return "Please enter valid password";
                                }
                                return null;
                              },
                              isObscureText:
                                  !controller.isShowPassword1.value)),
                          Padding(
                              padding: getPadding(top: 14),
                              child: Text("msg_confirm_password2".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle
                                      .txtJosefinSansRomanRegular12Black900a2
                                      .copyWith(
                                          height: getVerticalSize(1.00)))),
                          Obx(() => CustomTextFormField(
                              width: 311,
                              focusNode: FocusNode(),
                              controller: controller.passwordTwoController,
                              hintText: "lbl7".tr,
                              margin: getMargin(top: 9),
                              padding: TextFormFieldPadding.PaddingT24,
                              textInputAction: TextInputAction.done,
                              textInputType: TextInputType.visiblePassword,
                              suffix: InkWell(
                                  onTap: () {
                                    controller.isShowPassword2.value =
                                        !controller.isShowPassword2.value;
                                  },
                                  child: Container(
                                      margin: getMargin(
                                          left: 30,
                                          top: 17,
                                          right: 14,
                                          bottom: 24),
                                      child: CustomImageView(
                                          svgPath:
                                              controller.isShowPassword2.value
                                                  ? ImageConstant.imgEye
                                                  : ImageConstant.imgEye))),
                              suffixConstraints: BoxConstraints(
                                  maxHeight: getVerticalSize(65.00)),
                              validator: (value) {
                                if (value == null ||
                                    (!isValidPassword(value,
                                        isRequired: true))) {
                                  return "Please enter valid password";
                                }
                                return null;
                              },
                              isObscureText:
                                  !controller.isShowPassword2.value)),
                          Container(
                              width: getHorizontalSize(311.00),
                              margin: getMargin(top: 24, bottom: 5),
                              padding: getPadding(
                                  left: 30, top: 17, right: 119, bottom: 17),
                              decoration: AppDecoration.txtFillDeeporange600
                                  .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.txtRoundedBorder16),
                              child: Text("lbl_submit".tr.toUpperCase(),
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtMontserratSemiBold14Gray100
                                      .copyWith(height: getVerticalSize(1.15))))
                        ]))),
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

  onTapArrowleft7() {
    Get.back();
  }
}
