import 'package:ipala/core/app_export.dart';
import 'package:ipala/presentation/sign_up_screen/models/sign_up_model.dart';
import 'package:flutter/material.dart';
import 'package:ipala/data/models/register/post_register_resp.dart';
import 'package:ipala/data/apiClient/api_client.dart';

class SignUpController extends GetxController {
  TextEditingController group627241Controller = TextEditingController();

  TextEditingController group627241OneController = TextEditingController();

  TextEditingController group627242Controller = TextEditingController();

  Rx<SignUpModel> signUpModelObj = SignUpModel().obs;

  Rx<bool> isShowPassword = false.obs;

  Rx<bool> isShowPassword1 = false.obs;

  PostRegisterResp postRegisterResp = PostRegisterResp();

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    group627241Controller.dispose();
    group627241OneController.dispose();
    group627242Controller.dispose();
  }

  Future<void> callCreateRegister(Map req) async {
    try {
      postRegisterResp = await Get.find<ApiClient>().createRegister(headers: {
        'Content-Type': 'application/json',
      }, requestData: req);
      _handleCreateRegisterSuccess();
    } on PostRegisterResp catch (e) {
      postRegisterResp = e;
      rethrow;
    }
  }

  void _handleCreateRegisterSuccess() {
    Get.find<PrefUtils>().setStatus(postRegisterResp.status!.toString());
    Get.find<PrefUtils>().setMessage(postRegisterResp.message!.toString());
  }
}
