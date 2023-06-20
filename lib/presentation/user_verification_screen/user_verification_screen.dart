import 'controller/user_verification_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ipala/core/app_export.dart';
import 'package:ipala/widgets/custom_button.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class UserVerificationScreen extends GetWidget<UserVerificationController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: ColorConstant.gray100,
        body: Container(
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
                      imagePath: ImageConstant.imgIpalalogo2removebgpreview,
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
                    top: 35,
                  ),
                  child: Text(
                    "msg_verify_your_email".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtJosefinSansRomanBold32.copyWith(
                      height: getVerticalSize(
                        1.30,
                      ),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  width: getHorizontalSize(
                    260.00,
                  ),
                  margin: getMargin(
                    left: 24,
                    top: 5,
                  ),
                  child: Text(
                    "msg_enter_the_six_digit".tr,
                    maxLines: null,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtJosefinSansRomanRegular16Black900e5
                        .copyWith(
                      height: getVerticalSize(
                        1.30,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 50,
                  top: 23,
                  right: 50,
                ),
                child: Obx(
                  () => PinCodeTextField(
                    appContext: context,
                    controller: controller.otpController.value,
                    length: 4,
                    obscureText: false,
                    obscuringCharacter: '*',
                    keyboardType: TextInputType.number,
                    autoDismissKeyboard: true,
                    enableActiveFill: true,
                    inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly,
                    ],
                    onChanged: (value) {},
                    pinTheme: PinTheme(
                      fieldHeight: getHorizontalSize(
                        42.00,
                      ),
                      fieldWidth: getHorizontalSize(
                        42.00,
                      ),
                      shape: PinCodeFieldShape.box,
                      selectedFillColor: ColorConstant.fromHex("#1212121D"),
                      activeFillColor: ColorConstant.fromHex("#1212121D"),
                      inactiveFillColor: ColorConstant.fromHex("#1212121D"),
                      inactiveColor: ColorConstant.black90001,
                      selectedColor: ColorConstant.black90001,
                      activeColor: ColorConstant.black90001,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 24,
                  top: 24,
                  right: 24,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "lbl_resend_otp".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtJosefinSansRomanRegular14Orange700
                          .copyWith(
                        height: getVerticalSize(
                          1.30,
                        ),
                        decoration: TextDecoration.underline,
                      ),
                    ),
                    Text(
                      "lbl_1_00".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtJosefinSansRomanRegular14Black900e5
                          .copyWith(
                        height: getVerticalSize(
                          1.30,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              CustomButton(
                height: 56,
                width: 326,
                text: "lbl_continue2".tr.toUpperCase(),
                margin: getMargin(
                  top: 26,
                ),
                padding: ButtonPadding.PaddingAll19,
                fontStyle: ButtonFontStyle.JosefinSansRomanSemiBold14,
              ),
              Spacer(),
              Padding(
                padding: getPadding(
                  bottom: 31,
                ),
                child: Text(
                  "lbl_learn_more".tr,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtJosefinSansRomanRegular14.copyWith(
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
    );
  }
}
