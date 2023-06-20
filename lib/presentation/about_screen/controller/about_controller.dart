import 'package:ipala/core/app_export.dart';
import 'package:ipala/presentation/about_screen/models/about_model.dart';
import 'package:ipala/widgets/custom_bottom_bar.dart';

class AboutController extends GetxController {
  Rx<AboutModel> aboutModelObj = AboutModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
