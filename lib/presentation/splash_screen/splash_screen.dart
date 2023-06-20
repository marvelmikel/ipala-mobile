import 'controller/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:ipala/core/app_export.dart';

class SplashScreen extends GetWidget<SplashController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.deepOrange600,
            body: Container(
                width: size.width,
                padding: getPadding(top: 209),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgIpalalogo2removebgpreview,
                          height: getVerticalSize(231.00),
                          width: getHorizontalSize(375.00),
                          margin: getMargin(bottom: 5))
                    ]))));
  }
}
