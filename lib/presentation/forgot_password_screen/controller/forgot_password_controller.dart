import 'package:ipala/core/app_export.dart';
import 'package:ipala/presentation/forgot_password_screen/models/forgot_password_model.dart';
import 'package:flutter/material.dart';

class ForgotPasswordController extends GetxController {
  TextEditingController group627241Controller = TextEditingController();

  Rx<ForgotPasswordModel> forgotPasswordModelObj = ForgotPasswordModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    group627241Controller.dispose();
  }
}
