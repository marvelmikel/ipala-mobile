import 'package:ipala/core/app_export.dart';
import 'package:ipala/presentation/sign_in_screen/models/sign_in_model.dart';
import 'package:flutter/material.dart';

class SignInController extends GetxController {
  TextEditingController group627241Controller = TextEditingController();

  TextEditingController group627241OneController = TextEditingController();

  Rx<SignInModel> signInModelObj = SignInModel().obs;

  Rx<bool> isShowPassword = false.obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    group627241Controller.dispose();
    group627241OneController.dispose();
  }
}
