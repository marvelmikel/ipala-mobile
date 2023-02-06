import 'package:ipala/core/app_export.dart';
import 'package:ipala/presentation/new_password_screen/models/new_password_model.dart';
import 'package:ipala/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

class NewPasswordController extends GetxController {
  TextEditingController passwordController = TextEditingController();

  TextEditingController passwordOneController = TextEditingController();

  TextEditingController passwordTwoController = TextEditingController();

  Rx<NewPasswordModel> newPasswordModelObj = NewPasswordModel().obs;

  Rx<bool> isShowPassword = false.obs;

  Rx<bool> isShowPassword1 = false.obs;

  Rx<bool> isShowPassword2 = false.obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    passwordController.dispose();
    passwordOneController.dispose();
    passwordTwoController.dispose();
  }
}
