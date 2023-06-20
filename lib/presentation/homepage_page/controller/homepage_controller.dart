import 'package:ipala/core/app_export.dart';
import 'package:ipala/presentation/homepage_page/models/homepage_model.dart';
import 'package:flutter/material.dart';

class HomepageController extends GetxController {
  HomepageController(this.homepageModelObj);

  TextEditingController frame627382Controller = TextEditingController();

  Rx<HomepageModel> homepageModelObj;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    frame627382Controller.dispose();
  }
}
