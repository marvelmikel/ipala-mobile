import 'package:ipala/core/app_export.dart';
import 'package:ipala/presentation/ratings_screen/models/ratings_model.dart';
import 'package:flutter/material.dart';

class RatingsController extends GetxController {
  TextEditingController group627241Controller = TextEditingController();

  Rx<RatingsModel> ratingsModelObj = RatingsModel().obs;

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
